#!/usr/bin/env python
from __future__ import print_function

import roslib
roslib.load_manifest('cartesian_transform')
import sys
import rospy
import cv2
import numpy as np
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError
from config import get_absolute_path
import subprocess
import argparse

class cartesian_transform:
  def __init__(self, sub):
    self.image_pub = rospy.Publisher("cartesian_image", Image)

    self.bridge = CvBridge()
    self.image_sub = rospy.Subscriber(sub, Image, self.callback)

  def callback(self,data):
    try:
      cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
    except CvBridgeError as e:
      print(e)

# transform image to cartesian space using imagemagick cli
    cv2.imwrite('data/polar.jpg', cv_image)
    subprocess.call("convert data/polar.jpg  -virtual-pixel White -distort Arc 80 data/cartesian.jpg", shell=True)
    cartesian_image = cv2.imread("data/cartesian.jpg")

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

# class nav_drawer:
#   def __init__(self, sub):
#     self.image_pub = rospy.Publisher("/nav/nav_sts", Image)

#     self.bridge = CvBridge()
#     self.image_sub = rospy.Subscriber(sub, Image, self.callback)

#   def callback(self,data):
#     try:
#       cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
#     except CvBridgeError as e:
#       print(e)

#     try:
#       self.image_pub.publish(self.bridge.cv2_to_imgmsg(marked_image, "bgr8"))
#     except CvBridgeError as e:
#       print(e)

def main(args):
  parser = argparse.ArgumentParser()
  parser.add_argument("publisher", help="Publisher of video stream. \
                      Example: /bvt_P900/RT/image", type=str)
  args = parser.parse_args()
  ic = cartesian_transform(args.publisher)
  rospy.init_node('cartesian_transform', anonymous=True)
  try:
    rospy.spin()
  except KeyboardInterrupt:
    print("Shutting down")
  cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)