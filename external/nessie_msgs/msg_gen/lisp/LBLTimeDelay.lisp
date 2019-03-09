; Auto-generated. Do not edit!


(cl:in-package nessie_msgs-msg)


;//! \htmlinclude LBLTimeDelay.msg.html

(cl:defclass <LBLTimeDelay> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (time_delay_a
    :reader time_delay_a
    :initarg :time_delay_a
    :type cl:float
    :initform 0.0)
   (time_delay_b
    :reader time_delay_b
    :initarg :time_delay_b
    :type cl:float
    :initform 0.0)
   (time_delay_c
    :reader time_delay_c
    :initarg :time_delay_c
    :type cl:float
    :initform 0.0)
   (time_delay_d
    :reader time_delay_d
    :initarg :time_delay_d
    :type cl:float
    :initform 0.0))
)

(cl:defclass LBLTimeDelay (<LBLTimeDelay>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LBLTimeDelay>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LBLTimeDelay)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name nessie_msgs-msg:<LBLTimeDelay> is deprecated: use nessie_msgs-msg:LBLTimeDelay instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LBLTimeDelay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nessie_msgs-msg:header-val is deprecated.  Use nessie_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'time_delay_a-val :lambda-list '(m))
(cl:defmethod time_delay_a-val ((m <LBLTimeDelay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nessie_msgs-msg:time_delay_a-val is deprecated.  Use nessie_msgs-msg:time_delay_a instead.")
  (time_delay_a m))

(cl:ensure-generic-function 'time_delay_b-val :lambda-list '(m))
(cl:defmethod time_delay_b-val ((m <LBLTimeDelay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nessie_msgs-msg:time_delay_b-val is deprecated.  Use nessie_msgs-msg:time_delay_b instead.")
  (time_delay_b m))

(cl:ensure-generic-function 'time_delay_c-val :lambda-list '(m))
(cl:defmethod time_delay_c-val ((m <LBLTimeDelay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nessie_msgs-msg:time_delay_c-val is deprecated.  Use nessie_msgs-msg:time_delay_c instead.")
  (time_delay_c m))

(cl:ensure-generic-function 'time_delay_d-val :lambda-list '(m))
(cl:defmethod time_delay_d-val ((m <LBLTimeDelay>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader nessie_msgs-msg:time_delay_d-val is deprecated.  Use nessie_msgs-msg:time_delay_d instead.")
  (time_delay_d m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LBLTimeDelay>) ostream)
  "Serializes a message object of type '<LBLTimeDelay>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_delay_a))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_delay_b))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_delay_c))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'time_delay_d))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LBLTimeDelay>) istream)
  "Deserializes a message object of type '<LBLTimeDelay>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_delay_a) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_delay_b) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_delay_c) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'time_delay_d) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LBLTimeDelay>)))
  "Returns string type for a message object of type '<LBLTimeDelay>"
  "nessie_msgs/LBLTimeDelay")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LBLTimeDelay)))
  "Returns string type for a message object of type 'LBLTimeDelay"
  "nessie_msgs/LBLTimeDelay")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LBLTimeDelay>)))
  "Returns md5sum for a message object of type '<LBLTimeDelay>"
  "696b34e1cb3a938882ac6be4f28b2794")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LBLTimeDelay)))
  "Returns md5sum for a message object of type 'LBLTimeDelay"
  "696b34e1cb3a938882ac6be4f28b2794")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LBLTimeDelay>)))
  "Returns full string definition for message of type '<LBLTimeDelay>"
  (cl:format cl:nil "# Used to report time delays from a set of LBL transponders, which are~%# pinged by the modem.~%~%Header header                   # standard message beader~%~%~%# Time delay for each source, zero means invalid ~%~%float32 time_delay_a~%float32 time_delay_b~%float32 time_delay_c~%float32 time_delay_d~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LBLTimeDelay)))
  "Returns full string definition for message of type 'LBLTimeDelay"
  (cl:format cl:nil "# Used to report time delays from a set of LBL transponders, which are~%# pinged by the modem.~%~%Header header                   # standard message beader~%~%~%# Time delay for each source, zero means invalid ~%~%float32 time_delay_a~%float32 time_delay_b~%float32 time_delay_c~%float32 time_delay_d~%~%~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LBLTimeDelay>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LBLTimeDelay>))
  "Converts a ROS message object to a list"
  (cl:list 'LBLTimeDelay
    (cl:cons ':header (header msg))
    (cl:cons ':time_delay_a (time_delay_a msg))
    (cl:cons ':time_delay_b (time_delay_b msg))
    (cl:cons ':time_delay_c (time_delay_c msg))
    (cl:cons ':time_delay_d (time_delay_d msg))
))
