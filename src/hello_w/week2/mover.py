#!/usr/bin/env python2.7

import rospy
from std_msgs.msg import Float32
from hello_w.srv import omega

pub=rospy.Publisher('cmd_vel',float32)

rospy.init_node('mover')

def callback(msg):
  rospy.wait_for_service('server')
  ang_vel_calculator=rospy.ServiceProxy('server',omega)
  r=msg.data
  w=ang_vel_calculator(r)
  while not rospy.is_node_shutdown:
    pub.publish(w)

sub=rospy.Subscriber('radius',int32,callback)




