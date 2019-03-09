#its important the header is stamped with the correct time, for a KF update
std_msgs/Header header

#msg that suits a kalman filter update of a constant velocity model
#the first three of the state quantities are position (specific values can be set 'nan' indicating unobserved, e.g. depth on GPS)
NED position
#the second three of the state quantities are velocity(specific values can be set 'nan' indicating unobserved, e.g. all GPS values)
NED velocity 

#variance along priciple dimentaions (we do not bother with full covaraiance)
NED position_var
NED velocity_var

