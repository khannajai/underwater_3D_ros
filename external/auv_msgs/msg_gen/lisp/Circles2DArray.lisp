; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude Circles2DArray.msg.html

(cl:defclass <Circles2DArray> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (circles
    :reader circles
    :initarg :circles
    :type (cl:vector auv_msgs-msg:Circles2D)
   :initform (cl:make-array 0 :element-type 'auv_msgs-msg:Circles2D :initial-element (cl:make-instance 'auv_msgs-msg:Circles2D))))
)

(cl:defclass Circles2DArray (<Circles2DArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Circles2DArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Circles2DArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<Circles2DArray> is deprecated: use auv_msgs-msg:Circles2DArray instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Circles2DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'circles-val :lambda-list '(m))
(cl:defmethod circles-val ((m <Circles2DArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:circles-val is deprecated.  Use auv_msgs-msg:circles instead.")
  (circles m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Circles2DArray>) ostream)
  "Serializes a message object of type '<Circles2DArray>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'circles))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'circles))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Circles2DArray>) istream)
  "Deserializes a message object of type '<Circles2DArray>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'circles) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'circles)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auv_msgs-msg:Circles2D))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Circles2DArray>)))
  "Returns string type for a message object of type '<Circles2DArray>"
  "auv_msgs/Circles2DArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Circles2DArray)))
  "Returns string type for a message object of type 'Circles2DArray"
  "auv_msgs/Circles2DArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Circles2DArray>)))
  "Returns md5sum for a message object of type '<Circles2DArray>"
  "3f6edfcd6124c497c196e136cc24f493")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Circles2DArray)))
  "Returns md5sum for a message object of type 'Circles2DArray"
  "3f6edfcd6124c497c196e136cc24f493")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Circles2DArray>)))
  "Returns full string definition for message of type '<Circles2DArray>"
  (cl:format cl:nil "# Detected circles array (x,y,radius) in a 2D image.~%~%Header header~%~%# Array of float64 values of the values describing the circles (x,y,radius).~%Circles2D[] circles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/Circles2D~%# Detected circles (x,y,radius) in a 2D image.~%~%Header header~%~%# Position of the center of the circle (x,y). z is unused.~%geometry_msgs/Point center~%~%float64 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Circles2DArray)))
  "Returns full string definition for message of type 'Circles2DArray"
  (cl:format cl:nil "# Detected circles array (x,y,radius) in a 2D image.~%~%Header header~%~%# Array of float64 values of the values describing the circles (x,y,radius).~%Circles2D[] circles~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/Circles2D~%# Detected circles (x,y,radius) in a 2D image.~%~%Header header~%~%# Position of the center of the circle (x,y). z is unused.~%geometry_msgs/Point center~%~%float64 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Circles2DArray>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'circles) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Circles2DArray>))
  "Converts a ROS message object to a list"
  (cl:list 'Circles2DArray
    (cl:cons ':header (header msg))
    (cl:cons ':circles (circles msg))
))
