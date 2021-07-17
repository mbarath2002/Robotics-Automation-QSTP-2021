#!/usr/bin/env python2.7
import rospy
from std_msgs.msg import String
rospy.init_node('receiver')
pub=rospy.Publisher('world',String)
rate=rospy.Rate(2)

c="World!"

while not rospy.is_shutdown()
  pub.publish(c)
  rate.sleep()
  
