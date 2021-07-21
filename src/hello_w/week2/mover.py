#!/usr/bin/env python2.7

import rospy
import sys
from std_msgs.msg import float32
from hello_w.srv import omega

pub=rospy.Publisher('cmd_vel',float32)

rospy.init_node('mover')

def callback(msg):
  rospy.wait_for_service('server')
  ang_vel_calculator=rospy.ServiceProxy('server',omega)
  r=msg.data
  w=ang_vel_calculator(r)

sub=rospy.Subscriber('radius',int32,callback)
while not rospy.is_node_shutdown:
  pub.publish(w)



