#!/usr/bin/env python
import rospy
from nav_msgs.msg import Path
from geometry_msgs.msg import Point, Pose, PoseStamped, Quaternion
from std_msgs.msg import Header,float32
from tf.transformations import euler_from_quaternion as eu
import sys 


def callback1(msg):
  goal=msg.poses(end).pose.position.y
  start=0
  sub=rospy.Subscriber('odom',Odometry)
#def callback2(msg):
 
#def callback3(msg):
def odom(msg):
  
  
rospy.init_node('controller')
rate=rospy.Rate(5)
  
sub1=rospy.Subscriber('path1',Path,callback1)
#sub2=rospy.Subscriber('path2',Path,callback2)
#sub3=rospy.Subscriber('path3',Path,callback3)
  
