#!/usr/bin/env python
import rospy
from nav_msgs.msg import Path
from geometry_msgs.msg import Point, Pose, PoseStamped, Quaternion,Twist
from std_msgs.msg import Header,float32
from tf.transformations import euler_from_quaternion as eu
import sys 

def throttle(vel):
  pub.publish(vel)

def controller():
  kp=20
  ki=10
  kd=4
  e_prev_x=e-robot.x
  e_prev_y=e-robot.y
  while True:
    e_x=g[0]-robot.x
    e_y=g[1]-robot.y
    e_sum=
class robot(self):
def callback1(msg):
  goal=msg.poses(end).pose.position.y
  start=0
  sub=rospy.Subscriber('odom',Odometry)
#def callback2(msg):
 
#def callback3(msg):
def odom(msg):
  
  
rospy.init_node('controller')
rate=rospy.Rate(5)
pub=rospy.Publisher('cmd_vel',Twist)  
sub1=rospy.Subscriber('path1',Path,callback1)
#sub2=rospy.Subscriber('path2',Path,callback2)
#sub3=rospy.Subscriber('path3',Path,callback3)
  
