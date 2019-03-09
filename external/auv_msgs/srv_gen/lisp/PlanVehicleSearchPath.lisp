; Auto-generated. Do not edit!


(cl:in-package auv_msgs-srv)


;//! \htmlinclude PlanVehicleSearchPath-request.msg.html

(cl:defclass <PlanVehicleSearchPath-request> (roslisp-msg-protocol:ros-message)
  ((depth_mode
    :reader depth_mode
    :initarg :depth_mode
    :type cl:boolean
    :initform cl:nil)
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (depth
    :reader depth
    :initarg :depth
    :type cl:float
    :initform 0.0)
   (start_north
    :reader start_north
    :initarg :start_north
    :type cl:float
    :initform 0.0)
   (start_east
    :reader start_east
    :initarg :start_east
    :type cl:float
    :initform 0.0)
   (end_north
    :reader end_north
    :initarg :end_north
    :type cl:float
    :initform 0.0)
   (end_east
    :reader end_east
    :initarg :end_east
    :type cl:float
    :initform 0.0)
   (max_bottom_gradient
    :reader max_bottom_gradient
    :initarg :max_bottom_gradient
    :type cl:float
    :initform 0.0))
)

(cl:defclass PlanVehicleSearchPath-request (<PlanVehicleSearchPath-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanVehicleSearchPath-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanVehicleSearchPath-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-srv:<PlanVehicleSearchPath-request> is deprecated: use auv_msgs-srv:PlanVehicleSearchPath-request instead.")))

(cl:ensure-generic-function 'depth_mode-val :lambda-list '(m))
(cl:defmethod depth_mode-val ((m <PlanVehicleSearchPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:depth_mode-val is deprecated.  Use auv_msgs-srv:depth_mode instead.")
  (depth_mode m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <PlanVehicleSearchPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:altitude-val is deprecated.  Use auv_msgs-srv:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'depth-val :lambda-list '(m))
(cl:defmethod depth-val ((m <PlanVehicleSearchPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:depth-val is deprecated.  Use auv_msgs-srv:depth instead.")
  (depth m))

(cl:ensure-generic-function 'start_north-val :lambda-list '(m))
(cl:defmethod start_north-val ((m <PlanVehicleSearchPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:start_north-val is deprecated.  Use auv_msgs-srv:start_north instead.")
  (start_north m))

(cl:ensure-generic-function 'start_east-val :lambda-list '(m))
(cl:defmethod start_east-val ((m <PlanVehicleSearchPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:start_east-val is deprecated.  Use auv_msgs-srv:start_east instead.")
  (start_east m))

(cl:ensure-generic-function 'end_north-val :lambda-list '(m))
(cl:defmethod end_north-val ((m <PlanVehicleSearchPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:end_north-val is deprecated.  Use auv_msgs-srv:end_north instead.")
  (end_north m))

(cl:ensure-generic-function 'end_east-val :lambda-list '(m))
(cl:defmethod end_east-val ((m <PlanVehicleSearchPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:end_east-val is deprecated.  Use auv_msgs-srv:end_east instead.")
  (end_east m))

(cl:ensure-generic-function 'max_bottom_gradient-val :lambda-list '(m))
(cl:defmethod max_bottom_gradient-val ((m <PlanVehicleSearchPath-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:max_bottom_gradient-val is deprecated.  Use auv_msgs-srv:max_bottom_gradient instead.")
  (max_bottom_gradient m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanVehicleSearchPath-request>) ostream)
  "Serializes a message object of type '<PlanVehicleSearchPath-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'depth_mode) 1 0)) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'depth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_north))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'start_east))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_north))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'end_east))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'max_bottom_gradient))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanVehicleSearchPath-request>) istream)
  "Deserializes a message object of type '<PlanVehicleSearchPath-request>"
    (cl:setf (cl:slot-value msg 'depth_mode) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'depth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_north) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'start_east) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_north) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'end_east) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'max_bottom_gradient) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanVehicleSearchPath-request>)))
  "Returns string type for a service object of type '<PlanVehicleSearchPath-request>"
  "auv_msgs/PlanVehicleSearchPathRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanVehicleSearchPath-request)))
  "Returns string type for a service object of type 'PlanVehicleSearchPath-request"
  "auv_msgs/PlanVehicleSearchPathRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanVehicleSearchPath-request>)))
  "Returns md5sum for a message object of type '<PlanVehicleSearchPath-request>"
  "28b40ee493b99da239fe762d65f76ab9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanVehicleSearchPath-request)))
  "Returns md5sum for a message object of type 'PlanVehicleSearchPath-request"
  "28b40ee493b99da239fe762d65f76ab9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanVehicleSearchPath-request>)))
  "Returns full string definition for message of type '<PlanVehicleSearchPath-request>"
  (cl:format cl:nil "~%~%bool depth_mode~%~%float32 altitude~%float32 depth~%~%float32 start_north~%float32 start_east~%float32 end_north~%float32 end_east~%float32 max_bottom_gradient~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanVehicleSearchPath-request)))
  "Returns full string definition for message of type 'PlanVehicleSearchPath-request"
  (cl:format cl:nil "~%~%bool depth_mode~%~%float32 altitude~%float32 depth~%~%float32 start_north~%float32 start_east~%float32 end_north~%float32 end_east~%float32 max_bottom_gradient~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanVehicleSearchPath-request>))
  (cl:+ 0
     1
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanVehicleSearchPath-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanVehicleSearchPath-request
    (cl:cons ':depth_mode (depth_mode msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':depth (depth msg))
    (cl:cons ':start_north (start_north msg))
    (cl:cons ':start_east (start_east msg))
    (cl:cons ':end_north (end_north msg))
    (cl:cons ':end_east (end_east msg))
    (cl:cons ':max_bottom_gradient (max_bottom_gradient msg))
))
;//! \htmlinclude PlanVehicleSearchPath-response.msg.html

(cl:defclass <PlanVehicleSearchPath-response> (roslisp-msg-protocol:ros-message)
  ((success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_num
    :reader error_num
    :initarg :error_num
    :type cl:integer
    :initform 0)
   (pose
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

(cl:defclass PlanVehicleSearchPath-response (<PlanVehicleSearchPath-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PlanVehicleSearchPath-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PlanVehicleSearchPath-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-srv:<PlanVehicleSearchPath-response> is deprecated: use auv_msgs-srv:PlanVehicleSearchPath-response instead.")))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <PlanVehicleSearchPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:success-val is deprecated.  Use auv_msgs-srv:success instead.")
  (success m))

(cl:ensure-generic-function 'error_num-val :lambda-list '(m))
(cl:defmethod error_num-val ((m <PlanVehicleSearchPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:error_num-val is deprecated.  Use auv_msgs-srv:error_num instead.")
  (error_num m))

(cl:ensure-generic-function 'pose-val :lambda-list '(m))
(cl:defmethod pose-val ((m <PlanVehicleSearchPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:pose-val is deprecated.  Use auv_msgs-srv:pose instead.")
  (pose m))

(cl:ensure-generic-function 'altitude_mode-val :lambda-list '(m))
(cl:defmethod altitude_mode-val ((m <PlanVehicleSearchPath-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:altitude_mode-val is deprecated.  Use auv_msgs-srv:altitude_mode instead.")
  (altitude_mode m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PlanVehicleSearchPath-response>)))
    "Constants for message type '<PlanVehicleSearchPath-response>"
  '((:ERROR_MISSING_BATHYMETRY . 1)
    (:ERROR_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PlanVehicleSearchPath-response)))
    "Constants for message type 'PlanVehicleSearchPath-response"
  '((:ERROR_MISSING_BATHYMETRY . 1)
    (:ERROR_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PlanVehicleSearchPath-response>) ostream)
  "Serializes a message object of type '<PlanVehicleSearchPath-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
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
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PlanVehicleSearchPath-response>) istream)
  "Deserializes a message object of type '<PlanVehicleSearchPath-response>"
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PlanVehicleSearchPath-response>)))
  "Returns string type for a service object of type '<PlanVehicleSearchPath-response>"
  "auv_msgs/PlanVehicleSearchPathResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanVehicleSearchPath-response)))
  "Returns string type for a service object of type 'PlanVehicleSearchPath-response"
  "auv_msgs/PlanVehicleSearchPathResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PlanVehicleSearchPath-response>)))
  "Returns md5sum for a message object of type '<PlanVehicleSearchPath-response>"
  "28b40ee493b99da239fe762d65f76ab9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PlanVehicleSearchPath-response)))
  "Returns md5sum for a message object of type 'PlanVehicleSearchPath-response"
  "28b40ee493b99da239fe762d65f76ab9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PlanVehicleSearchPath-response>)))
  "Returns full string definition for message of type '<PlanVehicleSearchPath-response>"
  (cl:format cl:nil "~%bool success~%int32 error_num~%int32 ERROR_MISSING_BATHYMETRY = 1~%int32 ERROR_OTHER = -1~%~%~%VehiclePose[] pose~%~%~%~%~%~%bool[] altitude_mode~%~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PlanVehicleSearchPath-response)))
  "Returns full string definition for message of type 'PlanVehicleSearchPath-response"
  (cl:format cl:nil "~%bool success~%int32 error_num~%int32 ERROR_MISSING_BATHYMETRY = 1~%int32 ERROR_OTHER = -1~%~%~%VehiclePose[] pose~%~%~%~%~%~%bool[] altitude_mode~%~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PlanVehicleSearchPath-response>))
  (cl:+ 0
     1
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pose) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'altitude_mode) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PlanVehicleSearchPath-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PlanVehicleSearchPath-response
    (cl:cons ':success (success msg))
    (cl:cons ':error_num (error_num msg))
    (cl:cons ':pose (pose msg))
    (cl:cons ':altitude_mode (altitude_mode msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PlanVehicleSearchPath)))
  'PlanVehicleSearchPath-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PlanVehicleSearchPath)))
  'PlanVehicleSearchPath-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PlanVehicleSearchPath)))
  "Returns string type for a service object of type '<PlanVehicleSearchPath>"
  "auv_msgs/PlanVehicleSearchPath")