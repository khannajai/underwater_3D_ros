; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude SphereArray.msg.html

(cl:defclass <SphereArray> (roslisp-msg-protocol:ros-message)
  ((spheres
    :reader spheres
    :initarg :spheres
    :type (cl:vector auv_msgs-msg:Sphere)
   :initform (cl:make-array 0 :element-type 'auv_msgs-msg:Sphere :initial-element (cl:make-instance 'auv_msgs-msg:Sphere))))
)

(cl:defclass SphereArray (<SphereArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SphereArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SphereArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<SphereArray> is deprecated: use auv_msgs-msg:SphereArray instead.")))

(cl:ensure-generic-function 'spheres-val :lambda-list '(m))
(cl:defmethod spheres-val ((m <SphereArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:spheres-val is deprecated.  Use auv_msgs-msg:spheres instead.")
  (spheres m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SphereArray>) ostream)
  "Serializes a message object of type '<SphereArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'spheres))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'spheres))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SphereArray>) istream)
  "Deserializes a message object of type '<SphereArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'spheres) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'spheres)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auv_msgs-msg:Sphere))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SphereArray>)))
  "Returns string type for a message object of type '<SphereArray>"
  "auv_msgs/SphereArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SphereArray)))
  "Returns string type for a message object of type 'SphereArray"
  "auv_msgs/SphereArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SphereArray>)))
  "Returns md5sum for a message object of type '<SphereArray>"
  "f96e535a43fc5e097bbf3d170fb8b981")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SphereArray)))
  "Returns md5sum for a message object of type 'SphereArray"
  "f96e535a43fc5e097bbf3d170fb8b981")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SphereArray>)))
  "Returns full string definition for message of type '<SphereArray>"
  (cl:format cl:nil "Sphere[] spheres~%~%================================================================================~%MSG: auv_msgs/Sphere~%geometry_msgs/Point center~%float64 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SphereArray)))
  "Returns full string definition for message of type 'SphereArray"
  (cl:format cl:nil "Sphere[] spheres~%~%================================================================================~%MSG: auv_msgs/Sphere~%geometry_msgs/Point center~%float64 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SphereArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'spheres) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SphereArray>))
  "Converts a ROS message object to a list"
  (cl:list 'SphereArray
    (cl:cons ':spheres (spheres msg))
))
