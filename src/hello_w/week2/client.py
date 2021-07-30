#!/usr/bin/env python
import rospy
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
request=WordCountRequesr(x,y,theta,v,w)
x2,y2=finder(request)
