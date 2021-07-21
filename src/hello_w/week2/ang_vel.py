
#!/usr/bin/env python2.7
rospy.init_node('ang_vel')
import rospy
from std_msgs.msg import int32
from hello_w.srv import server,serverResponse
def ang_vel(request):
  return omegaResponse(0.1/(request.r))

service=rospy.Service('compute_ang_vel',omega,ang_vel)

rospy.spin()
