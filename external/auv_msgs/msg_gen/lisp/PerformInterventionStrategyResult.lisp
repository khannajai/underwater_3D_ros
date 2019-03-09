; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude PerformInterventionStrategyResult.msg.html

(cl:defclass <PerformInterventionStrategyResult> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_num
    :reader error_num
    :initarg :error_num
    :type cl:integer
    :initform 0)
   (error_string
    :reader error_string
    :initarg :error_string
    :type cl:string
    :initform ""))
)

(cl:defclass PerformInterventionStrategyResult (<PerformInterventionStrategyResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PerformInterventionStrategyResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PerformInterventionStrategyResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<PerformInterventionStrategyResult> is deprecated: use auv_msgs-msg:PerformInterventionStrategyResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PerformInterventionStrategyResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:success-val is deprecated.  Use auv_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'error_num-val :lambda-list '(m))
(cl:defmethod error_num-val ((m <PerformInterventionStrategyResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:error_num-val is deprecated.  Use auv_msgs-msg:error_num instead.")
  (error_num m))

(cl:ensure-generic-function 'error_string-val :lambda-list '(m))
(cl:defmethod error_string-val ((m <PerformInterventionStrategyResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:error_string-val is deprecated.  Use auv_msgs-msg:error_string instead.")
  (error_string m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PerformInterventionStrategyResult>)))
    "Constants for message type '<PerformInterventionStrategyResult>"
  '((:ERROR_DETECTION . 1)
    (:ERROR_TRACKING . 2)
    (:ERROR_UNREACHABLE . 3)
    (:ERROR_SPEC_NOT_FOUND . 4)
    (:ERROR_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PerformInterventionStrategyResult)))
    "Constants for message type 'PerformInterventionStrategyResult"
  '((:ERROR_DETECTION . 1)
    (:ERROR_TRACKING . 2)
    (:ERROR_UNREACHABLE . 3)
    (:ERROR_SPEC_NOT_FOUND . 4)
    (:ERROR_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PerformInterventionStrategyResult>) ostream)
  "Serializes a message object of type '<PerformInterventionStrategyResult>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PerformInterventionStrategyResult>) istream)
  "Deserializes a message object of type '<PerformInterventionStrategyResult>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PerformInterventionStrategyResult>)))
  "Returns string type for a message object of type '<PerformInterventionStrategyResult>"
  "auv_msgs/PerformInterventionStrategyResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PerformInterventionStrategyResult)))
  "Returns string type for a message object of type 'PerformInterventionStrategyResult"
  "auv_msgs/PerformInterventionStrategyResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PerformInterventionStrategyResult>)))
  "Returns md5sum for a message object of type '<PerformInterventionStrategyResult>"
  "18febaf3a35d43da1c40538f9c308531")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PerformInterventionStrategyResult)))
  "Returns md5sum for a message object of type 'PerformInterventionStrategyResult"
  "18febaf3a35d43da1c40538f9c308531")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PerformInterventionStrategyResult>)))
  "Returns full string definition for message of type '<PerformInterventionStrategyResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%bool success~%~%# Error number if action failed.~%int32 error_num~%int32 ERROR_DETECTION=1~%int32 ERROR_TRACKING=2~%int32 ERROR_UNREACHABLE=3~%int32 ERROR_SPEC_NOT_FOUND=4~%int32 ERROR_OTHER=-1~%~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PerformInterventionStrategyResult)))
  "Returns full string definition for message of type 'PerformInterventionStrategyResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%bool success~%~%# Error number if action failed.~%int32 error_num~%int32 ERROR_DETECTION=1~%int32 ERROR_TRACKING=2~%int32 ERROR_UNREACHABLE=3~%int32 ERROR_SPEC_NOT_FOUND=4~%int32 ERROR_OTHER=-1~%~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PerformInterventionStrategyResult>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'error_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PerformInterventionStrategyResult>))
  "Converts a ROS message object to a list"
  (cl:list 'PerformInterventionStrategyResult
    (cl:cons ':success (success msg))
    (cl:cons ':error_num (error_num msg))
    (cl:cons ':error_string (error_string msg))
))
