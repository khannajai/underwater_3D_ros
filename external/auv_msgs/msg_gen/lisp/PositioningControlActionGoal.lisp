; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude PositioningControlActionGoal.msg.html

(cl:defclass <PositioningControlActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type auv_msgs-msg:PositioningControlGoal
    :initform (cl:make-instance 'auv_msgs-msg:PositioningControlGoal)))
)

(cl:defclass PositioningControlActionGoal (<PositioningControlActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PositioningControlActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PositioningControlActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<PositioningControlActionGoal> is deprecated: use auv_msgs-msg:PositioningControlActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PositioningControlActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <PositioningControlActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:goal_id-val is deprecated.  Use auv_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <PositioningControlActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:goal-val is deprecated.  Use auv_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PositioningControlActionGoal>) ostream)
  "Serializes a message object of type '<PositioningControlActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PositioningControlActionGoal>) istream)
  "Deserializes a message object of type '<PositioningControlActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PositioningControlActionGoal>)))
  "Returns string type for a message object of type '<PositioningControlActionGoal>"
  "auv_msgs/PositioningControlActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PositioningControlActionGoal)))
  "Returns string type for a message object of type 'PositioningControlActionGoal"
  "auv_msgs/PositioningControlActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PositioningControlActionGoal>)))
  "Returns md5sum for a message object of type '<PositioningControlActionGoal>"
  "47a4e15a00579d2c8a2294e81a1b3bfe")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PositioningControlActionGoal)))
  "Returns md5sum for a message object of type 'PositioningControlActionGoal"
  "47a4e15a00579d2c8a2294e81a1b3bfe")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PositioningControlActionGoal>)))
  "Returns full string definition for message of type '<PositioningControlActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%PositioningControlGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: auv_msgs/PositioningControlGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Position a marine vehicle at a given pose.~%~%# Variable to specify final pose.~%VehiclePose pose~%# Variable encoding trajectory~%VehiclePoseArray trajectory~%~%float64 duration~%~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%================================================================================~%MSG: auv_msgs/VehiclePoseArray~%Header header~%VehiclePose[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PositioningControlActionGoal)))
  "Returns full string definition for message of type 'PositioningControlActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%PositioningControlGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: auv_msgs/PositioningControlGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Position a marine vehicle at a given pose.~%~%# Variable to specify final pose.~%VehiclePose pose~%# Variable encoding trajectory~%VehiclePoseArray trajectory~%~%float64 duration~%~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%================================================================================~%MSG: auv_msgs/VehiclePoseArray~%Header header~%VehiclePose[] poses~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PositioningControlActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PositioningControlActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PositioningControlActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))