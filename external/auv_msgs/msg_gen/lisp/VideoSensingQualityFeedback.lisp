; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude VideoSensingQualityFeedback.msg.html

(cl:defclass <VideoSensingQualityFeedback> (roslisp-msg-protocol:ros-message)
  ((contrast
    :reader contrast
    :initarg :contrast
    :type cl:float
    :initform 0.0)
   (blur
    :reader blur
    :initarg :blur
    :type cl:float
    :initform 0.0))
)

(cl:defclass VideoSensingQualityFeedback (<VideoSensingQualityFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <VideoSensingQualityFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'VideoSensingQualityFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<VideoSensingQualityFeedback> is deprecated: use auv_msgs-msg:VideoSensingQualityFeedback instead.")))

(cl:ensure-generic-function 'contrast-val :lambda-list '(m))
(cl:defmethod contrast-val ((m <VideoSensingQualityFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:contrast-val is deprecated.  Use auv_msgs-msg:contrast instead.")
  (contrast m))

(cl:ensure-generic-function 'blur-val :lambda-list '(m))
(cl:defmethod blur-val ((m <VideoSensingQualityFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:blur-val is deprecated.  Use auv_msgs-msg:blur instead.")
  (blur m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <VideoSensingQualityFeedback>) ostream)
  "Serializes a message object of type '<VideoSensingQualityFeedback>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'contrast))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'blur))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <VideoSensingQualityFeedback>) istream)
  "Deserializes a message object of type '<VideoSensingQualityFeedback>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'contrast) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'blur) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<VideoSensingQualityFeedback>)))
  "Returns string type for a message object of type '<VideoSensingQualityFeedback>"
  "auv_msgs/VideoSensingQualityFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'VideoSensingQualityFeedback)))
  "Returns string type for a message object of type 'VideoSensingQualityFeedback"
  "auv_msgs/VideoSensingQualityFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<VideoSensingQualityFeedback>)))
  "Returns md5sum for a message object of type '<VideoSensingQualityFeedback>"
  "522f2e99b12f4ead632baa4df3c5dc25")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'VideoSensingQualityFeedback)))
  "Returns md5sum for a message object of type 'VideoSensingQualityFeedback"
  "522f2e99b12f4ead632baa4df3c5dc25")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<VideoSensingQualityFeedback>)))
  "Returns full string definition for message of type '<VideoSensingQualityFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%float64 contrast~%~%float64 blur~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'VideoSensingQualityFeedback)))
  "Returns full string definition for message of type 'VideoSensingQualityFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%float64 contrast~%~%float64 blur~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <VideoSensingQualityFeedback>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <VideoSensingQualityFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'VideoSensingQualityFeedback
    (cl:cons ':contrast (contrast msg))
    (cl:cons ':blur (blur msg))
))
