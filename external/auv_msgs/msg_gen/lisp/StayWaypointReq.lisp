; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude StayWaypointReq.msg.html

(cl:defclass <StayWaypointReq> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal
    :reader goal
    :initarg :goal
    :type auv_msgs-msg:GoalDescriptor
    :initform (cl:make-instance 'auv_msgs-msg:GoalDescriptor))
   (altitude_mode
    :reader altitude_mode
    :initarg :altitude_mode
    :type cl:boolean
    :initform cl:nil)
   (disable_axis
    :reader disable_axis
    :initarg :disable_axis
    :type auv_msgs-msg:Bool6Axis
    :initform (cl:make-instance 'auv_msgs-msg:Bool6Axis))
   (position_tolerance
    :reader position_tolerance
    :initarg :position_tolerance
    :type geometry_msgs-msg:Vector3
    :initform (cl:make-instance 'geometry_msgs-msg:Vector3))
   (orientation_tolerance
    :reader orientation_tolerance
    :initarg :orientation_tolerance
    :type auv_msgs-msg:RPY
    :initform (cl:make-instance 'auv_msgs-msg:RPY)))
)

(cl:defclass StayWaypointReq (<StayWaypointReq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <StayWaypointReq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'StayWaypointReq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<StayWaypointReq> is deprecated: use auv_msgs-msg:StayWaypointReq instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <StayWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <StayWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:goal-val is deprecated.  Use auv_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'altitude_mode-val :lambda-list '(m))
(cl:defmethod altitude_mode-val ((m <StayWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:altitude_mode-val is deprecated.  Use auv_msgs-msg:altitude_mode instead.")
  (altitude_mode m))

(cl:ensure-generic-function 'disable_axis-val :lambda-list '(m))
(cl:defmethod disable_axis-val ((m <StayWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:disable_axis-val is deprecated.  Use auv_msgs-msg:disable_axis instead.")
  (disable_axis m))

(cl:ensure-generic-function 'position_tolerance-val :lambda-list '(m))
(cl:defmethod position_tolerance-val ((m <StayWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:position_tolerance-val is deprecated.  Use auv_msgs-msg:position_tolerance instead.")
  (position_tolerance m))

(cl:ensure-generic-function 'orientation_tolerance-val :lambda-list '(m))
(cl:defmethod orientation_tolerance-val ((m <StayWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:orientation_tolerance-val is deprecated.  Use auv_msgs-msg:orientation_tolerance instead.")
  (orientation_tolerance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <StayWaypointReq>) ostream)
  "Serializes a message object of type '<StayWaypointReq>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'altitude_mode) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'disable_axis) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_tolerance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_tolerance) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <StayWaypointReq>) istream)
  "Deserializes a message object of type '<StayWaypointReq>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:setf (cl:slot-value msg 'altitude_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'disable_axis) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_tolerance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_tolerance) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<StayWaypointReq>)))
  "Returns string type for a message object of type '<StayWaypointReq>"
  "auv_msgs/StayWaypointReq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'StayWaypointReq)))
  "Returns string type for a message object of type 'StayWaypointReq"
  "auv_msgs/StayWaypointReq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<StayWaypointReq>)))
  "Returns md5sum for a message object of type '<StayWaypointReq>"
  "669505d5bfd6c5bc3c0e36dd25725479")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'StayWaypointReq)))
  "Returns md5sum for a message object of type 'StayWaypointReq"
  "669505d5bfd6c5bc3c0e36dd25725479")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<StayWaypointReq>)))
  "Returns full string definition for message of type '<StayWaypointReq>"
  (cl:format cl:nil "# Position holding request to pilot.~%# A new waypoint request should contain a different goal.id~%# (incremented) from previous requests. This same message should then~%# be re-sent at 5-10 Hz. The pilot should attempt to position hold at~%# the world pose at the time the new goal.{requestor, id} is received.~%~%Header header~%~%# Common waypoint details~%GoalDescriptor goal~%~%# If true, maintain Z position relative to altitude, otherwise depth.~%bool altitude_mode~%~%# Axes of control to disable, in body frame.~%Bool6Axis disable_axis~%~%# Tolerances are in body frame, zero indicates pilot default should be used.~%geometry_msgs/Vector3 position_tolerance~%RPY orientation_tolerance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/GoalDescriptor~%# Contains values common to all waypoint request and status messages.~%# Waypoint goals with higher priority trump lower priority goals. For~%# goals of the same priority, the pilot should follow the latest~%# received.~%~%# Name of the requesting node, used with id to identify the request.~%string requester~%~%# Goal ID for the request~%uint32 id~%~%uint32 priority~%uint32 PRIORITY_LOW = 0~%uint32 PRIORITY_NORMAL = 10~%uint32 PRIORITY_AVOID_OBSTACLE = 20~%uint32 PRIORITY_EMERGENCY = 30~%uint32 PRIORITY_MANUAL_OVERRIDE  = 40~%~%================================================================================~%MSG: auv_msgs/Bool6Axis~%bool x~%bool y~%bool z~%bool roll~%bool pitch~%bool yaw~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'StayWaypointReq)))
  "Returns full string definition for message of type 'StayWaypointReq"
  (cl:format cl:nil "# Position holding request to pilot.~%# A new waypoint request should contain a different goal.id~%# (incremented) from previous requests. This same message should then~%# be re-sent at 5-10 Hz. The pilot should attempt to position hold at~%# the world pose at the time the new goal.{requestor, id} is received.~%~%Header header~%~%# Common waypoint details~%GoalDescriptor goal~%~%# If true, maintain Z position relative to altitude, otherwise depth.~%bool altitude_mode~%~%# Axes of control to disable, in body frame.~%Bool6Axis disable_axis~%~%# Tolerances are in body frame, zero indicates pilot default should be used.~%geometry_msgs/Vector3 position_tolerance~%RPY orientation_tolerance~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/GoalDescriptor~%# Contains values common to all waypoint request and status messages.~%# Waypoint goals with higher priority trump lower priority goals. For~%# goals of the same priority, the pilot should follow the latest~%# received.~%~%# Name of the requesting node, used with id to identify the request.~%string requester~%~%# Goal ID for the request~%uint32 id~%~%uint32 priority~%uint32 PRIORITY_LOW = 0~%uint32 PRIORITY_NORMAL = 10~%uint32 PRIORITY_AVOID_OBSTACLE = 20~%uint32 PRIORITY_EMERGENCY = 30~%uint32 PRIORITY_MANUAL_OVERRIDE  = 40~%~%================================================================================~%MSG: auv_msgs/Bool6Axis~%bool x~%bool y~%bool z~%bool roll~%bool pitch~%bool yaw~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <StayWaypointReq>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'disable_axis))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_tolerance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_tolerance))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <StayWaypointReq>))
  "Converts a ROS message object to a list"
  (cl:list 'StayWaypointReq
    (cl:cons ':header (header msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':altitude_mode (altitude_mode msg))
    (cl:cons ':disable_axis (disable_axis msg))
    (cl:cons ':position_tolerance (position_tolerance msg))
    (cl:cons ':orientation_tolerance (orientation_tolerance msg))
))
