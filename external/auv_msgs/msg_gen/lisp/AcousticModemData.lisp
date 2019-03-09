; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude AcousticModemData.msg.html

(cl:defclass <AcousticModemData> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (host
    :reader host
    :initarg :host
    :type cl:fixnum
    :initform 0)
   (payload
    :reader payload
    :initarg :payload
    :type (cl:vector cl:fixnum)
   :initform (cl:make-array 0 :element-type 'cl:fixnum :initial-element 0)))
)

(cl:defclass AcousticModemData (<AcousticModemData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AcousticModemData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AcousticModemData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<AcousticModemData> is deprecated: use auv_msgs-msg:AcousticModemData instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <AcousticModemData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'host-val :lambda-list '(m))
(cl:defmethod host-val ((m <AcousticModemData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:host-val is deprecated.  Use auv_msgs-msg:host instead.")
  (host m))

(cl:ensure-generic-function 'payload-val :lambda-list '(m))
(cl:defmethod payload-val ((m <AcousticModemData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:payload-val is deprecated.  Use auv_msgs-msg:payload instead.")
  (payload m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<AcousticModemData>)))
    "Constants for message type '<AcousticModemData>"
  '((:MAX_PAYLOAD_SIZE . 2048))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'AcousticModemData)))
    "Constants for message type 'AcousticModemData"
  '((:MAX_PAYLOAD_SIZE . 2048))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AcousticModemData>) ostream)
  "Serializes a message object of type '<AcousticModemData>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'host)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'payload))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:write-byte (cl:ldb (cl:byte 8 0) ele) ostream))
   (cl:slot-value msg 'payload))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AcousticModemData>) istream)
  "Deserializes a message object of type '<AcousticModemData>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'host)) (cl:read-byte istream))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'payload) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'payload)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:aref vals i)) (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AcousticModemData>)))
  "Returns string type for a message object of type '<AcousticModemData>"
  "auv_msgs/AcousticModemData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AcousticModemData)))
  "Returns string type for a message object of type 'AcousticModemData"
  "auv_msgs/AcousticModemData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AcousticModemData>)))
  "Returns md5sum for a message object of type '<AcousticModemData>"
  "613d0049a893c39840ae6559051c8700")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AcousticModemData)))
  "Returns md5sum for a message object of type 'AcousticModemData"
  "613d0049a893c39840ae6559051c8700")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AcousticModemData>)))
  "Returns full string definition for message of type '<AcousticModemData>"
  (cl:format cl:nil "# This message carries binary payloads to be transmitted by,~%# and received from, an acoustic modem.~%~%Header header                   # standard message beader~%~%~%uint32 MAX_PAYLOAD_SIZE = 2048  # Size in bytes of largest possible payload~%~%uint8 host            # sending modem ID (ignored if outbound)~%# uint8 receiver      # receiving modem ID~%~%uint8[] payload       # array of bytes to send / received~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AcousticModemData)))
  "Returns full string definition for message of type 'AcousticModemData"
  (cl:format cl:nil "# This message carries binary payloads to be transmitted by,~%# and received from, an acoustic modem.~%~%Header header                   # standard message beader~%~%~%uint32 MAX_PAYLOAD_SIZE = 2048  # Size in bytes of largest possible payload~%~%uint8 host            # sending modem ID (ignored if outbound)~%# uint8 receiver      # receiving modem ID~%~%uint8[] payload       # array of bytes to send / received~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AcousticModemData>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'payload) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 1)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AcousticModemData>))
  "Converts a ROS message object to a list"
  (cl:list 'AcousticModemData
    (cl:cons ':header (header msg))
    (cl:cons ':host (host msg))
    (cl:cons ':payload (payload msg))
))
