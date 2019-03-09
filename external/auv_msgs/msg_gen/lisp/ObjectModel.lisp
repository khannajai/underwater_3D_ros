; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude ObjectModel.msg.html

(cl:defclass <ObjectModel> (roslisp-msg-protocol:ros-message)
  ((stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0))
)

(cl:defclass ObjectModel (<ObjectModel>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectModel>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectModel)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<ObjectModel> is deprecated: use auv_msgs-msg:ObjectModel instead.")))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <ObjectModel>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:stamp-val is deprecated.  Use auv_msgs-msg:stamp instead.")
  (stamp m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectModel>) ostream)
  "Serializes a message object of type '<ObjectModel>"
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectModel>) istream)
  "Deserializes a message object of type '<ObjectModel>"
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectModel>)))
  "Returns string type for a message object of type '<ObjectModel>"
  "auv_msgs/ObjectModel")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectModel)))
  "Returns string type for a message object of type 'ObjectModel"
  "auv_msgs/ObjectModel")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectModel>)))
  "Returns md5sum for a message object of type '<ObjectModel>"
  "84d365d08d5fc49dde870daba1c7992c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectModel)))
  "Returns md5sum for a message object of type 'ObjectModel"
  "84d365d08d5fc49dde870daba1c7992c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectModel>)))
  "Returns full string definition for message of type '<ObjectModel>"
  (cl:format cl:nil "# TODO: UIB to define this message~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectModel)))
  "Returns full string definition for message of type 'ObjectModel"
  (cl:format cl:nil "# TODO: UIB to define this message~%~%time stamp~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectModel>))
  (cl:+ 0
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectModel>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectModel
    (cl:cons ':stamp (stamp msg))
))
