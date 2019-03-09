; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude GenerateObjectModelGoal.msg.html

(cl:defclass <GenerateObjectModelGoal> (roslisp-msg-protocol:ros-message)
  ((camera_frame
    :reader camera_frame
    :initarg :camera_frame
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (polygon
    :reader polygon
    :initarg :polygon
    :type geometry_msgs-msg:Polygon
    :initform (cl:make-instance 'geometry_msgs-msg:Polygon)))
)

(cl:defclass GenerateObjectModelGoal (<GenerateObjectModelGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateObjectModelGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateObjectModelGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<GenerateObjectModelGoal> is deprecated: use auv_msgs-msg:GenerateObjectModelGoal instead.")))

(cl:ensure-generic-function 'camera_frame-val :lambda-list '(m))
(cl:defmethod camera_frame-val ((m <GenerateObjectModelGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:camera_frame-val is deprecated.  Use auv_msgs-msg:camera_frame instead.")
  (camera_frame m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <GenerateObjectModelGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:stamp-val is deprecated.  Use auv_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'polygon-val :lambda-list '(m))
(cl:defmethod polygon-val ((m <GenerateObjectModelGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:polygon-val is deprecated.  Use auv_msgs-msg:polygon instead.")
  (polygon m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateObjectModelGoal>) ostream)
  "Serializes a message object of type '<GenerateObjectModelGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_frame))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'polygon) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateObjectModelGoal>) istream)
  "Deserializes a message object of type '<GenerateObjectModelGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'polygon) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateObjectModelGoal>)))
  "Returns string type for a message object of type '<GenerateObjectModelGoal>"
  "auv_msgs/GenerateObjectModelGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateObjectModelGoal)))
  "Returns string type for a message object of type 'GenerateObjectModelGoal"
  "auv_msgs/GenerateObjectModelGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateObjectModelGoal>)))
  "Returns md5sum for a message object of type '<GenerateObjectModelGoal>"
  "158a318441532ae480efb1af5361222f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateObjectModelGoal)))
  "Returns md5sum for a message object of type 'GenerateObjectModelGoal"
  "158a318441532ae480efb1af5361222f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateObjectModelGoal>)))
  "Returns full string definition for message of type '<GenerateObjectModelGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Generates a model of an object described by a polygon in a 2D image.~%~%# Frame of the camera that captured the image (may be virtual)~%string camera_frame~%~%# Timestamp of the image~%time stamp~%~%# Polygon surrounding the object in image pixel coordinates (z=0)~%geometry_msgs/Polygon polygon~%~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateObjectModelGoal)))
  "Returns full string definition for message of type 'GenerateObjectModelGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Generates a model of an object described by a polygon in a 2D image.~%~%# Frame of the camera that captured the image (may be virtual)~%string camera_frame~%~%# Timestamp of the image~%time stamp~%~%# Polygon surrounding the object in image pixel coordinates (z=0)~%geometry_msgs/Polygon polygon~%~%~%================================================================================~%MSG: geometry_msgs/Polygon~%#A specification of a polygon where the first and last points are assumed to be connected~%Point32[] points~%~%================================================================================~%MSG: geometry_msgs/Point32~%# This contains the position of a point in free space(with 32 bits of precision).~%# It is recommeded to use Point wherever possible instead of Point32.  ~%# ~%# This recommendation is to promote interoperability.  ~%#~%# This message is designed to take up less space when sending~%# lots of points at once, as in the case of a PointCloud.  ~%~%float32 x~%float32 y~%float32 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateObjectModelGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'camera_frame))
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'polygon))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateObjectModelGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateObjectModelGoal
    (cl:cons ':camera_frame (camera_frame msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':polygon (polygon msg))
))
