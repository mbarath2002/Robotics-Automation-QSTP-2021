#!/usr/bin/env python2.7
import rospy
from std_msgs.msg import String
rospy.init_node('hello_world')

def callback(msg):
  print(msg.data)
  
if __name__=='__main__':
  sub1=rospy.Subscriber('hello',String,callback)
  sub2=rospy.Subscriber('world',String,callback)
  rospy.spin()
  
