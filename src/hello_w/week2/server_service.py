#!/usr/bin/env python2.7
rospy.init_node('server_node')
import rospy
import math
from hello_w.srv import state

def callback(service):
  
  
rospy.Server('server',state,callback)

if __name__=="__main__":
  
