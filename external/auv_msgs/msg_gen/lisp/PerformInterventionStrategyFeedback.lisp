; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude PerformInterventionStrategyFeedback.msg.html

(cl:defclass <PerformInterventionStrategyFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (percent_complete
    :reader percent_complete
    :initarg :percent_complete
    :type cl:float
    :initform 0.0)
   (est_time_left
    :reader est_time_left
    :initarg :est_time_left
    :type std_msgs-msg:Duration
    :initform (cl:make-instance 'std_msgs-msg:Duration))
   (step
    :reader step
    :initarg :step
    :type cl:integer
    :initform 0))
)

(cl:defclass PerformInterventionStrategyFeedback (<PerformInterventionStrategyFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerformInterventionStrategyFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerformInterventionStrategyFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<PerformInterventionStrategyFeedback> is deprecated: use auv_msgs-msg:PerformInterventionStrategyFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PerformInterventionStrategyFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'percent_complete-val :lambda-list '(m))
(cl:defmethod percent_complete-val ((m <PerformInterventionStrategyFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:percent_complete-val is deprecated.  Use auv_msgs-msg:percent_complete instead.")
  (percent_complete m))

(cl:ensure-generic-function 'est_time_left-val :lambda-list '(m))
(cl:defmethod est_time_left-val ((m <PerformInterventionStrategyFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:est_time_left-val is deprecated.  Use auv_msgs-msg:est_time_left instead.")
  (est_time_left m))

(cl:ensure-generic-function 'step-val :lambda-list '(m))
(cl:defmethod step-val ((m <PerformInterventionStrategyFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:step-val is deprecated.  Use auv_msgs-msg:step instead.")
  (step m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PerformInterventionStrategyFeedback>)))
    "Constants for message type '<PerformInterventionStrategyFeedback>"
  '((:STEP_REACHING . 1)
    (:STEP_GRASPING . 2)
    (:STEP_TASK . 3)
    (:STEP_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PerformInterventionStrategyFeedback)))
    "Constants for message type 'PerformInterventionStrategyFeedback"
  '((:STEP_REACHING . 1)
    (:STEP_GRASPING . 2)
    (:STEP_TASK . 3)
    (:STEP_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerformInterventionStrategyFeedback>) ostream)
  "Serializes a message object of type '<PerformInterventionStrategyFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'percent_complete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'est_time_left) ostream)
  (cl:let* ((signed (cl:slot-value msg 'step)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerformInterventionStrategyFeedback>) istream)
  "Deserializes a message object of type '<PerformInterventionStrategyFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'percent_complete) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'est_time_left) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'step) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerformInterventionStrategyFeedback>)))
  "Returns string type for a message object of type '<PerformInterventionStrategyFeedback>"
  "auv_msgs/PerformInterventionStrategyFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerformInterventionStrategyFeedback)))
  "Returns string type for a message object of type 'PerformInterventionStrategyFeedback"
  "auv_msgs/PerformInterventionStrategyFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerformInterventionStrategyFeedback>)))
  "Returns md5sum for a message object of type '<PerformInterventionStrategyFeedback>"
  "026f2169577d726196150dc697d1cb00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerformInterventionStrategyFeedback)))
  "Returns md5sum for a message object of type 'PerformInterventionStrategyFeedback"
  "026f2169577d726196150dc697d1cb00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerformInterventionStrategyFeedback>)))
  "Returns full string definition for message of type '<PerformInterventionStrategyFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%~%# Action progress~%float32 percent_complete~%~%std_msgs/Duration est_time_left~%~%int32 step~%int32 STEP_REACHING=1~%int32 STEP_GRASPING=2~%int32 STEP_TASK=3~%int32 STEP_OTHER=-1~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerformInterventionStrategyFeedback)))
  "Returns full string definition for message of type 'PerformInterventionStrategyFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%~%# Action progress~%float32 percent_complete~%~%std_msgs/Duration est_time_left~%~%int32 step~%int32 STEP_REACHING=1~%int32 STEP_GRASPING=2~%int32 STEP_TASK=3~%int32 STEP_OTHER=-1~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerformInterventionStrategyFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'est_time_left))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerformInterventionStrategyFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'PerformInterventionStrategyFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':percent_complete (percent_complete msg))
    (cl:cons ':est_time_left (est_time_left msg))
    (cl:cons ':step (step msg))
))
