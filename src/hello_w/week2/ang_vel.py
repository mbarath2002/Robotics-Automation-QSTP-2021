#!/usr/bin/env python2.7
import rospy
from std_msgs.msg import Float32
from hello_w.srv import omega,omegaResponse
def ang_vel(request):
  return 0.1/(request.radius)

rospy.init_node('ang_vel')
service=rospy.Service('compute_ang_vel',omega,ang_vel)

rospy.spin()
