# vehicle_msgs/PathStatus.msg
#   reports the current status of the path

Header header                           # message header

string status                           # status (e.g. running, hovering, disabled)
uint32 path_id                          # id of the current path

float32 time_elapsed                    # time since the path was started
float32 time_arrival                    # estimate based on the average speed so far
float32 path_completion                 # fraction of the path completed

diagnostic_msgs/KeyValue[] info         # optional field carrying additional info
