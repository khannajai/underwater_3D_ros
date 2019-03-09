; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude FollowTerrainWithPathGoal.msg.html

(cl:defclass <FollowTerrainWithPathGoal> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector auv_msgs-msg:VehiclePose)
   :initform (cl:make-array 0 :element-type 'auv_msgs-msg:VehiclePose :initial-element (cl:make-instance 'auv_msgs-msg:VehiclePose)))
   (altitude_mode
    :reader altitude_mode
    :initarg :altitude_mode
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil)))
)

(cl:defclass FollowTerrainWithPathGoal (<FollowTerrainWithPathGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowTerrainWithPathGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowTerrainWithPathGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<FollowTerrainWithPathGoal> is deprecated: use auv_msgs-msg:FollowTerrainWithPathGoal instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <FollowTerrainWithPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:pose-val is deprecated.  Use auv_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'altitude_mode-val :lambda-list '(m))
(cl:defmethod altitude_mode-val ((m <FollowTerrainWithPathGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:altitude_mode-val is deprecated.  Use auv_msgs-msg:altitude_mode instead.")
  (altitude_mode m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowTerrainWithPathGoal>) ostream)
  "Serializes a message object of type '<FollowTerrainWithPathGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pose))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pose))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'altitude_mode))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if ele 1 0)) ostream))
   (cl:slot-value msg 'altitude_mode))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowTerrainWithPathGoal>) istream)
  "Deserializes a message object of type '<FollowTerrainWithPathGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pose) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pose)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auv_msgs-msg:VehiclePose))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'altitude_mode) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'altitude_mode)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:not (cl:zerop (cl:read-byte istream)))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowTerrainWithPathGoal>)))
  "Returns string type for a message object of type '<FollowTerrainWithPathGoal>"
  "auv_msgs/FollowTerrainWithPathGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowTerrainWithPathGoal)))
  "Returns string type for a message object of type 'FollowTerrainWithPathGoal"
  "auv_msgs/FollowTerrainWithPathGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowTerrainWithPathGoal>)))
  "Returns md5sum for a message object of type '<FollowTerrainWithPathGoal>"
  "eeb4412ba97b7597c3ac3c074a7ee9d6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowTerrainWithPathGoal)))
  "Returns md5sum for a message object of type 'FollowTerrainWithPathGoal"
  "eeb4412ba97b7597c3ac3c074a7ee9d6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowTerrainWithPathGoal>)))
  "Returns full string definition for message of type '<FollowTerrainWithPathGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Follow the specified path, which may include both depth-mode and bottom~%# following altitude-mode sections.~%~%# Variable length array of vehicle trajectory poses.~%VehiclePose[] pose~%~%# Boolean array the same length as pose, where true indicates~%# that altitude mode control should preferably be used when sending~%# that pose as a waypoint to the pilot, with the altitude specified in the~%# request parameters.~%bool[] altitude_mode   ~%~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowTerrainWithPathGoal)))
  "Returns full string definition for message of type 'FollowTerrainWithPathGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Follow the specified path, which may include both depth-mode and bottom~%# following altitude-mode sections.~%~%# Variable length array of vehicle trajectory poses.~%VehiclePose[] pose~%~%# Boolean array the same length as pose, where true indicates~%# that altitude mode control should preferably be used when sending~%# that pose as a waypoint to the pilot, with the altitude specified in the~%# request parameters.~%bool[] altitude_mode   ~%~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowTerrainWithPathGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'altitude_mode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowTerrainWithPathGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowTerrainWithPathGoal
    (cl:cons ':pose (pose msg))
    (cl:cons ':altitude_mode (altitude_mode msg))
))
