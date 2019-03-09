; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude VisualMotion.msg.html

(cl:defclass <VisualMotion> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (reference_time_pose
    :reader reference_time_pose
    :initarg :reference_time_pose
    :type cl:real
    :initform 0)
   (reference_time_twist
    :reader reference_time_twist
    :initarg :reference_time_twist
    :type cl:real
    :initform 0)
   (pose
    :reader pose
    :initarg :pose
    :type geometry_msgs-msg:Pose
    :initform (cl:make-instance 'geometry_msgs-msg:Pose))
   (twist
    :reader twist
    :initarg :twist
    :type geometry_msgs-msg:Twist
    :initform (cl:make-instance 'geometry_msgs-msg:Twist))
   (variance_pose
    :reader variance_pose
    :initarg :variance_pose
    :type cl:float
    :initform 0.0)
   (variance_twist
    :reader variance_twist
    :initarg :variance_twist
    :type cl:float
    :initform 0.0))
)

(cl:defclass VisualMotion (<VisualMotion>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VisualMotion>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VisualMotion)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<VisualMotion> is deprecated: use auv_msgs-msg:VisualMotion instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <VisualMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'reference_time_pose-val :lambda-list '(m))
(cl:defmethod reference_time_pose-val ((m <VisualMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:reference_time_pose-val is deprecated.  Use auv_msgs-msg:reference_time_pose instead.")
  (reference_time_pose m))

(cl:ensure-generic-function 'reference_time_twist-val :lambda-list '(m))
(cl:defmethod reference_time_twist-val ((m <VisualMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:reference_time_twist-val is deprecated.  Use auv_msgs-msg:reference_time_twist instead.")
  (reference_time_twist m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <VisualMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:pose-val is deprecated.  Use auv_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'twist-val :lambda-list '(m))
(cl:defmethod twist-val ((m <VisualMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:twist-val is deprecated.  Use auv_msgs-msg:twist instead.")
  (twist m))

(cl:ensure-generic-function 'variance_pose-val :lambda-list '(m))
(cl:defmethod variance_pose-val ((m <VisualMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:variance_pose-val is deprecated.  Use auv_msgs-msg:variance_pose instead.")
  (variance_pose m))

(cl:ensure-generic-function 'variance_twist-val :lambda-list '(m))
(cl:defmethod variance_twist-val ((m <VisualMotion>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:variance_twist-val is deprecated.  Use auv_msgs-msg:variance_twist instead.")
  (variance_twist m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VisualMotion>) ostream)
  "Serializes a message object of type '<VisualMotion>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'reference_time_pose)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'reference_time_pose) (cl:floor (cl:slot-value msg 'reference_time_pose)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'reference_time_twist)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'reference_time_twist) (cl:floor (cl:slot-value msg 'reference_time_twist)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pose) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'twist) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'variance_pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'variance_twist))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VisualMotion>) istream)
  "Deserializes a message object of type '<VisualMotion>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reference_time_pose) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'reference_time_twist) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pose) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'twist) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'variance_pose) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'variance_twist) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VisualMotion>)))
  "Returns string type for a message object of type '<VisualMotion>"
  "auv_msgs/VisualMotion")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VisualMotion)))
  "Returns string type for a message object of type 'VisualMotion"
  "auv_msgs/VisualMotion")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VisualMotion>)))
  "Returns md5sum for a message object of type '<VisualMotion>"
  "45241450d6deb0a24fe35e410497e2d0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VisualMotion)))
  "Returns md5sum for a message object of type 'VisualMotion"
  "45241450d6deb0a24fe35e410497e2d0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VisualMotion>)))
  "Returns full string definition for message of type '<VisualMotion>"
  (cl:format cl:nil "# Message describing estimated motion of the platform based ~%# on pairs of optical images. Pose estimation may be performed~%# either between a fixed image and the most recent image, ~%# or the most recent two images. Twist (velocity) estimation is ~%# always estimated between the most recent two images.~%~%# Header frame is camera frame.~%# Header stamp is of the most recent image.~%Header header~%~%# Time of pose reference image.~%time reference_time_pose~%~%# Time of twist reference image.~%time reference_time_twist~%~%# Estimated relative pose.~%geometry_msgs/Pose pose~%~%# Estimated velocity.~%geometry_msgs/Twist twist~%~%# Variance in the pose estimate.~%float32 variance_pose~%~%# Variance in the twist estimate.~%float32 variance_twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into it's linear and angular parts. ~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VisualMotion)))
  "Returns full string definition for message of type 'VisualMotion"
  (cl:format cl:nil "# Message describing estimated motion of the platform based ~%# on pairs of optical images. Pose estimation may be performed~%# either between a fixed image and the most recent image, ~%# or the most recent two images. Twist (velocity) estimation is ~%# always estimated between the most recent two images.~%~%# Header frame is camera frame.~%# Header stamp is of the most recent image.~%Header header~%~%# Time of pose reference image.~%time reference_time_pose~%~%# Time of twist reference image.~%time reference_time_twist~%~%# Estimated relative pose.~%geometry_msgs/Pose pose~%~%# Estimated velocity.~%geometry_msgs/Twist twist~%~%# Variance in the pose estimate.~%float32 variance_pose~%~%# Variance in the twist estimate.~%float32 variance_twist~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Pose~%# A representation of pose in free space, composed of postion and orientation. ~%Point position~%Quaternion orientation~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%================================================================================~%MSG: geometry_msgs/Twist~%# This expresses velocity in free space broken into it's linear and angular parts. ~%Vector3  linear~%Vector3  angular~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VisualMotion>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     8
     8
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pose))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'twist))
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VisualMotion>))
  "Converts a ROS message object to a list"
  (cl:list 'VisualMotion
    (cl:cons ':header (header msg))
    (cl:cons ':reference_time_pose (reference_time_pose msg))
    (cl:cons ':reference_time_twist (reference_time_twist msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':twist (twist msg))
    (cl:cons ':variance_pose (variance_pose msg))
    (cl:cons ':variance_twist (variance_twist msg))
))
