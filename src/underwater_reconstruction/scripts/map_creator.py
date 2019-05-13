#!/usr/bin/env python
from __future__ import print_function

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

class map_creator:
  def __init__(self, sub):
    self.image_pub = rospy.Publisher(str(sub) + "_marked", Image)
    # self.markers_pub = rospy.Publisher(str(sub) + "_features", Image)
    self.bridge = CvBridge()
    self.image_sub = rospy.Subscriber(sub + "_cartesian", Image, self.callback)

  def callback(self, data):
    try:
        cartesian_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
    except CvBridgeError as e:
        print(e)

#mark features in cartesian image
    orb = cv2.ORB_create()
    kp = orb.detect(cartesian_image, None)
    kp, des = orb.compute(cartesian_image, kp)
    marked_image = cv2.drawKeypoints(cartesian_image,kp,None,color=(0,255,0), flags=0)

# show image
    cv2.imshow("Image window", marked_image)
    cv2.waitKey(3)

    try:
        self.image_pub.publish(self.bridge.cv2_to_imgmsg(marked_image, "bgr8"))
    except CvBridgeError as e:
        print(e)

def main(args):

    parser = argparse.ArgumentParser()
    parser.add_argument("publisher", help="Publisher of video stream. \
                        Example: /bvt_P900/RT/image", type=str)
    args = parser.parse_args()
    ic = cartesian_transform(args.publisher)
    rospy.init_node('blob_detector', anonymous=True)
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)