; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude ObjectOperationGoal.msg.html

(cl:defclass <ObjectOperationGoal> (roslisp-msg-protocol:ros-message)
  ((pose
    :reader pose
    :initarg :pose
    :type (cl:vector auv_msgs-msg:VehiclePose)
   :initform (cl:make-array 0 :element-type 'auv_msgs-msg:VehiclePose :initial-element (cl:make-instance 'auv_msgs-msg:VehiclePose)))
   (altitude_mode
    :reader altitude_mode
    :initarg :altitude_mode
    :type (cl:vector cl:boolean)
   :initform (cl:make-array 0 :element-type 'cl:boolean :initial-element cl:nil))
   (id_intervention
    :reader id_intervention
    :initarg :id_intervention
    :type cl:string
    :initform ""))
)

(cl:defclass ObjectOperationGoal (<ObjectOperationGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectOperationGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectOperationGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<ObjectOperationGoal> is deprecated: use auv_msgs-msg:ObjectOperationGoal instead.")))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <ObjectOperationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:pose-val is deprecated.  Use auv_msgs-msg:pose instead.")
  (pose m))

(cl:ensure-generic-function 'altitude_mode-val :lambda-list '(m))
(cl:defmethod altitude_mode-val ((m <ObjectOperationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:altitude_mode-val is deprecated.  Use auv_msgs-msg:altitude_mode instead.")
  (altitude_mode m))

(cl:ensure-generic-function 'id_intervention-val :lambda-list '(m))
(cl:defmethod id_intervention-val ((m <ObjectOperationGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:id_intervention-val is deprecated.  Use auv_msgs-msg:id_intervention instead.")
  (id_intervention m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectOperationGoal>) ostream)
  "Serializes a message object of type '<ObjectOperationGoal>"
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
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id_intervention))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id_intervention))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectOperationGoal>) istream)
  "Deserializes a message object of type '<ObjectOperationGoal>"
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
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id_intervention) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id_intervention) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectOperationGoal>)))
  "Returns string type for a message object of type '<ObjectOperationGoal>"
  "auv_msgs/ObjectOperationGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectOperationGoal)))
  "Returns string type for a message object of type 'ObjectOperationGoal"
  "auv_msgs/ObjectOperationGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectOperationGoal>)))
  "Returns md5sum for a message object of type '<ObjectOperationGoal>"
  "4b85f49dc2aa136f38adfa23e1965177")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectOperationGoal)))
  "Returns md5sum for a message object of type 'ObjectOperationGoal"
  "4b85f49dc2aa136f38adfa23e1965177")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectOperationGoal>)))
  "Returns full string definition for message of type '<ObjectOperationGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Follow the specified path, which may include both depth-mode and bottom~%# following altitude-mode sections.~%~%# Variable length array of vehicle trajectory poses.~%VehiclePose[] pose~%~%# Boolean array the same length as pose, where true indicates~%# that altitude mode control should preferably be used when sending~%# that pose as a waypoint to the pilot, with the altitude specified in the~%# request parameters.~%bool[] altitude_mode~%~%#ID Intervention~%~%string id_intervention   ~%~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectOperationGoal)))
  "Returns full string definition for message of type 'ObjectOperationGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Follow the specified path, which may include both depth-mode and bottom~%# following altitude-mode sections.~%~%# Variable length array of vehicle trajectory poses.~%VehiclePose[] pose~%~%# Boolean array the same length as pose, where true indicates~%# that altitude mode control should preferably be used when sending~%# that pose as a waypoint to the pilot, with the altitude specified in the~%# request parameters.~%bool[] altitude_mode~%~%#ID Intervention~%~%string id_intervention   ~%~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectOperationGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'altitude_mode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
     4 (cl:length (cl:slot-value msg 'id_intervention))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectOperationGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectOperationGoal
    (cl:cons ':pose (pose msg))
    (cl:cons ':altitude_mode (altitude_mode msg))
    (cl:cons ':id_intervention (id_intervention msg))
))
