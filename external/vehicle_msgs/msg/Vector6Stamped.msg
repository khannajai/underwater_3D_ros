# vehicle_msgs/Vector6Stamped.msg
#
#   For instance it can be used as 6DOF force vector message:
#
#       tau = [X, Y, Z, K, M, N]  as used in modelling equations
#       X, Y, Z are forces in Newtons. K, M, N are torques in Newton metres.

Header header               # message header
float32[6] values           # vector
