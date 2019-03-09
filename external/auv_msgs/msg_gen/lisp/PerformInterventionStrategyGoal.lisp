; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude PerformInterventionStrategyGoal.msg.html

(cl:defclass <PerformInterventionStrategyGoal> (roslisp-msg-protocol:ros-message)
  ((intervention_spec_id
    :reader intervention_spec_id
    :initarg :intervention_spec_id
    :type cl:string
    :initform "")
   (task_index
    :reader task_index
    :initarg :task_index
    :type cl:integer
    :initform 0)
   (strategy_index
    :reader strategy_index
    :initarg :strategy_index
    :type cl:integer
    :initform 0))
)

(cl:defclass PerformInterventionStrategyGoal (<PerformInterventionStrategyGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerformInterventionStrategyGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerformInterventionStrategyGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<PerformInterventionStrategyGoal> is deprecated: use auv_msgs-msg:PerformInterventionStrategyGoal instead.")))

(cl:ensure-generic-function 'intervention_spec_id-val :lambda-list '(m))
(cl:defmethod intervention_spec_id-val ((m <PerformInterventionStrategyGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:intervention_spec_id-val is deprecated.  Use auv_msgs-msg:intervention_spec_id instead.")
  (intervention_spec_id m))

(cl:ensure-generic-function 'task_index-val :lambda-list '(m))
(cl:defmethod task_index-val ((m <PerformInterventionStrategyGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:task_index-val is deprecated.  Use auv_msgs-msg:task_index instead.")
  (task_index m))

(cl:ensure-generic-function 'strategy_index-val :lambda-list '(m))
(cl:defmethod strategy_index-val ((m <PerformInterventionStrategyGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:strategy_index-val is deprecated.  Use auv_msgs-msg:strategy_index instead.")
  (strategy_index m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerformInterventionStrategyGoal>) ostream)
  "Serializes a message object of type '<PerformInterventionStrategyGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'intervention_spec_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'intervention_spec_id))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'strategy_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'strategy_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'strategy_index)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'strategy_index)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerformInterventionStrategyGoal>) istream)
  "Deserializes a message object of type '<PerformInterventionStrategyGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'intervention_spec_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'intervention_spec_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'task_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'task_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'task_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'task_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'strategy_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'strategy_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'strategy_index)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'strategy_index)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerformInterventionStrategyGoal>)))
  "Returns string type for a message object of type '<PerformInterventionStrategyGoal>"
  "auv_msgs/PerformInterventionStrategyGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerformInterventionStrategyGoal)))
  "Returns string type for a message object of type 'PerformInterventionStrategyGoal"
  "auv_msgs/PerformInterventionStrategyGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerformInterventionStrategyGoal>)))
  "Returns md5sum for a message object of type '<PerformInterventionStrategyGoal>"
  "49b002bde3ed238f2471ade43ca02aa0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerformInterventionStrategyGoal)))
  "Returns md5sum for a message object of type 'PerformInterventionStrategyGoal"
  "49b002bde3ed238f2471ade43ca02aa0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerformInterventionStrategyGoal>)))
  "Returns full string definition for message of type '<PerformInterventionStrategyGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# This action requests that a specific intervention strategy be attempted,~%# specified by unique reference to an InterventionSpec, and task and~%# strategy indices within that spec.~%~%string intervention_spec_id~%uint32 task_index~%uint32 strategy_index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerformInterventionStrategyGoal)))
  "Returns full string definition for message of type 'PerformInterventionStrategyGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# This action requests that a specific intervention strategy be attempted,~%# specified by unique reference to an InterventionSpec, and task and~%# strategy indices within that spec.~%~%string intervention_spec_id~%uint32 task_index~%uint32 strategy_index~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerformInterventionStrategyGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'intervention_spec_id))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerformInterventionStrategyGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'PerformInterventionStrategyGoal
    (cl:cons ':intervention_spec_id (intervention_spec_id msg))
    (cl:cons ':task_index (task_index msg))
    (cl:cons ':strategy_index (strategy_index msg))
))
