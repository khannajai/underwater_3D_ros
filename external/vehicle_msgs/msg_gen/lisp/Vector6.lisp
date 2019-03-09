; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude Vector6.msg.html

(cl:defclass <Vector6> (roslisp-msg-protocol:ros-message)
  ((values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Vector6 (<Vector6>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vector6>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vector6)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<Vector6> is deprecated: use vehicle_msgs-msg:Vector6 instead.")))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <Vector6>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:values-val is deprecated.  Use vehicle_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vector6>) ostream)
  "Serializes a message object of type '<Vector6>"
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vector6>) istream)
  "Deserializes a message object of type '<Vector6>"
  (cl:setf (cl:slot-value msg 'values) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'values)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vector6>)))
  "Returns string type for a message object of type '<Vector6>"
  "vehicle_msgs/Vector6")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vector6)))
  "Returns string type for a message object of type 'Vector6"
  "vehicle_msgs/Vector6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vector6>)))
  "Returns md5sum for a message object of type '<Vector6>"
  "49fffaeb8b23e9b33d73b2dc1dc4f709")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vector6)))
  "Returns md5sum for a message object of type 'Vector6"
  "49fffaeb8b23e9b33d73b2dc1dc4f709")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vector6>)))
  "Returns full string definition for message of type '<Vector6>"
  (cl:format cl:nil "# vehicle_msgs/Vector6.msg~%#~%#   For instance it can be used as 6DOF force vector message:~%#~%#       tau = [X, Y, Z, K, M, N]  as used in modelling equations~%#       X, Y, Z are forces in Newtons. K, M, N are torques in Newton metres.~%~%float32[6] values       # vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vector6)))
  "Returns full string definition for message of type 'Vector6"
  (cl:format cl:nil "# vehicle_msgs/Vector6.msg~%#~%#   For instance it can be used as 6DOF force vector message:~%#~%#       tau = [X, Y, Z, K, M, N]  as used in modelling equations~%#       X, Y, Z are forces in Newtons. K, M, N are torques in Newton metres.~%~%float32[6] values       # vector~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vector6>))
  (cl:+ 0
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vector6>))
  "Converts a ROS message object to a list"
  (cl:list 'Vector6
    (cl:cons ':values (values msg))
))
