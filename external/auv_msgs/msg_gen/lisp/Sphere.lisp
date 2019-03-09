; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude Sphere.msg.html

(cl:defclass <Sphere> (roslisp-msg-protocol:ros-message)
  ((center
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

(cl:defclass Sphere (<Sphere>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Sphere>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Sphere)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<Sphere> is deprecated: use auv_msgs-msg:Sphere instead.")))

(cl:ensure-generic-function 'center-val :lambda-list '(m))
(cl:defmethod center-val ((m <Sphere>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:center-val is deprecated.  Use auv_msgs-msg:center instead.")
  (center m))

(cl:ensure-generic-function 'radius-val :lambda-list '(m))
(cl:defmethod radius-val ((m <Sphere>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:radius-val is deprecated.  Use auv_msgs-msg:radius instead.")
  (radius m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Sphere>) ostream)
  "Serializes a message object of type '<Sphere>"
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Sphere>) istream)
  "Deserializes a message object of type '<Sphere>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Sphere>)))
  "Returns string type for a message object of type '<Sphere>"
  "auv_msgs/Sphere")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Sphere)))
  "Returns string type for a message object of type 'Sphere"
  "auv_msgs/Sphere")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Sphere>)))
  "Returns md5sum for a message object of type '<Sphere>"
  "ab296cd39c1a1fa7dd67209d6a4767e1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Sphere)))
  "Returns md5sum for a message object of type 'Sphere"
  "ab296cd39c1a1fa7dd67209d6a4767e1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Sphere>)))
  "Returns full string definition for message of type '<Sphere>"
  (cl:format cl:nil "geometry_msgs/Point center~%float64 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Sphere)))
  "Returns full string definition for message of type 'Sphere"
  (cl:format cl:nil "geometry_msgs/Point center~%float64 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Sphere>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'center))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Sphere>))
  "Converts a ROS message object to a list"
  (cl:list 'Sphere
    (cl:cons ':center (center msg))
    (cl:cons ':radius (radius msg))
))
