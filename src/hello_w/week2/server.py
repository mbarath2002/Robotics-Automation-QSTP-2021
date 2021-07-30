#!/usr/bin/env python
import rospy
from std_msgs import float32
from state.srv import stateResponse, state
import numpy

def state_calc(request):
  dt=0.5
  n=50
  theta1=request.theta
  v1=request.v
  w1=request.w
  x_points=(request.x)
  y_points=(request.y)
  for i in range(1,n+1):
    t=i*dt#dx=vcos(wt+self.theta)dt
    x=(v1/w1)*(np.sin(w1*t+theta1))-(v1/w1)*(np.sin(theta1))
    y=(v1/w1)*(np.cos(theta1))-(v1/w1)*(np.cos(w1*t1+theta1))
    x_points.append(x)
    y_points.append(y)
  theta1=theta1+w1*dt*n
  return x_points,y_points
   
rospy.init_node('server')
service=rospy.Service('position',state,state_calc)
rospy.spin()
