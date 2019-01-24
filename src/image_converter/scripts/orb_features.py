#!/usr/bin/env python
from __future__ import print_function

import roslib
roslib.load_manifest('image_converter')
import sys
import rospy
import cv2
import numpy as np
from std_msgs.msg import String
from sensor_msgs.msg import Image
from cv_bridge import CvBridge, CvBridgeError

class image_converter:

  def __init__(self):
    self.image_pub = rospy.Publisher("image_topic_2",Image)

    self.bridge = CvBridge()
    self.image_sub = rospy.Subscriber("/bvt_P900/RT/image",Image,self.callback)

  def callback(self,data):
    try:
      cv_image = self.bridge.imgmsg_to_cv2(data, "bgr8")
    except CvBridgeError as e:
      print(e)

# transform image to cartesian space
    (rows,cols,_) = cv_image.shape
    Mvalue = np.sqrt(((rows/2.0)**2.0)+((cols/2.0)**2.0))
    print(Mvalue)
    cartesian_image = cv2.linearPolar(cv_image, (rows/2, 0), 100, cv2.WARP_INVERSE_MAP)

# mark features in cartesian image
    # orb = cv2.ORB_create()
    # kp = orb.detect(cartesian_image, None)
    # kp, des = orb.compute(cartesian_image, kp)
    # img2 = cv2.drawKeypoints(cartesian_image,kp,None,color=(0,255,0), flags=0)

# show image
    # cv2.imshow("Image window", img2)
    cv2.imshow("Image window", cartesian_image)
    cv2.waitKey(3)

    try:
      self.image_pub.publish(self.bridge.cv2_to_imgmsg(cv_image, "bgr8"))
    except CvBridgeError as e:
      print(e)

def main(args):
  ic = image_converter()
  rospy.init_node('image_converter', anonymous=True)
  try:
    rospy.spin()
  except KeyboardInterrupt:
    print("Shutting down")
  cv2.destroyAllWindows()

if __name__ == '__main__':
    main(sys.argv)