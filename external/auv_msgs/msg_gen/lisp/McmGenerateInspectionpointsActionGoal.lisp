; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude McmGenerateInspectionpointsActionGoal.msg.html

(cl:defclass <McmGenerateInspectionpointsActionGoal> (roslisp-msg-protocol:ros-message)
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
    :type auv_msgs-msg:McmGenerateInspectionpointsGoal
    :initform (cl:make-instance 'auv_msgs-msg:McmGenerateInspectionpointsGoal)))
)

(cl:defclass McmGenerateInspectionpointsActionGoal (<McmGenerateInspectionpointsActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <McmGenerateInspectionpointsActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'McmGenerateInspectionpointsActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<McmGenerateInspectionpointsActionGoal> is deprecated: use auv_msgs-msg:McmGenerateInspectionpointsActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <McmGenerateInspectionpointsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <McmGenerateInspectionpointsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:goal_id-val is deprecated.  Use auv_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <McmGenerateInspectionpointsActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:goal-val is deprecated.  Use auv_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <McmGenerateInspectionpointsActionGoal>) ostream)
  "Serializes a message object of type '<McmGenerateInspectionpointsActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <McmGenerateInspectionpointsActionGoal>) istream)
  "Deserializes a message object of type '<McmGenerateInspectionpointsActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<McmGenerateInspectionpointsActionGoal>)))
  "Returns string type for a message object of type '<McmGenerateInspectionpointsActionGoal>"
  "auv_msgs/McmGenerateInspectionpointsActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'McmGenerateInspectionpointsActionGoal)))
  "Returns string type for a message object of type 'McmGenerateInspectionpointsActionGoal"
  "auv_msgs/McmGenerateInspectionpointsActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<McmGenerateInspectionpointsActionGoal>)))
  "Returns md5sum for a message object of type '<McmGenerateInspectionpointsActionGoal>"
  "65959bf0f1b1838d3afb0bd8524dd61a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'McmGenerateInspectionpointsActionGoal)))
  "Returns md5sum for a message object of type 'McmGenerateInspectionpointsActionGoal"
  "65959bf0f1b1838d3afb0bd8524dd61a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<McmGenerateInspectionpointsActionGoal>)))
  "Returns full string definition for message of type '<McmGenerateInspectionpointsActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%McmGenerateInspectionpointsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: auv_msgs/McmGenerateInspectionpointsGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#the pddl name to store the result in, WP maps to WP1, WP2 .. WPn~%string ip_variable_prefix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'McmGenerateInspectionpointsActionGoal)))
  "Returns full string definition for message of type 'McmGenerateInspectionpointsActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%McmGenerateInspectionpointsGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: auv_msgs/McmGenerateInspectionpointsGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#the pddl name to store the result in, WP maps to WP1, WP2 .. WPn~%string ip_variable_prefix~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <McmGenerateInspectionpointsActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <McmGenerateInspectionpointsActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'McmGenerateInspectionpointsActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
