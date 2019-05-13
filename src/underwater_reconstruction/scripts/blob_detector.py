#!/usr/bin/env python
from __future__ import print_function


import std_msgs.msg
import argparse
import os
import subprocess
import sys
import numpy as np
import roslib
import rospy
from cv_bridge import CvBridge, CvBridgeError
from sensor_msgs.msg import Image
from std_msgs.msg import String
import cv2
from config import get_absolute_path
from std_msgs.msg import Float64MultiArray
import rostopic
import message_filters
import math

from sensor_msgs.msg import PointCloud
from geometry_msgs.msg import Point32


class blob_detector:
  def __init__(self, sub = "/bvt_P900/RT/image"):
    self.sub = sub
    self.image_sub = rospy.Subscriber(sub, Image, self.image_callback)
    self.bridge = CvBridge()
    self.previous_features = None
    self.current_features = None
    
    data_type = rostopic.get_topic_type('/nav/nav_sts', blocking=False)[0]
    data_class = roslib.message.get_message_class(data_type)
    self.nav_sub = rospy.Subscriber('/nav/nav_sts', data_class, self.nav_callback)
    self.nav_y = None
    self.nav_x = None
    self.nav_yaw = None

    data_type = rostopic.get_topic_type('/bvt_P900/RT/parameter', blocking=False)[0]
    data_class = roslib.message.get_message_class(data_type)
    self.nav_sub = rospy.Subscriber('/bvt_P900/RT/parameter', data_class, self.parameter_callback)
    self.max_fov = None
    self.height = None
    self.width = None
    self.origin_row = None
    self.origin_col = None
    self.max_range = None

    self.pcl_pub = rospy.Publisher("/my_pcl_topic", PointCloud)


    self.image_pub = rospy.Publisher(str(sub) + "_marked", Image)


  def nav_callback(self, data):
    self.nav_y = data.position.north
    self.nav_x = data.position.east
    self.nav_yaw = data.orientation_rate.yaw

  def parameter_callback(self, data):
    self.max_fov = data.maxFOV
    self.height = data.imgHeight
    self.width = data.imgWidth
    self.origin_row = data.originRow
    self.origin_col = data.originCol
    self.max_range = data.maxRange

    # print(self.origin_row)
    # print(self.origin_col)

  def cartesian_transform(self, polar_point):
      cartesian_point = []
      r = polar_point[0]
      theta_r = math.radians(polar_point[1])
      cartesian_point.append(r * math.cos(theta_r))
      cartesian_point.append(r * math.sin(theta_r))
      return cartesian_point

  def image_callback(self, data):
    try:
        image = self.bridge.imgmsg_to_cv2(data, "bgr8")
    except CvBridgeError as e:
        print(e)

    # print("hello")

    # print(nav_data)

# # mark features in cartesian image
#     orb = cv2.ORB_create()
#     kp = orb.detect(cartesian_image, None)
#     kp, des = orb.compute(cartesian_image, kp)
#     print(type(kp[0]))
#     marked_image = cv2.drawKeypoints(cartesian_image,kp,None,color=(0,255,0), flags=0)

    # Setup SimpleBlobDetector parameters.
    params = cv2.SimpleBlobDetector_Params()
    
    # Change thresholds
    # params.minThreshold = 10;
    # params.maxThreshold = 200;
    
    # Filter by Area.
    params.filterByArea = True
    params.minArea = 1
    
    # Filter by Circularity
    # params.filterByCircularity = True
    # params.minCircularity = 0.1
    
    # Filter by Convexity
    # params.filterByConvexity = True
    # params.minConvexity = 0.87
    
    # Filter by Inertia
    # params.filterByInertia = True
    # params.minInertiaRatio = 0.3
    
    # Create a detector with the parameters
    ver = (cv2.__version__).split('.')
    if int(ver[0]) < 3 :
        detector = cv2.SimpleBlobDetector(params)
    else : 
        detector = cv2.SimpleBlobDetector_create(params)
    image = cv2.threshold(image, 150, 255, cv2.THRESH_BINARY)[1]

    keypoints = detector.detect(image)
    pts = [[float(p.pt[0]), float(p.pt[1])] for p in keypoints]
    # print(pts)

    # transform feature points from image frame to cartesian camera frame
    if (self.max_fov):
        origin_row = self.origin_row
        origin_col = self.origin_col
        # print(pts)
        polar_points = []
        for point in pts:
            r = (self.height - point[1]) * self.max_range/self.height # in metres
            theta = (point[0] - self.origin_col) * self.max_fov/(self.origin_col) # in degrees
            polar_point = self.cartesian_transform([r, theta])
            polar_points.append(polar_point)
    
    my_awesome_pointcloud = PointCloud()

    # transform points to global frame, first rotate, then translate
    final_points = []
    yaw = self.nav_yaw
    translation_vector = np.array([self.nav_x, self.nav_y])
    for point in polar_points:
        rotation_matrix = np.array([[math.cos(yaw), -math.sin(yaw)],[math.sin(yaw), math.cos(yaw)]])
        point_vector = np.array([point[0], point[1]])
        rotated_point = np.matmul(rotation_matrix, point_vector)
        translated_point = np.add(rotated_point, translation_vector)
        translated_point = np.append(translated_point, [0.0])
        translated = translated_point.tolist()
        my_awesome_pointcloud.points.append(Point32(*translated))
        final_points.append(translated)

    #header
    header = std_msgs.msg.Header()
    header.stamp = rospy.Time.now()
    header.frame_id = 'base_link'
    
    my_awesome_pointcloud.header = header
    #create pcl from points
    #scaled_polygon_pcl = pcl2.create_cloud_xyz32(header, final_points)
    #publish4
    self.pcl_pub.publish(my_awesome_pointcloud)
    rospy.loginfo("happily publishing sample pointcloud.. !")
    #self.pcl_pub.publish(scaled_polygon_pcl)


    # print(pts)
    marked_image = cv2.drawKeypoints(image,keypoints,None,color=(0,255,0), flags=0)

    # hello_float = Float64MultiArray()
    # hello_float.data = pts
    # self.features_pub.publish(hello_float)

# show image
    cv2.imshow("Image window", marked_image)
    cv2.waitKey(3)

    try:
        self.image_pub.publish(self.bridge.cv2_to_imgmsg(marked_image, "bgr8"))
    except CvBridgeError as e:
        print(e)

def main(args):

    # parser = argparse.ArgumentParser()
    # parser.add_argument("publisher", help="Publisher of video stream. \
    #                     Example: /bvt_P900/RT/image", type=str)
    # args = parser.parse_args()
    ic = blob_detector()
    rospy.init_node('blob_detector', anonymous=True)
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)