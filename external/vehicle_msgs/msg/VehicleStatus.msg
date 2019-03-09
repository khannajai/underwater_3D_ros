# vehicle_msgs/VehicleStatus.msg
#   basic message for broadcasting the status of the vehicle (including diagnostic decision and current estimations)

Header header                           # message header
diagnostic_msgs/KeyValue[] info         # key-value pairs
