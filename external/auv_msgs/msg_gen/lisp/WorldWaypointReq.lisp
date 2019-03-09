; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude WorldWaypointReq.msg.html

(cl:defclass <WorldWaypointReq> (roslisp-msg-protocol:ros-message)
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
   (position
    :reader position
    :initarg :position
    :type auv_msgs-msg:NED
    :initform (cl:make-instance 'auv_msgs-msg:NED))
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (orientation
    :reader orientation
    :initarg :orientation
    :type auv_msgs-msg:RPY
    :initform (cl:make-instance 'auv_msgs-msg:RPY))
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
    :initform (cl:make-instance 'auv_msgs-msg:RPY))
   (max_speed_percent
    :reader max_speed_percent
    :initarg :max_speed_percent
    :type cl:fixnum
    :initform 0))
)

(cl:defclass WorldWaypointReq (<WorldWaypointReq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WorldWaypointReq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WorldWaypointReq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<WorldWaypointReq> is deprecated: use auv_msgs-msg:WorldWaypointReq instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WorldWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <WorldWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:goal-val is deprecated.  Use auv_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'altitude_mode-val :lambda-list '(m))
(cl:defmethod altitude_mode-val ((m <WorldWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:altitude_mode-val is deprecated.  Use auv_msgs-msg:altitude_mode instead.")
  (altitude_mode m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <WorldWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:position-val is deprecated.  Use auv_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <WorldWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:altitude-val is deprecated.  Use auv_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <WorldWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:orientation-val is deprecated.  Use auv_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'disable_axis-val :lambda-list '(m))
(cl:defmethod disable_axis-val ((m <WorldWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:disable_axis-val is deprecated.  Use auv_msgs-msg:disable_axis instead.")
  (disable_axis m))

(cl:ensure-generic-function 'position_tolerance-val :lambda-list '(m))
(cl:defmethod position_tolerance-val ((m <WorldWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:position_tolerance-val is deprecated.  Use auv_msgs-msg:position_tolerance instead.")
  (position_tolerance m))

(cl:ensure-generic-function 'orientation_tolerance-val :lambda-list '(m))
(cl:defmethod orientation_tolerance-val ((m <WorldWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:orientation_tolerance-val is deprecated.  Use auv_msgs-msg:orientation_tolerance instead.")
  (orientation_tolerance m))

(cl:ensure-generic-function 'max_speed_percent-val :lambda-list '(m))
(cl:defmethod max_speed_percent-val ((m <WorldWaypointReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:max_speed_percent-val is deprecated.  Use auv_msgs-msg:max_speed_percent instead.")
  (max_speed_percent m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WorldWaypointReq>) ostream)
  "Serializes a message object of type '<WorldWaypointReq>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'altitude_mode) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'disable_axis) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_tolerance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_tolerance) ostream)
  (cl:let* ((signed (cl:slot-value msg 'max_speed_percent)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WorldWaypointReq>) istream)
  "Deserializes a message object of type '<WorldWaypointReq>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:setf (cl:slot-value msg 'altitude_mode) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'disable_axis) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_tolerance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_tolerance) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_speed_percent) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WorldWaypointReq>)))
  "Returns string type for a message object of type '<WorldWaypointReq>"
  "auv_msgs/WorldWaypointReq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WorldWaypointReq)))
  "Returns string type for a message object of type 'WorldWaypointReq"
  "auv_msgs/WorldWaypointReq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WorldWaypointReq>)))
  "Returns md5sum for a message object of type '<WorldWaypointReq>"
  "d9c3dd9da5e8464e90786e504d890720")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WorldWaypointReq)))
  "Returns md5sum for a message object of type 'WorldWaypointReq"
  "d9c3dd9da5e8464e90786e504d890720")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WorldWaypointReq>)))
  "Returns full string definition for message of type '<WorldWaypointReq>"
  (cl:format cl:nil "# World frame (absolute) waypoint request to pilot.~%# A new waypoint request should contain a different goal.id~%# (incremented) from previous requests. This same message should then~%# be re-sent at 5-10 Hz.~%~%Header header~%~%# Common waypoint details~%GoalDescriptor goal~%~%# If true, maintain Z position relative to altitude, otherwise depth.~%bool altitude_mode~%~%auv_msgs/NED position~%float32 altitude~%RPY orientation~%~%# Axes of control to disable, in body frame.~%Bool6Axis disable_axis~%~%# Tolerances are in body frame, zero indicates pilot default should be used.~%geometry_msgs/Vector3 position_tolerance~%RPY orientation_tolerance~%~%# Capping speed at a percentage of maximum speed in x-y plane allowed ~%int8 max_speed_percent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/GoalDescriptor~%# Contains values common to all waypoint request and status messages.~%# Waypoint goals with higher priority trump lower priority goals. For~%# goals of the same priority, the pilot should follow the latest~%# received.~%~%# Name of the requesting node, used with id to identify the request.~%string requester~%~%# Goal ID for the request~%uint32 id~%~%uint32 priority~%uint32 PRIORITY_LOW = 0~%uint32 PRIORITY_NORMAL = 10~%uint32 PRIORITY_AVOID_OBSTACLE = 20~%uint32 PRIORITY_EMERGENCY = 30~%uint32 PRIORITY_MANUAL_OVERRIDE  = 40~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%================================================================================~%MSG: auv_msgs/Bool6Axis~%bool x~%bool y~%bool z~%bool roll~%bool pitch~%bool yaw~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WorldWaypointReq)))
  "Returns full string definition for message of type 'WorldWaypointReq"
  (cl:format cl:nil "# World frame (absolute) waypoint request to pilot.~%# A new waypoint request should contain a different goal.id~%# (incremented) from previous requests. This same message should then~%# be re-sent at 5-10 Hz.~%~%Header header~%~%# Common waypoint details~%GoalDescriptor goal~%~%# If true, maintain Z position relative to altitude, otherwise depth.~%bool altitude_mode~%~%auv_msgs/NED position~%float32 altitude~%RPY orientation~%~%# Axes of control to disable, in body frame.~%Bool6Axis disable_axis~%~%# Tolerances are in body frame, zero indicates pilot default should be used.~%geometry_msgs/Vector3 position_tolerance~%RPY orientation_tolerance~%~%# Capping speed at a percentage of maximum speed in x-y plane allowed ~%int8 max_speed_percent~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/GoalDescriptor~%# Contains values common to all waypoint request and status messages.~%# Waypoint goals with higher priority trump lower priority goals. For~%# goals of the same priority, the pilot should follow the latest~%# received.~%~%# Name of the requesting node, used with id to identify the request.~%string requester~%~%# Goal ID for the request~%uint32 id~%~%uint32 priority~%uint32 PRIORITY_LOW = 0~%uint32 PRIORITY_NORMAL = 10~%uint32 PRIORITY_AVOID_OBSTACLE = 20~%uint32 PRIORITY_EMERGENCY = 30~%uint32 PRIORITY_MANUAL_OVERRIDE  = 40~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%================================================================================~%MSG: auv_msgs/Bool6Axis~%bool x~%bool y~%bool z~%bool roll~%bool pitch~%bool yaw~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WorldWaypointReq>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'disable_axis))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_tolerance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_tolerance))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WorldWaypointReq>))
  "Converts a ROS message object to a list"
  (cl:list 'WorldWaypointReq
    (cl:cons ':header (header msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':altitude_mode (altitude_mode msg))
    (cl:cons ':position (position msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':disable_axis (disable_axis msg))
    (cl:cons ':position_tolerance (position_tolerance msg))
    (cl:cons ':orientation_tolerance (orientation_tolerance msg))
    (cl:cons ':max_speed_percent (max_speed_percent msg))
))
