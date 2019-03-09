# vehicle_msgs/PilotRequest.msg
#   this message represent the generic pilot request with different modes consumed by the vehicle pilot

# list of priorities
int8 MIN=-128
int8 LOW=-64
int8 NORMAL=0
int8 HIGH=64
int8 MAX=127

Header header                      # keep track of time
int8 priority                      # specify the weight of the request

float32[6] position                # requested position
float32[6] velocity                # requested velocity

# optional parameters
#   these values are used in special cases and for specific function only
#   please be considerate in using this features and if unsure avoid them
#
#   using uint16 because uint8 is used as string type in rqt tools
#
uint16[6] limit_velocity           # if non-zero will enable speed limit on each DOF using velocity parameter (only position requests)
uint16[6] disable_axis             # if non-zero will disable on each DOF (used for all requests)
