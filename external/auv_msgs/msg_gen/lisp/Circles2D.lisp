; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude Circles2D.msg.html

(cl:defclass <Circles2D> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (center
    :reader center
    :initarg :center
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (radius
    :reader radius
    :initarg :radius
    :type cl:float
    :initform 0.0))
)

(cl:defclass Circles2D (<Circles2D>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Circles2D>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Circles2D)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<Circles2D> is deprecated: use auv_msgs-msg:Circles2D instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Circles2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <Circles2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:center-val is deprecated.  Use auv_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Circles2D>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:radius-val is deprecated.  Use auv_msgs-msg:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Circles2D>) ostream)
  "Serializes a message object of type '<Circles2D>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'center) ostream)
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'radius))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Circles2D>) istream)
  "Deserializes a message object of type '<Circles2D>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'center) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'radius) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Circles2D>)))
  "Returns string type for a message object of type '<Circles2D>"
  "auv_msgs/Circles2D")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circles2D)))
  "Returns string type for a message object of type 'Circles2D"
  "auv_msgs/Circles2D")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Circles2D>)))
  "Returns md5sum for a message object of type '<Circles2D>"
  "3ec3f1e4c9ed653d64f4a72bda22768b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Circles2D)))
  "Returns md5sum for a message object of type 'Circles2D"
  "3ec3f1e4c9ed653d64f4a72bda22768b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Circles2D>)))
  "Returns full string definition for message of type '<Circles2D>"
  (cl:format cl:nil "# Detected circles (x,y,radius) in a 2D image.~%~%Header header~%~%# Position of the center of the circle (x,y). z is unused.~%geometry_msgs/Point center~%~%float64 radius~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Circles2D)))
  "Returns full string definition for message of type 'Circles2D"
  (cl:format cl:nil "# Detected circles (x,y,radius) in a 2D image.~%~%Header header~%~%# Position of the center of the circle (x,y). z is unused.~%geometry_msgs/Point center~%~%float64 radius~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Circles2D>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Circles2D>))
  "Converts a ROS message object to a list"
  (cl:list 'Circles2D
    (cl:cons ':header (header msg))
    (cl:cons ':center (center msg))
    (cl:cons ':radius (radius msg))
))
