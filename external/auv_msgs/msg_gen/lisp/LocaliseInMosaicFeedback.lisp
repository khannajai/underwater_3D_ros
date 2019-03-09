; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude LocaliseInMosaicFeedback.msg.html

(cl:defclass <LocaliseInMosaicFeedback> (roslisp-msg-protocol:ros-message)
  ((view_image_id
    :reader view_image_id
    :initarg :view_image_id
    :type cl:string
    :initform "")
   (camera_frame
    :reader camera_frame
    :initarg :camera_frame
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (identified
    :reader identified
    :initarg :identified
    :type cl:boolean
    :initform cl:nil)
   (vehicle_relative_to_view
    :reader vehicle_relative_to_view
    :initarg :vehicle_relative_to_view
    :type geometry_msgs-msg:PoseWithCovariance
    :initform (cl:make-instance 'geometry_msgs-msg:PoseWithCovariance)))
)

(cl:defclass LocaliseInMosaicFeedback (<LocaliseInMosaicFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocaliseInMosaicFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocaliseInMosaicFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<LocaliseInMosaicFeedback> is deprecated: use auv_msgs-msg:LocaliseInMosaicFeedback instead.")))

(cl:ensure-generic-function 'view_image_id-val :lambda-list '(m))
(cl:defmethod view_image_id-val ((m <LocaliseInMosaicFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:view_image_id-val is deprecated.  Use auv_msgs-msg:view_image_id instead.")
  (view_image_id m))

(cl:ensure-generic-function 'camera_frame-val :lambda-list '(m))
(cl:defmethod camera_frame-val ((m <LocaliseInMosaicFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:camera_frame-val is deprecated.  Use auv_msgs-msg:camera_frame instead.")
  (camera_frame m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <LocaliseInMosaicFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:stamp-val is deprecated.  Use auv_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'identified-val :lambda-list '(m))
(cl:defmethod identified-val ((m <LocaliseInMosaicFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:identified-val is deprecated.  Use auv_msgs-msg:identified instead.")
  (identified m))

(cl:ensure-generic-function 'vehicle_relative_to_view-val :lambda-list '(m))
(cl:defmethod vehicle_relative_to_view-val ((m <LocaliseInMosaicFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:vehicle_relative_to_view-val is deprecated.  Use auv_msgs-msg:vehicle_relative_to_view instead.")
  (vehicle_relative_to_view m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocaliseInMosaicFeedback>) ostream)
  "Serializes a message object of type '<LocaliseInMosaicFeedback>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'view_image_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'view_image_id))
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
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'identified) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'vehicle_relative_to_view) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocaliseInMosaicFeedback>) istream)
  "Deserializes a message object of type '<LocaliseInMosaicFeedback>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'view_image_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'view_image_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
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
    (cl:setf (cl:slot-value msg 'identified) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'vehicle_relative_to_view) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocaliseInMosaicFeedback>)))
  "Returns string type for a message object of type '<LocaliseInMosaicFeedback>"
  "auv_msgs/LocaliseInMosaicFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocaliseInMosaicFeedback)))
  "Returns string type for a message object of type 'LocaliseInMosaicFeedback"
  "auv_msgs/LocaliseInMosaicFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocaliseInMosaicFeedback>)))
  "Returns md5sum for a message object of type '<LocaliseInMosaicFeedback>"
  "b7bdc09431e6b44fddff0b521b94cbb5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocaliseInMosaicFeedback)))
  "Returns md5sum for a message object of type 'LocaliseInMosaicFeedback"
  "b7bdc09431e6b44fddff0b521b94cbb5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocaliseInMosaicFeedback>)))
  "Returns full string definition for message of type '<LocaliseInMosaicFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Image ID repeated from request~%string view_image_id~%~%# Frame of the camera used to localise.~%string camera_frame~%~%# Timestamp of the camera image used.~%time stamp~%~%# True if view is identified.~%bool identified~%~%# Pose is specified in view image frame.~%geometry_msgs/PoseWithCovariance vehicle_relative_to_view~%~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocaliseInMosaicFeedback)))
  "Returns full string definition for message of type 'LocaliseInMosaicFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%# Image ID repeated from request~%string view_image_id~%~%# Frame of the camera used to localise.~%string camera_frame~%~%# Timestamp of the camera image used.~%time stamp~%~%# True if view is identified.~%bool identified~%~%# Pose is specified in view image frame.~%geometry_msgs/PoseWithCovariance vehicle_relative_to_view~%~%~%================================================================================~%MSG: geometry_msgs/PoseWithCovariance~%# This represents a pose in free space with uncertainty.~%~%Pose pose~%~%# Row-major representation of the 6x6 covariance matrix~%# The orientation parameters use a fixed-axis representation.~%# In order, the parameters are:~%# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)~%float64[36] covariance~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocaliseInMosaicFeedback>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'view_image_id))
     4 (cl:length (cl:slot-value msg 'camera_frame))
     8
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'vehicle_relative_to_view))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocaliseInMosaicFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'LocaliseInMosaicFeedback
    (cl:cons ':view_image_id (view_image_id msg))
    (cl:cons ':camera_frame (camera_frame msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':identified (identified msg))
    (cl:cons ':vehicle_relative_to_view (vehicle_relative_to_view msg))
))
