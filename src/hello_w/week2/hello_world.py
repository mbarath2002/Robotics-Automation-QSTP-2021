#!/usr/bin/env python2.7
import rospy
from std_msgs.msg import String
rospy.init_node('hello_world')

def callback1(msg):
  a1=msg.data
def callback2(msg):
  a2=msg.data
  
if __name__=='__main__':
  sub1=rospy.Subscriber('hello',String,callback1)
  sub2=rospy.Subscriber('world',String,callback2)
  a1.append(a2)
  print(a1)
  rospy.spin()
  
