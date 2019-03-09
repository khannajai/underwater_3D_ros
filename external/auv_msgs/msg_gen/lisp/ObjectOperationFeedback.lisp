; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude ObjectOperationFeedback.msg.html

(cl:defclass <ObjectOperationFeedback> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (state
    :reader state
    :initarg :state
    :type cl:string
    :initform "")
   (num_waypoints
    :reader num_waypoints
    :initarg :num_waypoints
    :type cl:integer
    :initform 0)
   (num_waypoints_completed
    :reader num_waypoints_completed
    :initarg :num_waypoints_completed
    :type cl:integer
    :initform 0)
   (intervention_percent_complete
    :reader intervention_percent_complete
    :initarg :intervention_percent_complete
    :type cl:float
    :initform 0.0)
   (intervention_est_time_left
    :reader intervention_est_time_left
    :initarg :intervention_est_time_left
    :type std_msgs-msg:Duration
    :initform (cl:make-instance 'std_msgs-msg:Duration))
   (step
    :reader step
    :initarg :step
    :type cl:integer
    :initform 0))
)

(cl:defclass ObjectOperationFeedback (<ObjectOperationFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectOperationFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectOperationFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<ObjectOperationFeedback> is deprecated: use auv_msgs-msg:ObjectOperationFeedback instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ObjectOperationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'state-val :lambda-list '(m))
(cl:defmethod state-val ((m <ObjectOperationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:state-val is deprecated.  Use auv_msgs-msg:state instead.")
  (state m))

(cl:ensure-generic-function 'num_waypoints-val :lambda-list '(m))
(cl:defmethod num_waypoints-val ((m <ObjectOperationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:num_waypoints-val is deprecated.  Use auv_msgs-msg:num_waypoints instead.")
  (num_waypoints m))

(cl:ensure-generic-function 'num_waypoints_completed-val :lambda-list '(m))
(cl:defmethod num_waypoints_completed-val ((m <ObjectOperationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:num_waypoints_completed-val is deprecated.  Use auv_msgs-msg:num_waypoints_completed instead.")
  (num_waypoints_completed m))

(cl:ensure-generic-function 'intervention_percent_complete-val :lambda-list '(m))
(cl:defmethod intervention_percent_complete-val ((m <ObjectOperationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:intervention_percent_complete-val is deprecated.  Use auv_msgs-msg:intervention_percent_complete instead.")
  (intervention_percent_complete m))

(cl:ensure-generic-function 'intervention_est_time_left-val :lambda-list '(m))
(cl:defmethod intervention_est_time_left-val ((m <ObjectOperationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:intervention_est_time_left-val is deprecated.  Use auv_msgs-msg:intervention_est_time_left instead.")
  (intervention_est_time_left m))

(cl:ensure-generic-function 'step-val :lambda-list '(m))
(cl:defmethod step-val ((m <ObjectOperationFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:step-val is deprecated.  Use auv_msgs-msg:step instead.")
  (step m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectOperationFeedback>)))
    "Constants for message type '<ObjectOperationFeedback>"
  '((:STEP_REACHING . 1)
    (:STEP_GRASPING . 2)
    (:STEP_TASK . 3)
    (:STEP_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectOperationFeedback)))
    "Constants for message type 'ObjectOperationFeedback"
  '((:STEP_REACHING . 1)
    (:STEP_GRASPING . 2)
    (:STEP_TASK . 3)
    (:STEP_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectOperationFeedback>) ostream)
  "Serializes a message object of type '<ObjectOperationFeedback>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'state))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'state))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_waypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_waypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_waypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_waypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_waypoints_completed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_waypoints_completed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_waypoints_completed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_waypoints_completed)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'intervention_percent_complete))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'intervention_est_time_left) ostream)
  (cl:let* ((signed (cl:slot-value msg 'step)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectOperationFeedback>) istream)
  "Deserializes a message object of type '<ObjectOperationFeedback>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'state) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'state) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_waypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_waypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_waypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_waypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_waypoints_completed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_waypoints_completed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_waypoints_completed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_waypoints_completed)) (cl:read-byte istream))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'intervention_percent_complete) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'intervention_est_time_left) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'step) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectOperationFeedback>)))
  "Returns string type for a message object of type '<ObjectOperationFeedback>"
  "auv_msgs/ObjectOperationFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectOperationFeedback)))
  "Returns string type for a message object of type 'ObjectOperationFeedback"
  "auv_msgs/ObjectOperationFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectOperationFeedback>)))
  "Returns md5sum for a message object of type '<ObjectOperationFeedback>"
  "2ba8daaeaac47494bd7f3b580ebdb69c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectOperationFeedback)))
  "Returns md5sum for a message object of type 'ObjectOperationFeedback"
  "2ba8daaeaac47494bd7f3b580ebdb69c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectOperationFeedback>)))
  "Returns full string definition for message of type '<ObjectOperationFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%~%# Action progress~%~%string state~%~%uint32 num_waypoints~%~%uint32 num_waypoints_completed~%~%float32 intervention_percent_complete~%~%std_msgs/Duration intervention_est_time_left~%~%int32 step~%int32 STEP_REACHING=1~%int32 STEP_GRASPING=2~%int32 STEP_TASK=3~%int32 STEP_OTHER=-1~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectOperationFeedback)))
  "Returns full string definition for message of type 'ObjectOperationFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%~%# Action progress~%~%string state~%~%uint32 num_waypoints~%~%uint32 num_waypoints_completed~%~%float32 intervention_percent_complete~%~%std_msgs/Duration intervention_est_time_left~%~%int32 step~%int32 STEP_REACHING=1~%int32 STEP_GRASPING=2~%int32 STEP_TASK=3~%int32 STEP_OTHER=-1~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: std_msgs/Duration~%duration data~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectOperationFeedback>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'state))
     4
     4
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'intervention_est_time_left))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectOperationFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectOperationFeedback
    (cl:cons ':header (header msg))
    (cl:cons ':state (state msg))
    (cl:cons ':num_waypoints (num_waypoints msg))
    (cl:cons ':num_waypoints_completed (num_waypoints_completed msg))
    (cl:cons ':intervention_percent_complete (intervention_percent_complete msg))
    (cl:cons ':intervention_est_time_left (intervention_est_time_left msg))
    (cl:cons ':step (step msg))
))
