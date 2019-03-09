; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude ThrusterCommand.msg.html

(cl:defclass <ThrusterCommand> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (throttle
    :reader throttle
    :initarg :throttle
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ThrusterCommand (<ThrusterCommand>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ThrusterCommand>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ThrusterCommand)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<ThrusterCommand> is deprecated: use vehicle_msgs-msg:ThrusterCommand instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ThrusterCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'throttle-val :lambda-list '(m))
(cl:defmethod throttle-val ((m <ThrusterCommand>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:throttle-val is deprecated.  Use vehicle_msgs-msg:throttle instead.")
  (throttle m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ThrusterCommand>) ostream)
  "Serializes a message object of type '<ThrusterCommand>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'throttle))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ThrusterCommand>) istream)
  "Deserializes a message object of type '<ThrusterCommand>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:setf (cl:slot-value msg 'throttle) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'throttle)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ThrusterCommand>)))
  "Returns string type for a message object of type '<ThrusterCommand>"
  "vehicle_msgs/ThrusterCommand")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ThrusterCommand)))
  "Returns string type for a message object of type 'ThrusterCommand"
  "vehicle_msgs/ThrusterCommand")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ThrusterCommand>)))
  "Returns md5sum for a message object of type '<ThrusterCommand>"
  "64cfaf25518edc711f9e398f2530a33f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ThrusterCommand)))
  "Returns md5sum for a message object of type 'ThrusterCommand"
  "64cfaf25518edc711f9e398f2530a33f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ThrusterCommand>)))
  "Returns full string definition for message of type '<ThrusterCommand>"
  (cl:format cl:nil "# vehicle_msgs/ThrusterCommand.msg~%~%Header header           # message header~%float32[6] throttle     # thrusters requested throttle (percentage: -100 to 100)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ThrusterCommand)))
  "Returns full string definition for message of type 'ThrusterCommand"
  (cl:format cl:nil "# vehicle_msgs/ThrusterCommand.msg~%~%Header header           # message header~%float32[6] throttle     # thrusters requested throttle (percentage: -100 to 100)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ThrusterCommand>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'throttle) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ThrusterCommand>))
  "Converts a ROS message object to a list"
  (cl:list 'ThrusterCommand
    (cl:cons ':header (header msg))
    (cl:cons ':throttle (throttle msg))
))
