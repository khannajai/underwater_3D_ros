; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-msg)


;//! \htmlinclude PilotRequest.msg.html

(cl:defclass <PilotRequest> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (priority
    :reader priority
    :initarg :priority
    :type cl:fixnum
    :initform 0)
   (position
    :reader position
    :initarg :position
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (velocity
    :reader velocity
    :initarg :velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 6 :element-type 'cl:float :initial-element 0.0))
   (limit_velocity
    :reader limit_velocity
    :initarg :limit_velocity
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0))
   (disable_axis
    :reader disable_axis
    :initarg :disable_axis
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 6 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass PilotRequest (<PilotRequest>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PilotRequest>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PilotRequest)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-msg:<PilotRequest> is deprecated: use vehicle_msgs-msg:PilotRequest instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <PilotRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:header-val is deprecated.  Use vehicle_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'priority-val :lambda-list '(m))
(cl:defmethod priority-val ((m <PilotRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:priority-val is deprecated.  Use vehicle_msgs-msg:priority instead.")
  (priority m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <PilotRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:position-val is deprecated.  Use vehicle_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <PilotRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:velocity-val is deprecated.  Use vehicle_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'limit_velocity-val :lambda-list '(m))
(cl:defmethod limit_velocity-val ((m <PilotRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:limit_velocity-val is deprecated.  Use vehicle_msgs-msg:limit_velocity instead.")
  (limit_velocity m))

(cl:ensure-generic-function 'disable_axis-val :lambda-list '(m))
(cl:defmethod disable_axis-val ((m <PilotRequest>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-msg:disable_axis-val is deprecated.  Use vehicle_msgs-msg:disable_axis instead.")
  (disable_axis m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<PilotRequest>)))
    "Constants for message type '<PilotRequest>"
  '((:MIN . -128)
    (:LOW . -64)
    (:NORMAL . 0)
    (:HIGH . 64)
    (:MAX . 127))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'PilotRequest)))
    "Constants for message type 'PilotRequest"
  '((:MIN . -128)
    (:LOW . -64)
    (:NORMAL . 0)
    (:HIGH . 64)
    (:MAX . 127))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PilotRequest>) ostream)
  "Serializes a message object of type '<PilotRequest>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let* ((signed (cl:slot-value msg 'priority)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 256) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    )
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'position))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'velocity))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'limit_velocity))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) ele) ostream))
   (cl:slot-value msg 'disable_axis))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PilotRequest>) istream)
  "Deserializes a message object of type '<PilotRequest>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'priority) (cl:if (cl:< unsigned 128) unsigned (cl:- unsigned 256))))
  (cl:setf (cl:slot-value msg 'position) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'position)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'velocity) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'velocity)))
    (cl:dotimes (i 6)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits)))))
  (cl:setf (cl:slot-value msg 'limit_velocity) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'limit_velocity)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  (cl:setf (cl:slot-value msg 'disable_axis) (cl:make-array 6))
  (cl:let ((vals (cl:slot-value msg 'disable_axis)))
    (cl:dotimes (i 6)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:aref vals i)) (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PilotRequest>)))
  "Returns string type for a message object of type '<PilotRequest>"
  "vehicle_msgs/PilotRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PilotRequest)))
  "Returns string type for a message object of type 'PilotRequest"
  "vehicle_msgs/PilotRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PilotRequest>)))
  "Returns md5sum for a message object of type '<PilotRequest>"
  "1a6a82401ad4d01a163d834e114bb63f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PilotRequest)))
  "Returns md5sum for a message object of type 'PilotRequest"
  "1a6a82401ad4d01a163d834e114bb63f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PilotRequest>)))
  "Returns full string definition for message of type '<PilotRequest>"
  (cl:format cl:nil "# vehicle_msgs/PilotRequest.msg~%#   this message represent the generic pilot request with different modes consumed by the vehicle pilot~%~%# list of priorities~%int8 MIN=-128~%int8 LOW=-64~%int8 NORMAL=0~%int8 HIGH=64~%int8 MAX=127~%~%Header header                      # keep track of time~%int8 priority                      # specify the weight of the request~%~%float32[6] position                # requested position~%float32[6] velocity                # requested velocity~%~%# optional parameters~%#   these values are used in special cases and for specific function only~%#   please be considerate in using this features and if unsure avoid them~%#~%#   using uint16 because uint8 is used as string type in rqt tools~%#~%uint16[6] limit_velocity           # if non-zero will enable speed limit on each DOF using velocity parameter (only position requests)~%uint16[6] disable_axis             # if non-zero will disable on each DOF (used for all requests)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PilotRequest)))
  "Returns full string definition for message of type 'PilotRequest"
  (cl:format cl:nil "# vehicle_msgs/PilotRequest.msg~%#   this message represent the generic pilot request with different modes consumed by the vehicle pilot~%~%# list of priorities~%int8 MIN=-128~%int8 LOW=-64~%int8 NORMAL=0~%int8 HIGH=64~%int8 MAX=127~%~%Header header                      # keep track of time~%int8 priority                      # specify the weight of the request~%~%float32[6] position                # requested position~%float32[6] velocity                # requested velocity~%~%# optional parameters~%#   these values are used in special cases and for specific function only~%#   please be considerate in using this features and if unsure avoid them~%#~%#   using uint16 because uint8 is used as string type in rqt tools~%#~%uint16[6] limit_velocity           # if non-zero will enable speed limit on each DOF using velocity parameter (only position requests)~%uint16[6] disable_axis             # if non-zero will disable on each DOF (used for all requests)~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PilotRequest>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'limit_velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
     0 (cl:reduce #'cl:+ (cl:slot-value msg 'disable_axis) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 2)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PilotRequest>))
  "Converts a ROS message object to a list"
  (cl:list 'PilotRequest
    (cl:cons ':header (header msg))
    (cl:cons ':priority (priority msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':limit_velocity (limit_velocity msg))
    (cl:cons ':disable_axis (disable_axis msg))
))
