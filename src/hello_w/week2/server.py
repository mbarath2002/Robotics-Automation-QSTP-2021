#!/usr/bin/env python
import rospy
from std_msgs import float32
from state.srv import stateResponse, state

def state_calc(request):
  return

rospy.init_node('server')
service=rospy.Service('position',state,state_calc)
rospy.spin()
