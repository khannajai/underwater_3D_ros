; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude LocaliseInMosaicGoal.msg.html

(cl:defclass <LocaliseInMosaicGoal> (roslisp-msg-protocol:ros-message)
  ((view_image_id
    :reader view_image_id
    :initarg :view_image_id
    :type cl:string
    :initform "")
   (view_feature
    :reader view_feature
    :initarg :view_feature
    :type auv_msgs-msg:ImageFeature
    :initform (cl:make-instance 'auv_msgs-msg:ImageFeature))
   (camera_frame
    :reader camera_frame
    :initarg :camera_frame
    :type cl:string
    :initform ""))
)

(cl:defclass LocaliseInMosaicGoal (<LocaliseInMosaicGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocaliseInMosaicGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocaliseInMosaicGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<LocaliseInMosaicGoal> is deprecated: use auv_msgs-msg:LocaliseInMosaicGoal instead.")))

(cl:ensure-generic-function 'view_image_id-val :lambda-list '(m))
(cl:defmethod view_image_id-val ((m <LocaliseInMosaicGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:view_image_id-val is deprecated.  Use auv_msgs-msg:view_image_id instead.")
  (view_image_id m))

(cl:ensure-generic-function 'view_feature-val :lambda-list '(m))
(cl:defmethod view_feature-val ((m <LocaliseInMosaicGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:view_feature-val is deprecated.  Use auv_msgs-msg:view_feature instead.")
  (view_feature m))

(cl:ensure-generic-function 'camera_frame-val :lambda-list '(m))
(cl:defmethod camera_frame-val ((m <LocaliseInMosaicGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:camera_frame-val is deprecated.  Use auv_msgs-msg:camera_frame instead.")
  (camera_frame m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocaliseInMosaicGoal>) ostream)
  "Serializes a message object of type '<LocaliseInMosaicGoal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'view_image_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'view_image_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'view_feature) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_frame))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocaliseInMosaicGoal>) istream)
  "Deserializes a message object of type '<LocaliseInMosaicGoal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'view_image_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'view_image_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'view_feature) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocaliseInMosaicGoal>)))
  "Returns string type for a message object of type '<LocaliseInMosaicGoal>"
  "auv_msgs/LocaliseInMosaicGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocaliseInMosaicGoal)))
  "Returns string type for a message object of type 'LocaliseInMosaicGoal"
  "auv_msgs/LocaliseInMosaicGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocaliseInMosaicGoal>)))
  "Returns md5sum for a message object of type '<LocaliseInMosaicGoal>"
  "9c5b4921a1555eca890977a207d394d8")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocaliseInMosaicGoal)))
  "Returns md5sum for a message object of type 'LocaliseInMosaicGoal"
  "9c5b4921a1555eca890977a207d394d8")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocaliseInMosaicGoal>)))
  "Returns full string definition for message of type '<LocaliseInMosaicGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Attempt to discover the vehicle's pose within the specified large mosaic image.~%#~%# May need to be performed with vehicle stationary due to computation time.~%# May be useful to provide constraints on odometry whilst localising, e.g. at least ~%# estimate visual motion every second, to speed up localisation calculations. ~%# Could slow/stop vehicle during this process. Potential to specify pose ~%# radius/covariance cutoff probability for mosaic localisation action.~%~%# ID of the image to localise within. ~%string view_image_id~%~%# Features to use for localisation, specified in image frame.~%ImageFeature view_feature~%~%# Frame of the suggested camera to use.~%string camera_frame~%~%~%================================================================================~%MSG: auv_msgs/ImageFeature~%# A single feature within a 2D image.~%~%# Position of feature in image (z is unused)~%geometry_msgs/Point position~%~%# Array of float32 values describing the feature.~%float32[] descriptor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocaliseInMosaicGoal)))
  "Returns full string definition for message of type 'LocaliseInMosaicGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Attempt to discover the vehicle's pose within the specified large mosaic image.~%#~%# May need to be performed with vehicle stationary due to computation time.~%# May be useful to provide constraints on odometry whilst localising, e.g. at least ~%# estimate visual motion every second, to speed up localisation calculations. ~%# Could slow/stop vehicle during this process. Potential to specify pose ~%# radius/covariance cutoff probability for mosaic localisation action.~%~%# ID of the image to localise within. ~%string view_image_id~%~%# Features to use for localisation, specified in image frame.~%ImageFeature view_feature~%~%# Frame of the suggested camera to use.~%string camera_frame~%~%~%================================================================================~%MSG: auv_msgs/ImageFeature~%# A single feature within a 2D image.~%~%# Position of feature in image (z is unused)~%geometry_msgs/Point position~%~%# Array of float32 values describing the feature.~%float32[] descriptor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocaliseInMosaicGoal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'view_image_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'view_feature))
     4 (cl:length (cl:slot-value msg 'camera_frame))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocaliseInMosaicGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocaliseInMosaicGoal
    (cl:cons ':view_image_id (view_image_id msg))
    (cl:cons ':view_feature (view_feature msg))
    (cl:cons ':camera_frame (camera_frame msg))
))
