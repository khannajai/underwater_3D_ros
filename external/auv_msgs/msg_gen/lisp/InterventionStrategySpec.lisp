; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude InterventionStrategySpec.msg.html

(cl:defclass <InterventionStrategySpec> (roslisp-msg-protocol:ros-message)
  ((grasp_frame
    :reader grasp_frame
    :initarg :grasp_frame
    :type geometry_msgs-msg:Transform
    :initform (cl:make-instance 'geometry_msgs-msg:Transform))
   (preshape
    :reader preshape
    :initarg :preshape
    :type cl:integer
    :initform 0))
)

(cl:defclass InterventionStrategySpec (<InterventionStrategySpec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterventionStrategySpec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterventionStrategySpec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<InterventionStrategySpec> is deprecated: use auv_msgs-msg:InterventionStrategySpec instead.")))

(cl:ensure-generic-function 'grasp_frame-val :lambda-list '(m))
(cl:defmethod grasp_frame-val ((m <InterventionStrategySpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:grasp_frame-val is deprecated.  Use auv_msgs-msg:grasp_frame instead.")
  (grasp_frame m))

(cl:ensure-generic-function 'preshape-val :lambda-list '(m))
(cl:defmethod preshape-val ((m <InterventionStrategySpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:preshape-val is deprecated.  Use auv_msgs-msg:preshape instead.")
  (preshape m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<InterventionStrategySpec>)))
    "Constants for message type '<InterventionStrategySpec>"
  '((:PRESHAPE_CYLINDRICAL_PRECISION . 1)
    (:PRESHAPE_CYLINDRICAL_POWER . 2)
    (:PRESHAPE_ONE_FINGER . 3)
    (:PRESHAPE_HOOK . 4))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'InterventionStrategySpec)))
    "Constants for message type 'InterventionStrategySpec"
  '((:PRESHAPE_CYLINDRICAL_PRECISION . 1)
    (:PRESHAPE_CYLINDRICAL_POWER . 2)
    (:PRESHAPE_ONE_FINGER . 3)
    (:PRESHAPE_HOOK . 4))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterventionStrategySpec>) ostream)
  "Serializes a message object of type '<InterventionStrategySpec>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'grasp_frame) ostream)
  (cl:let* ((signed (cl:slot-value msg 'preshape)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterventionStrategySpec>) istream)
  "Deserializes a message object of type '<InterventionStrategySpec>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'grasp_frame) istream)
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'preshape) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterventionStrategySpec>)))
  "Returns string type for a message object of type '<InterventionStrategySpec>"
  "auv_msgs/InterventionStrategySpec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterventionStrategySpec)))
  "Returns string type for a message object of type 'InterventionStrategySpec"
  "auv_msgs/InterventionStrategySpec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterventionStrategySpec>)))
  "Returns md5sum for a message object of type '<InterventionStrategySpec>"
  "3c4b77f7990aea517de29ed69dd3e105")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterventionStrategySpec)))
  "Returns md5sum for a message object of type 'InterventionStrategySpec"
  "3c4b77f7990aea517de29ed69dd3e105")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterventionStrategySpec>)))
  "Returns full string definition for message of type '<InterventionStrategySpec>"
  (cl:format cl:nil "# Specification of the intervention strategy.~%~%# Grasp frame given wrt bounding box origin~%geometry_msgs/Transform grasp_frame~%~%# Hand preshape~%int32 preshape~%int32 PRESHAPE_CYLINDRICAL_PRECISION=1~%int32 PRESHAPE_CYLINDRICAL_POWER=2~%int32 PRESHAPE_ONE_FINGER=3~%int32 PRESHAPE_HOOK=4~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterventionStrategySpec)))
  "Returns full string definition for message of type 'InterventionStrategySpec"
  (cl:format cl:nil "# Specification of the intervention strategy.~%~%# Grasp frame given wrt bounding box origin~%geometry_msgs/Transform grasp_frame~%~%# Hand preshape~%int32 preshape~%int32 PRESHAPE_CYLINDRICAL_PRECISION=1~%int32 PRESHAPE_CYLINDRICAL_POWER=2~%int32 PRESHAPE_ONE_FINGER=3~%int32 PRESHAPE_HOOK=4~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterventionStrategySpec>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'grasp_frame))
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterventionStrategySpec>))
  "Converts a ROS message object to a list"
  (cl:list 'InterventionStrategySpec
    (cl:cons ':grasp_frame (grasp_frame msg))
    (cl:cons ':preshape (preshape msg))
))
