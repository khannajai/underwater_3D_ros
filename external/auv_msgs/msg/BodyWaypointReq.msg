# Body frame (relative) waypoint request to pilot.
# A new waypoint request should contain a different goal.id
# (incremented) from previous requests. This same message should then
# be re-sent at 5-10 Hz. The pilot should attempt to position hold at
# the world pose at the time the new goal.{requestor, id} is received.

Header header

# Common waypoint details
GoalDescriptor goal

# If true, maintain Z position relative to altitude, otherwise depth.
bool altitude_mode

# Body pose change relative to vehicle world pose at the time the waypoint
# is first received (with a unique requesting_node and goal_id).
geometry_msgs/Vector3 position
RPY orientation

# Axes of control to disable, in body frame.
Bool6Axis disable_axis

# Tolerances are in body frame, zero indicates pilot default should be used.
geometry_msgs/Vector3 position_tolerance
RPY orientation_tolerance
