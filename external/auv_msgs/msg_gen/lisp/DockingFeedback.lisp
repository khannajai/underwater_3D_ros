; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude DockingFeedback.msg.html

(cl:defclass <DockingFeedback> (roslisp-msg-protocol:ros-message)
  ((current_distance
    :reader current_distance
    :initarg :current_distance
    :type cl:integer
    :initform 0))
)

(cl:defclass DockingFeedback (<DockingFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DockingFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DockingFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<DockingFeedback> is deprecated: use auv_msgs-msg:DockingFeedback instead.")))

(cl:ensure-generic-function 'current_distance-val :lambda-list '(m))
(cl:defmethod current_distance-val ((m <DockingFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:current_distance-val is deprecated.  Use auv_msgs-msg:current_distance instead.")
  (current_distance m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DockingFeedback>) ostream)
  "Serializes a message object of type '<DockingFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_distance)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_distance)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DockingFeedback>) istream)
  "Deserializes a message object of type '<DockingFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'current_distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'current_distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'current_distance)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'current_distance)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DockingFeedback>)))
  "Returns string type for a message object of type '<DockingFeedback>"
  "auv_msgs/DockingFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DockingFeedback)))
  "Returns string type for a message object of type 'DockingFeedback"
  "auv_msgs/DockingFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DockingFeedback>)))
  "Returns md5sum for a message object of type '<DockingFeedback>"
  "993a35386ba1bd3ae555cfb8c0edab00")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DockingFeedback)))
  "Returns md5sum for a message object of type 'DockingFeedback"
  "993a35386ba1bd3ae555cfb8c0edab00")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DockingFeedback>)))
  "Returns full string definition for message of type '<DockingFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%uint32 current_distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DockingFeedback)))
  "Returns full string definition for message of type 'DockingFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%uint32 current_distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DockingFeedback>))
  (cl:+ 0
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DockingFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'DockingFeedback
    (cl:cons ':current_distance (current_distance msg))
))