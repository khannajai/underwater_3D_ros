# vehicle_msgs/FloatArrayStamped.msg
#
#   generic float32 variable length array message plus header to keep track of time, seq and synchronization
#

Header header               # message header
float32[] values            # vector
