; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude ObjectOperationResult.msg.html

(cl:defclass <ObjectOperationResult> (roslisp-msg-protocol:ros-message)
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

(cl:defclass ObjectOperationResult (<ObjectOperationResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectOperationResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectOperationResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<ObjectOperationResult> is deprecated: use auv_msgs-msg:ObjectOperationResult instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <ObjectOperationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:success-val is deprecated.  Use auv_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'error_num-val :lambda-list '(m))
(cl:defmethod error_num-val ((m <ObjectOperationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:error_num-val is deprecated.  Use auv_msgs-msg:error_num instead.")
  (error_num m))

(cl:ensure-generic-function 'error_string-val :lambda-list '(m))
(cl:defmethod error_string-val ((m <ObjectOperationResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:error_string-val is deprecated.  Use auv_msgs-msg:error_string instead.")
  (error_string m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<ObjectOperationResult>)))
    "Constants for message type '<ObjectOperationResult>"
  '((:ERROR_LOST_NAV . 1)
    (:ERROR_OBJECT_NOT_FOUND . 2)
    (:ERROR_DETECTION . 3)
    (:ERROR_TRACKING . 4)
    (:ERROR_UNREACHABLE . 5)
    (:ERROR_SPEC_NOT_FOUND . 6)
    (:ERROR_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'ObjectOperationResult)))
    "Constants for message type 'ObjectOperationResult"
  '((:ERROR_LOST_NAV . 1)
    (:ERROR_OBJECT_NOT_FOUND . 2)
    (:ERROR_DETECTION . 3)
    (:ERROR_TRACKING . 4)
    (:ERROR_UNREACHABLE . 5)
    (:ERROR_SPEC_NOT_FOUND . 6)
    (:ERROR_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectOperationResult>) ostream)
  "Serializes a message object of type '<ObjectOperationResult>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectOperationResult>) istream)
  "Deserializes a message object of type '<ObjectOperationResult>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectOperationResult>)))
  "Returns string type for a message object of type '<ObjectOperationResult>"
  "auv_msgs/ObjectOperationResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectOperationResult)))
  "Returns string type for a message object of type 'ObjectOperationResult"
  "auv_msgs/ObjectOperationResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectOperationResult>)))
  "Returns md5sum for a message object of type '<ObjectOperationResult>"
  "210a0e926b4a1fd82dcea2d4e9bef5d1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectOperationResult)))
  "Returns md5sum for a message object of type 'ObjectOperationResult"
  "210a0e926b4a1fd82dcea2d4e9bef5d1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectOperationResult>)))
  "Returns full string definition for message of type '<ObjectOperationResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%bool success~%~%# Error number if action failed.~%int32 error_num~%int32 ERROR_LOST_NAV=1~%int32 ERROR_OBJECT_NOT_FOUND=2~%int32 ERROR_DETECTION=3~%int32 ERROR_TRACKING=4~%int32 ERROR_UNREACHABLE=5~%int32 ERROR_SPEC_NOT_FOUND=6~%int32 ERROR_OTHER=-1~%~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectOperationResult)))
  "Returns full string definition for message of type 'ObjectOperationResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%bool success~%~%# Error number if action failed.~%int32 error_num~%int32 ERROR_LOST_NAV=1~%int32 ERROR_OBJECT_NOT_FOUND=2~%int32 ERROR_DETECTION=3~%int32 ERROR_TRACKING=4~%int32 ERROR_UNREACHABLE=5~%int32 ERROR_SPEC_NOT_FOUND=6~%int32 ERROR_OTHER=-1~%~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectOperationResult>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'error_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectOperationResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectOperationResult
    (cl:cons ':success (success msg))
    (cl:cons ':error_num (error_num msg))
    (cl:cons ':error_string (error_string msg))
))
