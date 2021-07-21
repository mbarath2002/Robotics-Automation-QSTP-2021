
#!/usr/bin/env python2.7
rospy.init_node('ang_vel')
import rospy
from std_msgs.msg import int32

def callback(msg):
  omega=0.1/(msg.data)
  
sub=rospy.Subscriber('radius',int32,callback)

service=rospy.Service('compute_ang_vel',ang,omega)
