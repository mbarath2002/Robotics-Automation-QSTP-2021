#!/usr/bin/env python2.7

import rospy
from std_msgs.msg import Float32
from hello_w.srv import omega

pub=rospy.Publisher('cmd_vel',Float32)
rate=rospy.Rate(2)
rospy.init_node('mover')

def callback(msg):
  rospy.wait_for_service('compute_ang_vel')
  ang_vel_calculator=rospy.ServiceProxy('compute_ang_vel',omega)
  r=msg.data
  w=ang_vel_calculator(r)
  while not rospy.is_node_shutdown:
    pub.publish(w)
    rate.sleep()

sub=rospy.Subscriber('radius',Float32,callback)




