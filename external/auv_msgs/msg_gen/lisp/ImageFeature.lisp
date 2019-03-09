; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude ImageFeature.msg.html

(cl:defclass <ImageFeature> (roslisp-msg-protocol:ros-message)
  ((position
    :reader position
    :initarg :position
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (descriptor
    :reader descriptor
    :initarg :descriptor
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass ImageFeature (<ImageFeature>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ImageFeature>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ImageFeature)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<ImageFeature> is deprecated: use auv_msgs-msg:ImageFeature instead.")))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <ImageFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:position-val is deprecated.  Use auv_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'descriptor-val :lambda-list '(m))
(cl:defmethod descriptor-val ((m <ImageFeature>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:descriptor-val is deprecated.  Use auv_msgs-msg:descriptor instead.")
  (descriptor m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ImageFeature>) ostream)
  "Serializes a message object of type '<ImageFeature>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'descriptor))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'descriptor))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ImageFeature>) istream)
  "Deserializes a message object of type '<ImageFeature>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'descriptor) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'descriptor)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ImageFeature>)))
  "Returns string type for a message object of type '<ImageFeature>"
  "auv_msgs/ImageFeature")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ImageFeature)))
  "Returns string type for a message object of type 'ImageFeature"
  "auv_msgs/ImageFeature")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ImageFeature>)))
  "Returns md5sum for a message object of type '<ImageFeature>"
  "60381b047909bcb02393bcf9f30b71e5")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ImageFeature)))
  "Returns md5sum for a message object of type 'ImageFeature"
  "60381b047909bcb02393bcf9f30b71e5")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ImageFeature>)))
  "Returns full string definition for message of type '<ImageFeature>"
  (cl:format cl:nil "# A single feature within a 2D image.~%~%# Position of feature in image (z is unused)~%geometry_msgs/Point position~%~%# Array of float32 values describing the feature.~%float32[] descriptor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ImageFeature)))
  "Returns full string definition for message of type 'ImageFeature"
  (cl:format cl:nil "# A single feature within a 2D image.~%~%# Position of feature in image (z is unused)~%geometry_msgs/Point position~%~%# Array of float32 values describing the feature.~%float32[] descriptor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ImageFeature>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'descriptor) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ImageFeature>))
  "Converts a ROS message object to a list"
  (cl:list 'ImageFeature
    (cl:cons ':position (position msg))
    (cl:cons ':descriptor (descriptor msg))
))
