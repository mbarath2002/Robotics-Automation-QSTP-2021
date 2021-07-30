#!/usr/bin/env python2.7

import rospy
from std_msgs.msg import Float32
from hello_w.srv import omega
from geometry_msgs.msg import Twist
r=1
v=0.1
rospy.init_node('mover')
pub=rospy.Publisher('cmd_vel',Twist,queue_size=1)
rate=rospy.Rate(2)

def callback(msg):
  global r
  r=msg.data
  
sub=rospy.Subscriber('radius',Float32,callback)
rospy.wait_for_service('compute_ang_vel')
ang_vel_calculator=rospy.ServiceProxy('compute_ang_vel',omega)
w=ang_vel_calculator(r)

move=Twist()
move.linear.x=v
move.angular.z=w
while not rospy.is_shutdown():
  pub.publish(move)
  rate.sleep()



