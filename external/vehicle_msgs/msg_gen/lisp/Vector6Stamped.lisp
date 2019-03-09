; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude Vector6Stamped.msg.html

(cl:defclass <Vector6Stamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (values
    :reader values
    :initarg :values
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass Vector6Stamped (<Vector6Stamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Vector6Stamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Vector6Stamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<Vector6Stamped> is deprecated: use vehicle_msgs-msg:Vector6Stamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Vector6Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'values-val :lambda-list '(m))
(cl:defmethod values-val ((m <Vector6Stamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:values-val is deprecated.  Use vehicle_msgs-msg:values instead.")
  (values m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Vector6Stamped>) ostream)
  "Serializes a message object of type '<Vector6Stamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'values))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Vector6Stamped>) istream)
  "Deserializes a message object of type '<Vector6Stamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Vector6Stamped>)))
  "Returns string type for a message object of type '<Vector6Stamped>"
  "vehicle_msgs/Vector6Stamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Vector6Stamped)))
  "Returns string type for a message object of type 'Vector6Stamped"
  "vehicle_msgs/Vector6Stamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Vector6Stamped>)))
  "Returns md5sum for a message object of type '<Vector6Stamped>"
  "4338193dea52ae8d66c08120a60b25c8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Vector6Stamped)))
  "Returns md5sum for a message object of type 'Vector6Stamped"
  "4338193dea52ae8d66c08120a60b25c8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Vector6Stamped>)))
  "Returns full string definition for message of type '<Vector6Stamped>"
  (cl:format cl:nil "# vehicle_msgs/Vector6Stamped.msg~%#~%#   For instance it can be used as 6DOF force vector message:~%#~%#       tau = [X, Y, Z, K, M, N]  as used in modelling equations~%#       X, Y, Z are forces in Newtons. K, M, N are torques in Newton metres.~%~%Header header               # message header~%float32[6] values           # vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Vector6Stamped)))
  "Returns full string definition for message of type 'Vector6Stamped"
  (cl:format cl:nil "# vehicle_msgs/Vector6Stamped.msg~%#~%#   For instance it can be used as 6DOF force vector message:~%#~%#       tau = [X, Y, Z, K, M, N]  as used in modelling equations~%#       X, Y, Z are forces in Newtons. K, M, N are torques in Newton metres.~%~%Header header               # message header~%float32[6] values           # vector~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Vector6Stamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'values) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Vector6Stamped>))
  "Converts a ROS message object to a list"
  (cl:list 'Vector6Stamped
    (cl:cons ':header (header msg))
    (cl:cons ':values (values msg))
))
