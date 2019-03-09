# Global frame (absolute) waypoint request to pilot.
# A new waypoint request should contain a different goal.id
# (incremented) from previous requests. This same message should then
# be re-sent at 5-10 Hz. Conversion to world frame can be done once at
# the time the new goal.{requestor, id} is received.

Header header

# Common waypoint details
GoalDescriptor goal

# If true, maintain Z position relative to altitude, otherwise depth.
bool altitude_mode

DecimalLatLon position
float32 depth
float32 altitude
RPY orientation

# Axes of control to disable, in body frame.
Bool6Axis disable_axis

# Tolerances are in body frame, zero indicates pilot default should be used.
geometry_msgs/Vector3 position_tolerance
RPY orientation_tolerance
