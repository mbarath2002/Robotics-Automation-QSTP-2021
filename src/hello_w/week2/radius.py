#!/usr/bin/env python2.7
import rospy
from std_msgs.msg import int32
rospy.init_node('publisher')
rate=rospy.Rate(2)
pub=rospy.Publisher('radius',int32)

r=input()

while not rospy.is_shutdown():
  pub.publish(r)
  rate.sleep()

