; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude InterventionTaskSpec.msg.html

(cl:defclass <InterventionTaskSpec> (roslisp-msg-protocol:ros-message)
  ((task_type
    :reader task_type
    :initarg :task_type
    :type cl:integer
    :initform 0)
   (strategy_spec
    :reader strategy_spec
    :initarg :strategy_spec
    :type (cl:vector auv_msgs-msg:InterventionStrategySpec)
   :initform (cl:make-array 0 :element-type 'auv_msgs-msg:InterventionStrategySpec :initial-element (cl:make-instance 'auv_msgs-msg:InterventionStrategySpec))))
)

(cl:defclass InterventionTaskSpec (<InterventionTaskSpec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterventionTaskSpec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterventionTaskSpec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<InterventionTaskSpec> is deprecated: use auv_msgs-msg:InterventionTaskSpec instead.")))

(cl:ensure-generic-function 'task_type-val :lambda-list '(m))
(cl:defmethod task_type-val ((m <InterventionTaskSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:task_type-val is deprecated.  Use auv_msgs-msg:task_type instead.")
  (task_type m))

(cl:ensure-generic-function 'strategy_spec-val :lambda-list '(m))
(cl:defmethod strategy_spec-val ((m <InterventionTaskSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:strategy_spec-val is deprecated.  Use auv_msgs-msg:strategy_spec instead.")
  (strategy_spec m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<InterventionTaskSpec>)))
    "Constants for message type '<InterventionTaskSpec>"
  '((:TASK_RECOVERY . 1)
    (:TASK_HOOK_CABLE . 2)
    (:TASK_PUSH_BUTTON . 3)
    (:TASK_OPEN_VALVE . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'InterventionTaskSpec)))
    "Constants for message type 'InterventionTaskSpec"
  '((:TASK_RECOVERY . 1)
    (:TASK_HOOK_CABLE . 2)
    (:TASK_PUSH_BUTTON . 3)
    (:TASK_OPEN_VALVE . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterventionTaskSpec>) ostream)
  "Serializes a message object of type '<InterventionTaskSpec>"
  (cl:let* ((signed (cl:slot-value msg 'task_type)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'strategy_spec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'strategy_spec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterventionTaskSpec>) istream)
  "Deserializes a message object of type '<InterventionTaskSpec>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'task_type) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'strategy_spec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'strategy_spec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auv_msgs-msg:InterventionStrategySpec))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterventionTaskSpec>)))
  "Returns string type for a message object of type '<InterventionTaskSpec>"
  "auv_msgs/InterventionTaskSpec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterventionTaskSpec)))
  "Returns string type for a message object of type 'InterventionTaskSpec"
  "auv_msgs/InterventionTaskSpec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterventionTaskSpec>)))
  "Returns md5sum for a message object of type '<InterventionTaskSpec>"
  "2b8fadd4bfa9a8a880fc736d196c3441")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterventionTaskSpec)))
  "Returns md5sum for a message object of type 'InterventionTaskSpec"
  "2b8fadd4bfa9a8a880fc736d196c3441")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterventionTaskSpec>)))
  "Returns full string definition for message of type '<InterventionTaskSpec>"
  (cl:format cl:nil "# Specification of the intervention task, given as a task type to perform~%# on an object identified with a bounding box on an image.~%~%# Type of intervention task to perform.~%int32 task_type~%int32 TASK_RECOVERY=1~%int32 TASK_HOOK_CABLE=2~%int32 TASK_PUSH_BUTTON=3~%int32 TASK_OPEN_VALVE=4~%~%# Array of strategy specifications, in descending order of preference.~%InterventionStrategySpec[] strategy_spec~%~%================================================================================~%MSG: auv_msgs/InterventionStrategySpec~%# Specification of the intervention strategy.~%~%# Grasp frame given wrt bounding box origin~%geometry_msgs/Transform grasp_frame~%~%# Hand preshape~%int32 preshape~%int32 PRESHAPE_CYLINDRICAL_PRECISION=1~%int32 PRESHAPE_CYLINDRICAL_POWER=2~%int32 PRESHAPE_ONE_FINGER=3~%int32 PRESHAPE_HOOK=4~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterventionTaskSpec)))
  "Returns full string definition for message of type 'InterventionTaskSpec"
  (cl:format cl:nil "# Specification of the intervention task, given as a task type to perform~%# on an object identified with a bounding box on an image.~%~%# Type of intervention task to perform.~%int32 task_type~%int32 TASK_RECOVERY=1~%int32 TASK_HOOK_CABLE=2~%int32 TASK_PUSH_BUTTON=3~%int32 TASK_OPEN_VALVE=4~%~%# Array of strategy specifications, in descending order of preference.~%InterventionStrategySpec[] strategy_spec~%~%================================================================================~%MSG: auv_msgs/InterventionStrategySpec~%# Specification of the intervention strategy.~%~%# Grasp frame given wrt bounding box origin~%geometry_msgs/Transform grasp_frame~%~%# Hand preshape~%int32 preshape~%int32 PRESHAPE_CYLINDRICAL_PRECISION=1~%int32 PRESHAPE_CYLINDRICAL_POWER=2~%int32 PRESHAPE_ONE_FINGER=3~%int32 PRESHAPE_HOOK=4~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterventionTaskSpec>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'strategy_spec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterventionTaskSpec>))
  "Converts a ROS message object to a list"
  (cl:list 'InterventionTaskSpec
    (cl:cons ':task_type (task_type msg))
    (cl:cons ':strategy_spec (strategy_spec msg))
))
