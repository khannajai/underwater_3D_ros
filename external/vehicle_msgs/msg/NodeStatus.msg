# vehicle_msgs/NodeStatus.msg
#   general message for communicate state info of a generic node (like failures or new configurations)

# tentative list of generic states
#   can be seen as a primitive priority system (for diagnostic and failures notifications)
int32 DEBUG=-1
int32 INFO=0
int32 WARN=1
int32 ERROR=2
int32 FATAL=4

Header header                               # message header

int32 status                                # generic status as number
string node                                 # name of the publisher node
string message                              # optional broadcast message

diagnostic_msgs/KeyValue[] info             # optional data dictionary (here are the info about the notification)
