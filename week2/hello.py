#!/usr/bin/env python2.7
import rospy
from std_msgs.msg import String
rospy.init_node('sender')
pub=rospy.Publisher('hello',String)
rate=rospy.Rate(2)

c="Hello"

while not rospy.is_shutdown()
  pub.publish(c)
  rate.sleep()
  
