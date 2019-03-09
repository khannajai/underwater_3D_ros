; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude Bool6Axis.msg.html

(cl:defclass <Bool6Axis> (roslisp-msg-protocol:ros-message)
  ((x
    :reader x
    :initarg :x
    :type cl:boolean
    :initform cl:nil)
   (y
    :reader y
    :initarg :y
    :type cl:boolean
    :initform cl:nil)
   (z
    :reader z
    :initarg :z
    :type cl:boolean
    :initform cl:nil)
   (roll
    :reader roll
    :initarg :roll
    :type cl:boolean
    :initform cl:nil)
   (pitch
    :reader pitch
    :initarg :pitch
    :type cl:boolean
    :initform cl:nil)
   (yaw
    :reader yaw
    :initarg :yaw
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass Bool6Axis (<Bool6Axis>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Bool6Axis>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Bool6Axis)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<Bool6Axis> is deprecated: use auv_msgs-msg:Bool6Axis instead.")))

(cl:ensure-generic-function 'x-val :lambda-list '(m))
(cl:defmethod x-val ((m <Bool6Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:x-val is deprecated.  Use auv_msgs-msg:x instead.")
  (x m))

(cl:ensure-generic-function 'y-val :lambda-list '(m))
(cl:defmethod y-val ((m <Bool6Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:y-val is deprecated.  Use auv_msgs-msg:y instead.")
  (y m))

(cl:ensure-generic-function 'z-val :lambda-list '(m))
(cl:defmethod z-val ((m <Bool6Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:z-val is deprecated.  Use auv_msgs-msg:z instead.")
  (z m))

(cl:ensure-generic-function 'roll-val :lambda-list '(m))
(cl:defmethod roll-val ((m <Bool6Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:roll-val is deprecated.  Use auv_msgs-msg:roll instead.")
  (roll m))

(cl:ensure-generic-function 'pitch-val :lambda-list '(m))
(cl:defmethod pitch-val ((m <Bool6Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:pitch-val is deprecated.  Use auv_msgs-msg:pitch instead.")
  (pitch m))

(cl:ensure-generic-function 'yaw-val :lambda-list '(m))
(cl:defmethod yaw-val ((m <Bool6Axis>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:yaw-val is deprecated.  Use auv_msgs-msg:yaw instead.")
  (yaw m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Bool6Axis>) ostream)
  "Serializes a message object of type '<Bool6Axis>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'x) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'y) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'z) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'roll) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'pitch) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'yaw) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Bool6Axis>) istream)
  "Deserializes a message object of type '<Bool6Axis>"
    (cl:setf (cl:slot-value msg 'x) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'y) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'z) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'roll) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'pitch) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'yaw) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Bool6Axis>)))
  "Returns string type for a message object of type '<Bool6Axis>"
  "auv_msgs/Bool6Axis")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Bool6Axis)))
  "Returns string type for a message object of type 'Bool6Axis"
  "auv_msgs/Bool6Axis")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Bool6Axis>)))
  "Returns md5sum for a message object of type '<Bool6Axis>"
  "38f836659cedbc069e466741ffb25422")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Bool6Axis)))
  "Returns md5sum for a message object of type 'Bool6Axis"
  "38f836659cedbc069e466741ffb25422")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Bool6Axis>)))
  "Returns full string definition for message of type '<Bool6Axis>"
  (cl:format cl:nil "bool x~%bool y~%bool z~%bool roll~%bool pitch~%bool yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Bool6Axis)))
  "Returns full string definition for message of type 'Bool6Axis"
  (cl:format cl:nil "bool x~%bool y~%bool z~%bool roll~%bool pitch~%bool yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Bool6Axis>))
  (cl:+ 0
     1
     1
     1
     1
     1
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Bool6Axis>))
  "Converts a ROS message object to a list"
  (cl:list 'Bool6Axis
    (cl:cons ':x (x msg))
    (cl:cons ':y (y msg))
    (cl:cons ':z (z msg))
    (cl:cons ':roll (roll msg))
    (cl:cons ':pitch (pitch msg))
    (cl:cons ':yaw (yaw msg))
))
