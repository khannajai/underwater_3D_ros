; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude McmClusterCircleDetectionsGoal.msg.html

(cl:defclass <McmClusterCircleDetectionsGoal> (roslisp-msg-protocol:ros-message)
  ((completed
    :reader completed
    :initarg :completed
    :type cl:string
    :initform ""))
)

(cl:defclass McmClusterCircleDetectionsGoal (<McmClusterCircleDetectionsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <McmClusterCircleDetectionsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'McmClusterCircleDetectionsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<McmClusterCircleDetectionsGoal> is deprecated: use auv_msgs-msg:McmClusterCircleDetectionsGoal instead.")))

(cl:ensure-generic-function 'completed-val :lambda-list '(m))
(cl:defmethod completed-val ((m <McmClusterCircleDetectionsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:completed-val is deprecated.  Use auv_msgs-msg:completed instead.")
  (completed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <McmClusterCircleDetectionsGoal>) ostream)
  "Serializes a message object of type '<McmClusterCircleDetectionsGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'completed))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'completed))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <McmClusterCircleDetectionsGoal>) istream)
  "Deserializes a message object of type '<McmClusterCircleDetectionsGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'completed) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'completed) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<McmClusterCircleDetectionsGoal>)))
  "Returns string type for a message object of type '<McmClusterCircleDetectionsGoal>"
  "auv_msgs/McmClusterCircleDetectionsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'McmClusterCircleDetectionsGoal)))
  "Returns string type for a message object of type 'McmClusterCircleDetectionsGoal"
  "auv_msgs/McmClusterCircleDetectionsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<McmClusterCircleDetectionsGoal>)))
  "Returns md5sum for a message object of type '<McmClusterCircleDetectionsGoal>"
  "d814897d463b570ac917dfe8ce33a788")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'McmClusterCircleDetectionsGoal)))
  "Returns md5sum for a message object of type 'McmClusterCircleDetectionsGoal"
  "d814897d463b570ac917dfe8ce33a788")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<McmClusterCircleDetectionsGoal>)))
  "Returns full string definition for message of type '<McmClusterCircleDetectionsGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string completed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'McmClusterCircleDetectionsGoal)))
  "Returns full string definition for message of type 'McmClusterCircleDetectionsGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string completed~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <McmClusterCircleDetectionsGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'completed))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <McmClusterCircleDetectionsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'McmClusterCircleDetectionsGoal
    (cl:cons ':completed (completed msg))
))
