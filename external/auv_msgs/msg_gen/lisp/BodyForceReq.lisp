; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude BodyForceReq.msg.html

(cl:defclass <BodyForceReq> (roslisp-msg-protocol:ros-message)
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
   (wrench
    :reader wrench
    :initarg :wrench
    :type geometry_msgs-msg:Wrench
    :initform (cl:make-instance 'geometry_msgs-msg:Wrench))
   (disable_axis
    :reader disable_axis
    :initarg :disable_axis
    :type auv_msgs-msg:Bool6Axis
    :initform (cl:make-instance 'auv_msgs-msg:Bool6Axis)))
)

(cl:defclass BodyForceReq (<BodyForceReq>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BodyForceReq>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BodyForceReq)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<BodyForceReq> is deprecated: use auv_msgs-msg:BodyForceReq instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <BodyForceReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <BodyForceReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:goal-val is deprecated.  Use auv_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'wrench-val :lambda-list '(m))
(cl:defmethod wrench-val ((m <BodyForceReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:wrench-val is deprecated.  Use auv_msgs-msg:wrench instead.")
  (wrench m))

(cl:ensure-generic-function 'disable_axis-val :lambda-list '(m))
(cl:defmethod disable_axis-val ((m <BodyForceReq>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:disable_axis-val is deprecated.  Use auv_msgs-msg:disable_axis instead.")
  (disable_axis m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BodyForceReq>) ostream)
  "Serializes a message object of type '<BodyForceReq>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'wrench) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'disable_axis) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BodyForceReq>) istream)
  "Deserializes a message object of type '<BodyForceReq>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'wrench) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'disable_axis) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BodyForceReq>)))
  "Returns string type for a message object of type '<BodyForceReq>"
  "auv_msgs/BodyForceReq")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BodyForceReq)))
  "Returns string type for a message object of type 'BodyForceReq"
  "auv_msgs/BodyForceReq")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BodyForceReq>)))
  "Returns md5sum for a message object of type '<BodyForceReq>"
  "fc3830ccd35475b5740ab2420d89c9cb")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BodyForceReq)))
  "Returns md5sum for a message object of type 'BodyForceReq"
  "fc3830ccd35475b5740ab2420d89c9cb")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BodyForceReq>)))
  "Returns full string definition for message of type '<BodyForceReq>"
  (cl:format cl:nil "# Body frame vehicle velocity request.~%# No coordinate units, values range +/- 1.~%# NB: Coordinate frame used is ROS standard [forward, left, up],~%# to simplify integration with arm control systems.~%~%# header.frame_id should be set to the base_link frame of the vehicle.~%Header header~%~%GoalDescriptor goal~%~%geometry_msgs/Wrench wrench~%~%# Axes of control to disable, in body frame.~%Bool6Axis disable_axis~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/GoalDescriptor~%# Contains values common to all waypoint request and status messages.~%# Waypoint goals with higher priority trump lower priority goals. For~%# goals of the same priority, the pilot should follow the latest~%# received.~%~%# Name of the requesting node, used with id to identify the request.~%string requester~%~%# Goal ID for the request~%uint32 id~%~%uint32 priority~%uint32 PRIORITY_LOW = 0~%uint32 PRIORITY_NORMAL = 10~%uint32 PRIORITY_AVOID_OBSTACLE = 20~%uint32 PRIORITY_EMERGENCY = 30~%uint32 PRIORITY_MANUAL_OVERRIDE  = 40~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, seperated into ~%# it's linear and angular parts.  ~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: auv_msgs/Bool6Axis~%bool x~%bool y~%bool z~%bool roll~%bool pitch~%bool yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BodyForceReq)))
  "Returns full string definition for message of type 'BodyForceReq"
  (cl:format cl:nil "# Body frame vehicle velocity request.~%# No coordinate units, values range +/- 1.~%# NB: Coordinate frame used is ROS standard [forward, left, up],~%# to simplify integration with arm control systems.~%~%# header.frame_id should be set to the base_link frame of the vehicle.~%Header header~%~%GoalDescriptor goal~%~%geometry_msgs/Wrench wrench~%~%# Axes of control to disable, in body frame.~%Bool6Axis disable_axis~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/GoalDescriptor~%# Contains values common to all waypoint request and status messages.~%# Waypoint goals with higher priority trump lower priority goals. For~%# goals of the same priority, the pilot should follow the latest~%# received.~%~%# Name of the requesting node, used with id to identify the request.~%string requester~%~%# Goal ID for the request~%uint32 id~%~%uint32 priority~%uint32 PRIORITY_LOW = 0~%uint32 PRIORITY_NORMAL = 10~%uint32 PRIORITY_AVOID_OBSTACLE = 20~%uint32 PRIORITY_EMERGENCY = 30~%uint32 PRIORITY_MANUAL_OVERRIDE  = 40~%~%================================================================================~%MSG: geometry_msgs/Wrench~%# This represents force in free space, seperated into ~%# it's linear and angular parts.  ~%Vector3  force~%Vector3  torque~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: auv_msgs/Bool6Axis~%bool x~%bool y~%bool z~%bool roll~%bool pitch~%bool yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BodyForceReq>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'wrench))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'disable_axis))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BodyForceReq>))
  "Converts a ROS message object to a list"
  (cl:list 'BodyForceReq
    (cl:cons ':header (header msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':wrench (wrench msg))
    (cl:cons ':disable_axis (disable_axis msg))
))
