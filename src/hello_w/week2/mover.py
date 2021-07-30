#!/usr/bin/env python2.7

import rospy
from std_msgs.msg import Float32
from hello_w.srv import omega
from geometry_msgs.msg import Twist

rospy.init_node('mover')
pub=rospy.Publisher('cmd_vel',Twist,queue_size=1)
rate=rospy.Rate(2)

def callback(msg):
  rospy.wait_for_service('compute_ang_vel')
  ang_vel_calculator=rospy.ServiceProxy('compute_ang_vel',omega)
  r=msg.data
  w=ang_vel_calculator(r)
  v=0.1
  move=Twist()
  move.linear.x=v
  move.angular.z=w
  while(1):
    print("check")
    pub.publish(move)
    rate.sleep()

sub=rospy.Subscriber('radius',Float32,callback)




