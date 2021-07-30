#!/usr/bin/env python2.7
import rospy
from geometry_msgs.msg import Twist
from nav_msgs.msg import Odometry
from tf.transformations import euler_from_quaternion as th

rospy.init_node('infinity')

pub=rospy.Publisher('cmd_vel',Twist,queue_size=1)
count=0
x=0.0
y=0.0
theta=0.0

x1=0.0
y1=0.0


def odom_sub(msg):
  global x
  x=msg.pose.pose.position.x
  global y
  y=msg.pose.pose.position.y
  global theta
    
  ang=msg.pose.pose.orientation
  (rl,pt,theta)=th([ang.x,ang.y,ang.z,ang.w])

def odom_sub2(msg):
  global x1
  global y1
  x1=msg.pose.pose.position.x
  y1=msg.pose.pose.position.y

move=Twist()
move.linear.x=1
move.angular.z=1

rate=rospy.Rate(2)
sub=rospy.Subscriber('odom',Odometry,odom_sub2)

while not rospy.is_shutdown():
  pub.publish(move)
  sub=rospy.Subscriber('odom',Odometry,odom_sub)
  rate.sleep()
