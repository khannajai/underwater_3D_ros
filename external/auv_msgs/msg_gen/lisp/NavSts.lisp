; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude NavSts.msg.html

(cl:defclass <NavSts> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (global_position
    :reader global_position
    :initarg :global_position
    :type auv_msgs-msg:DecimalLatLon
    :initform (cl:make-instance 'auv_msgs-msg:DecimalLatLon))
   (origin
    :reader origin
    :initarg :origin
    :type auv_msgs-msg:DecimalLatLon
    :initform (cl:make-instance 'auv_msgs-msg:DecimalLatLon))
   (position
    :reader position
    :initarg :position
    :type auv_msgs-msg:NED
    :initform (cl:make-instance 'auv_msgs-msg:NED))
   (altitude
    :reader altitude
    :initarg :altitude
    :type cl:float
    :initform 0.0)
   (body_velocity
    :reader body_velocity
    :initarg :body_velocity
    :type geometry_msgs-msg:Point
    :initform (cl:make-instance 'geometry_msgs-msg:Point))
   (orientation
    :reader orientation
    :initarg :orientation
    :type auv_msgs-msg:RPY
    :initform (cl:make-instance 'auv_msgs-msg:RPY))
   (orientation_rate
    :reader orientation_rate
    :initarg :orientation_rate
    :type auv_msgs-msg:RPY
    :initform (cl:make-instance 'auv_msgs-msg:RPY))
   (position_variance
    :reader position_variance
    :initarg :position_variance
    :type auv_msgs-msg:NED
    :initform (cl:make-instance 'auv_msgs-msg:NED))
   (orientation_variance
    :reader orientation_variance
    :initarg :orientation_variance
    :type auv_msgs-msg:RPY
    :initform (cl:make-instance 'auv_msgs-msg:RPY))
   (status
    :reader status
    :initarg :status
    :type cl:fixnum
    :initform 0))
)

(cl:defclass NavSts (<NavSts>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NavSts>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NavSts)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<NavSts> is deprecated: use auv_msgs-msg:NavSts instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'global_position-val :lambda-list '(m))
(cl:defmethod global_position-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:global_position-val is deprecated.  Use auv_msgs-msg:global_position instead.")
  (global_position m))

(cl:ensure-generic-function 'origin-val :lambda-list '(m))
(cl:defmethod origin-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:origin-val is deprecated.  Use auv_msgs-msg:origin instead.")
  (origin m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:position-val is deprecated.  Use auv_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'altitude-val :lambda-list '(m))
(cl:defmethod altitude-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:altitude-val is deprecated.  Use auv_msgs-msg:altitude instead.")
  (altitude m))

(cl:ensure-generic-function 'body_velocity-val :lambda-list '(m))
(cl:defmethod body_velocity-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:body_velocity-val is deprecated.  Use auv_msgs-msg:body_velocity instead.")
  (body_velocity m))

(cl:ensure-generic-function 'orientation-val :lambda-list '(m))
(cl:defmethod orientation-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:orientation-val is deprecated.  Use auv_msgs-msg:orientation instead.")
  (orientation m))

(cl:ensure-generic-function 'orientation_rate-val :lambda-list '(m))
(cl:defmethod orientation_rate-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:orientation_rate-val is deprecated.  Use auv_msgs-msg:orientation_rate instead.")
  (orientation_rate m))

(cl:ensure-generic-function 'position_variance-val :lambda-list '(m))
(cl:defmethod position_variance-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:position_variance-val is deprecated.  Use auv_msgs-msg:position_variance instead.")
  (position_variance m))

(cl:ensure-generic-function 'orientation_variance-val :lambda-list '(m))
(cl:defmethod orientation_variance-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:orientation_variance-val is deprecated.  Use auv_msgs-msg:orientation_variance instead.")
  (orientation_variance m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <NavSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:status-val is deprecated.  Use auv_msgs-msg:status instead.")
  (status m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<NavSts>)))
    "Constants for message type '<NavSts>"
  '((:STATUS_FAULT . 0)
    (:STATUS_LOCAL_FRAME_OK . 1)
    (:STATUS_GLOBAL_FRAME_OK . 2)
    (:STATUS_POSITION_OK . 3)
    (:STATUS_VELOCITY_OK . 4)
    (:STATUS_ESTIMATION_ERROR_OK . 8)
    (:STATUS_ALL_OK . 15))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'NavSts)))
    "Constants for message type 'NavSts"
  '((:STATUS_FAULT . 0)
    (:STATUS_LOCAL_FRAME_OK . 1)
    (:STATUS_GLOBAL_FRAME_OK . 2)
    (:STATUS_POSITION_OK . 3)
    (:STATUS_VELOCITY_OK . 4)
    (:STATUS_ESTIMATION_ERROR_OK . 8)
    (:STATUS_ALL_OK . 15))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NavSts>) ostream)
  "Serializes a message object of type '<NavSts>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'global_position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'origin) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'altitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'body_velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_rate) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_variance) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'orientation_variance) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NavSts>) istream)
  "Deserializes a message object of type '<NavSts>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'global_position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'origin) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'altitude) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'body_velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_rate) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_variance) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'orientation_variance) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'status)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NavSts>)))
  "Returns string type for a message object of type '<NavSts>"
  "auv_msgs/NavSts")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NavSts)))
  "Returns string type for a message object of type 'NavSts"
  "auv_msgs/NavSts")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NavSts>)))
  "Returns md5sum for a message object of type '<NavSts>"
  "4ce9d43f0d458ab76be6de8266700753")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NavSts)))
  "Returns md5sum for a message object of type 'NavSts"
  "4ce9d43f0d458ab76be6de8266700753")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NavSts>)))
  "Returns full string definition for message of type '<NavSts>"
  (cl:format cl:nil "# Sent by the navigator at 5-10 Hz.~%~%Header 	header~%~%DecimalLatLon global_position~%DecimalLatLon origin~%~%# NED position and altitude in metres. ~%NED position~%float32 altitude~%~%# Body velocities in metres/sec.~%geometry_msgs/Point body_velocity~%~%# Orientation and orientation rate are in radians and radians/sec~%RPY orientation~%RPY orientation_rate~%~%# Variances for position and orientation~%NED position_variance~%RPY orientation_variance~%~%# Status and associated constants (flags)~%uint8 status~%uint8 STATUS_FAULT = 0~%uint8 STATUS_LOCAL_FRAME_OK = 1~%uint8 STATUS_GLOBAL_FRAME_OK = 2~%uint8 STATUS_POSITION_OK = 3~%uint8 STATUS_VELOCITY_OK = 4~%uint8 STATUS_ESTIMATION_ERROR_OK  = 8~%uint8 STATUS_ALL_OK = 15~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/DecimalLatLon~%# Latitude and longitude, in decimal form.~%~%float64 latitude~%float64 longitude~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NavSts)))
  "Returns full string definition for message of type 'NavSts"
  (cl:format cl:nil "# Sent by the navigator at 5-10 Hz.~%~%Header 	header~%~%DecimalLatLon global_position~%DecimalLatLon origin~%~%# NED position and altitude in metres. ~%NED position~%float32 altitude~%~%# Body velocities in metres/sec.~%geometry_msgs/Point body_velocity~%~%# Orientation and orientation rate are in radians and radians/sec~%RPY orientation~%RPY orientation_rate~%~%# Variances for position and orientation~%NED position_variance~%RPY orientation_variance~%~%# Status and associated constants (flags)~%uint8 status~%uint8 STATUS_FAULT = 0~%uint8 STATUS_LOCAL_FRAME_OK = 1~%uint8 STATUS_GLOBAL_FRAME_OK = 2~%uint8 STATUS_POSITION_OK = 3~%uint8 STATUS_VELOCITY_OK = 4~%uint8 STATUS_ESTIMATION_ERROR_OK  = 8~%uint8 STATUS_ALL_OK = 15~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/DecimalLatLon~%# Latitude and longitude, in decimal form.~%~%float64 latitude~%float64 longitude~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NavSts>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'global_position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'origin))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'body_velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_rate))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_variance))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'orientation_variance))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NavSts>))
  "Converts a ROS message object to a list"
  (cl:list 'NavSts
    (cl:cons ':header (header msg))
    (cl:cons ':global_position (global_position msg))
    (cl:cons ':origin (origin msg))
    (cl:cons ':position (position msg))
    (cl:cons ':altitude (altitude msg))
    (cl:cons ':body_velocity (body_velocity msg))
    (cl:cons ':orientation (orientation msg))
    (cl:cons ':orientation_rate (orientation_rate msg))
    (cl:cons ':position_variance (position_variance msg))
    (cl:cons ':orientation_variance (orientation_variance msg))
    (cl:cons ':status (status msg))
))
