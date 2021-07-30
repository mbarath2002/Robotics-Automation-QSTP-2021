#!/usr/bin/env python
import rospy
from std_msgs import float32
from state.srv import stateRequest, state
import sys

x=0
y=0
theta=0
v=1
w=1

rospy.init_node('client')
rospy.wait_for_service('position')

finder=rospy.ServiceProxy('position',state)
position=finder(x,y,theta,v,w)

request=StateRequest(x,y,theta,v,w)
x2,y2,theta2=position(request)
