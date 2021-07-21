
#!/usr/bin/env python2.7
rospy.init_node('ang_vel')
import rospy
from std_msgs.msg import int32
from hello_w.srv import server,serverResponse
def callback(msg):
  w=0.1/(msg.data)

def ang_vel(request):
  return serverResponse(omega)

sub=rospy.Subscriber('radius',int32,callback)

service=rospy.Service('compute_ang_vel',omega,callback)

rospy.spin()
