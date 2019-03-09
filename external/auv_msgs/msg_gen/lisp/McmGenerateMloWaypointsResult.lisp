; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude McmGenerateMloWaypointsResult.msg.html

(cl:defclass <McmGenerateMloWaypointsResult> (roslisp-msg-protocol:ros-message)
  ((waypoints
    :reader waypoints
    :initarg :waypoints
    :type auv_msgs-msg:VehiclePoseArray
    :initform (cl:make-instance 'auv_msgs-msg:VehiclePoseArray))
   (success
    :reader success
    :initarg :success
    :type cl:boolean
    :initform cl:nil)
   (error_num
    :reader error_num
    :initarg :error_num
    :type cl:integer
    :initform 0)
   (error_string
    :reader error_string
    :initarg :error_string
    :type cl:string
    :initform ""))
)

(cl:defclass McmGenerateMloWaypointsResult (<McmGenerateMloWaypointsResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <McmGenerateMloWaypointsResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'McmGenerateMloWaypointsResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<McmGenerateMloWaypointsResult> is deprecated: use auv_msgs-msg:McmGenerateMloWaypointsResult instead.")))

(cl:ensure-generic-function 'waypoints-val :lambda-list '(m))
(cl:defmethod waypoints-val ((m <McmGenerateMloWaypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:waypoints-val is deprecated.  Use auv_msgs-msg:waypoints instead.")
  (waypoints m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <McmGenerateMloWaypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:success-val is deprecated.  Use auv_msgs-msg:success instead.")
  (success m))

(cl:ensure-generic-function 'error_num-val :lambda-list '(m))
(cl:defmethod error_num-val ((m <McmGenerateMloWaypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:error_num-val is deprecated.  Use auv_msgs-msg:error_num instead.")
  (error_num m))

(cl:ensure-generic-function 'error_string-val :lambda-list '(m))
(cl:defmethod error_string-val ((m <McmGenerateMloWaypointsResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:error_string-val is deprecated.  Use auv_msgs-msg:error_string instead.")
  (error_string m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<McmGenerateMloWaypointsResult>)))
    "Constants for message type '<McmGenerateMloWaypointsResult>"
  '((:ERROR_LOST_NAV . 1)
    (:ERROR_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'McmGenerateMloWaypointsResult)))
    "Constants for message type 'McmGenerateMloWaypointsResult"
  '((:ERROR_LOST_NAV . 1)
    (:ERROR_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <McmGenerateMloWaypointsResult>) ostream)
  "Serializes a message object of type '<McmGenerateMloWaypointsResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoints) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'success) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <McmGenerateMloWaypointsResult>) istream)
  "Deserializes a message object of type '<McmGenerateMloWaypointsResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoints) istream)
    (cl:setf (cl:slot-value msg 'success) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<McmGenerateMloWaypointsResult>)))
  "Returns string type for a message object of type '<McmGenerateMloWaypointsResult>"
  "auv_msgs/McmGenerateMloWaypointsResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'McmGenerateMloWaypointsResult)))
  "Returns string type for a message object of type 'McmGenerateMloWaypointsResult"
  "auv_msgs/McmGenerateMloWaypointsResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<McmGenerateMloWaypointsResult>)))
  "Returns md5sum for a message object of type '<McmGenerateMloWaypointsResult>"
  "567252045b1cbceaafc1fc3f6619e651")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'McmGenerateMloWaypointsResult)))
  "Returns md5sum for a message object of type 'McmGenerateMloWaypointsResult"
  "567252045b1cbceaafc1fc3f6619e651")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<McmGenerateMloWaypointsResult>)))
  "Returns full string definition for message of type '<McmGenerateMloWaypointsResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#total waypoints suggested~%VehiclePoseArray waypoints~%~%bool success~%~%# Error number if action failed.~%int32 error_num~%int32 ERROR_LOST_NAV=1~%int32 ERROR_OTHER=-1~%string error_string~%~%~%================================================================================~%MSG: auv_msgs/VehiclePoseArray~%Header header~%VehiclePose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'McmGenerateMloWaypointsResult)))
  "Returns full string definition for message of type 'McmGenerateMloWaypointsResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#total waypoints suggested~%VehiclePoseArray waypoints~%~%bool success~%~%# Error number if action failed.~%int32 error_num~%int32 ERROR_LOST_NAV=1~%int32 ERROR_OTHER=-1~%string error_string~%~%~%================================================================================~%MSG: auv_msgs/VehiclePoseArray~%Header header~%VehiclePose[] poses~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <McmGenerateMloWaypointsResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoints))
     1
     4
     4 (cl:length (cl:slot-value msg 'error_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <McmGenerateMloWaypointsResult>))
  "Converts a ROS message object to a list"
  (cl:list 'McmGenerateMloWaypointsResult
    (cl:cons ':waypoints (waypoints msg))
    (cl:cons ':success (success msg))
    (cl:cons ':error_num (error_num msg))
    (cl:cons ':error_string (error_string msg))
))
