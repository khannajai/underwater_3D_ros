# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Position a marine vehicle at a given pose.

# Variable to specify final pose.
VehiclePose pose
float64 minimum_duration

# Boolean variable to support the above vehicle pose. True indicates
# that altitude mode control should preferably be used when sending
# that pose as a waypoint to the pilot, with the altitude specified in the
# request parameters.
bool altitude_mode   

