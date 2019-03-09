; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude newbvtSonarOutputParam.msg.html

(cl:defclass <newbvtSonarOutputParam> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (originRow
    :reader originRow
    :initarg :originRow
    :type cl:float
    :initform 0.0)
   (originCol
    :reader originCol
    :initarg :originCol
    :type cl:float
    :initform 0.0)
   (minRange
    :reader minRange
    :initarg :minRange
    :type cl:float
    :initform 0.0)
   (maxRange
    :reader maxRange
    :initarg :maxRange
    :type cl:float
    :initform 0.0)
   (minFOV
    :reader minFOV
    :initarg :minFOV
    :type cl:float
    :initform 0.0)
   (maxFOV
    :reader maxFOV
    :initarg :maxFOV
    :type cl:float
    :initform 0.0)
   (imgWidth
    :reader imgWidth
    :initarg :imgWidth
    :type cl:float
    :initform 0.0)
   (imgHeight
    :reader imgHeight
    :initarg :imgHeight
    :type cl:float
    :initform 0.0))
)

(cl:defclass newbvtSonarOutputParam (<newbvtSonarOutputParam>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <newbvtSonarOutputParam>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'newbvtSonarOutputParam)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<newbvtSonarOutputParam> is deprecated: use auv_msgs-msg:newbvtSonarOutputParam instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <newbvtSonarOutputParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'originRow-val :lambda-list '(m))
(cl:defmethod originRow-val ((m <newbvtSonarOutputParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:originRow-val is deprecated.  Use auv_msgs-msg:originRow instead.")
  (originRow m))

(cl:ensure-generic-function 'originCol-val :lambda-list '(m))
(cl:defmethod originCol-val ((m <newbvtSonarOutputParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:originCol-val is deprecated.  Use auv_msgs-msg:originCol instead.")
  (originCol m))

(cl:ensure-generic-function 'minRange-val :lambda-list '(m))
(cl:defmethod minRange-val ((m <newbvtSonarOutputParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:minRange-val is deprecated.  Use auv_msgs-msg:minRange instead.")
  (minRange m))

(cl:ensure-generic-function 'maxRange-val :lambda-list '(m))
(cl:defmethod maxRange-val ((m <newbvtSonarOutputParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:maxRange-val is deprecated.  Use auv_msgs-msg:maxRange instead.")
  (maxRange m))

(cl:ensure-generic-function 'minFOV-val :lambda-list '(m))
(cl:defmethod minFOV-val ((m <newbvtSonarOutputParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:minFOV-val is deprecated.  Use auv_msgs-msg:minFOV instead.")
  (minFOV m))

(cl:ensure-generic-function 'maxFOV-val :lambda-list '(m))
(cl:defmethod maxFOV-val ((m <newbvtSonarOutputParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:maxFOV-val is deprecated.  Use auv_msgs-msg:maxFOV instead.")
  (maxFOV m))

(cl:ensure-generic-function 'imgWidth-val :lambda-list '(m))
(cl:defmethod imgWidth-val ((m <newbvtSonarOutputParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:imgWidth-val is deprecated.  Use auv_msgs-msg:imgWidth instead.")
  (imgWidth m))

(cl:ensure-generic-function 'imgHeight-val :lambda-list '(m))
(cl:defmethod imgHeight-val ((m <newbvtSonarOutputParam>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:imgHeight-val is deprecated.  Use auv_msgs-msg:imgHeight instead.")
  (imgHeight m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <newbvtSonarOutputParam>) ostream)
  "Serializes a message object of type '<newbvtSonarOutputParam>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'originRow))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'originCol))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxRange))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'minFOV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'maxFOV))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'imgWidth))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'imgHeight))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <newbvtSonarOutputParam>) istream)
  "Deserializes a message object of type '<newbvtSonarOutputParam>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'originRow) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'originCol) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minRange) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxRange) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'minFOV) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'maxFOV) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'imgWidth) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'imgHeight) (roslisp-utils:decode-single-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<newbvtSonarOutputParam>)))
  "Returns string type for a message object of type '<newbvtSonarOutputParam>"
  "auv_msgs/newbvtSonarOutputParam")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'newbvtSonarOutputParam)))
  "Returns string type for a message object of type 'newbvtSonarOutputParam"
  "auv_msgs/newbvtSonarOutputParam")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<newbvtSonarOutputParam>)))
  "Returns md5sum for a message object of type '<newbvtSonarOutputParam>"
  "b02b060bb92976afbaf327dd6a53e51c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'newbvtSonarOutputParam)))
  "Returns md5sum for a message object of type 'newbvtSonarOutputParam"
  "b02b060bb92976afbaf327dd6a53e51c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<newbvtSonarOutputParam>)))
  "Returns full string definition for message of type '<newbvtSonarOutputParam>"
  (cl:format cl:nil "#represents outputs of bvt sonar accompanying the sonar image~%~%#timestamp, FRAME OF REFERENCE!~%Header header~%#data~%float32 originRow~%float32 originCol~%float32 minRange~%float32 maxRange~%float32 minFOV~%float32 maxFOV~%float32 imgWidth~%float32 imgHeight~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'newbvtSonarOutputParam)))
  "Returns full string definition for message of type 'newbvtSonarOutputParam"
  (cl:format cl:nil "#represents outputs of bvt sonar accompanying the sonar image~%~%#timestamp, FRAME OF REFERENCE!~%Header header~%#data~%float32 originRow~%float32 originCol~%float32 minRange~%float32 maxRange~%float32 minFOV~%float32 maxFOV~%float32 imgWidth~%float32 imgHeight~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <newbvtSonarOutputParam>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4
     4
     4
     4
     4
     4
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <newbvtSonarOutputParam>))
  "Converts a ROS message object to a list"
  (cl:list 'newbvtSonarOutputParam
    (cl:cons ':header (header msg))
    (cl:cons ':originRow (originRow msg))
    (cl:cons ':originCol (originCol msg))
    (cl:cons ':minRange (minRange msg))
    (cl:cons ':maxRange (maxRange msg))
    (cl:cons ':minFOV (minFOV msg))
    (cl:cons ':maxFOV (maxFOV msg))
    (cl:cons ':imgWidth (imgWidth msg))
    (cl:cons ':imgHeight (imgHeight msg))
))
