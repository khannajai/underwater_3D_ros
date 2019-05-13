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

#roslib.load_manifest('cartesian_transform')

class cartesian_transform:
  def __init__(self, sub, fov):
    self.image_pub = rospy.Publisher(str(sub) + "_cartesian", Image)
    self.fov = fov
    self.bridge = CvBridge()
    self.image_sub = rospy.Subscriber(sub, Image, self.callback)

  def callback(self, data):
    try:
        cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
    except CvBridgeError as e:
        print(e)

# transform image to cartesian space using imagemagick cli
    cv2.imwrite('data/polar.jpg', cv_image)
    subprocess.call("convert data/polar.jpg  -virtual-pixel White -distort Arc " + str(self.fov * 2) + " data/cartesian.jpg", shell=True)
    cartesian_image = cv2.imread("data/cartesian.jpg")

# #mark features in cartesian image
#     orb = cv2.ORB_create()
#     kp = orb.detect(cartesian_image, None)
#     kp, des = orb.compute(cartesian_image, kp)
#     marked_image = cv2.drawKeypoints(cartesian_image,kp,None,color=(0,255,0), flags=0)

# show image
    cv2.imshow("Image window", cartesian_image)
    cv2.waitKey(3)

    try:
        self.image_pub.publish(self.bridge.cv2_to_imgmsg(cartesian_image, "bgr8"))
    except CvBridgeError as e:
        print(e)

def main(args):

    parser = argparse.ArgumentParser()
    parser.add_argument("publisher", help="Publisher of video stream. \
                        Example: /bvt_P900/RT/image", type=str)
    parser.add_argument("fov", help="FOV of polar image. \
                        Example: 40", type=int)
    args = parser.parse_args()
    ic = cartesian_transform(args.publisher, args.fov)
    rospy.init_node('cartesian_transform', anonymous=True)
    try:
        rospy.spin()
    except KeyboardInterrupt:
        print("Shutting down")
    cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)
