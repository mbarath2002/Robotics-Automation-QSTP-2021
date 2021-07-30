#!/usr/bin/env python
import rospy
from std_msgs import float32
from state.srv import stateResponse, state
import sys

rospy.init_node('client')
rospy.wait_for_service('position')

finder=rospy.ServiceProxy('position',state)

position=finder(x)
