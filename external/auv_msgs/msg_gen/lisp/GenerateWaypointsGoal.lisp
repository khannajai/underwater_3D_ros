; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude GenerateWaypointsGoal.msg.html

(cl:defclass <GenerateWaypointsGoal> (roslisp-msg-protocol:ros-message)
  ((occupancy
    :reader occupancy
    :initarg :occupancy
    :type auv_msgs-msg:SphereArray
    :initform (cl:make-instance 'auv_msgs-msg:SphereArray))
   (wp_variable_prefix
    :reader wp_variable_prefix
    :initarg :wp_variable_prefix
    :type cl:string
    :initform "")
   (ip_variable_prefix
    :reader ip_variable_prefix
    :initarg :ip_variable_prefix
    :type cl:string
    :initform ""))
)

(cl:defclass GenerateWaypointsGoal (<GenerateWaypointsGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateWaypointsGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateWaypointsGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<GenerateWaypointsGoal> is deprecated: use auv_msgs-msg:GenerateWaypointsGoal instead.")))

(cl:ensure-generic-function 'occupancy-val :lambda-list '(m))
(cl:defmethod occupancy-val ((m <GenerateWaypointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:occupancy-val is deprecated.  Use auv_msgs-msg:occupancy instead.")
  (occupancy m))

(cl:ensure-generic-function 'wp_variable_prefix-val :lambda-list '(m))
(cl:defmethod wp_variable_prefix-val ((m <GenerateWaypointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:wp_variable_prefix-val is deprecated.  Use auv_msgs-msg:wp_variable_prefix instead.")
  (wp_variable_prefix m))

(cl:ensure-generic-function 'ip_variable_prefix-val :lambda-list '(m))
(cl:defmethod ip_variable_prefix-val ((m <GenerateWaypointsGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:ip_variable_prefix-val is deprecated.  Use auv_msgs-msg:ip_variable_prefix instead.")
  (ip_variable_prefix m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateWaypointsGoal>) ostream)
  "Serializes a message object of type '<GenerateWaypointsGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'occupancy) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'wp_variable_prefix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'wp_variable_prefix))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ip_variable_prefix))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ip_variable_prefix))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateWaypointsGoal>) istream)
  "Deserializes a message object of type '<GenerateWaypointsGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'occupancy) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'wp_variable_prefix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'wp_variable_prefix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ip_variable_prefix) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ip_variable_prefix) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateWaypointsGoal>)))
  "Returns string type for a message object of type '<GenerateWaypointsGoal>"
  "auv_msgs/GenerateWaypointsGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateWaypointsGoal)))
  "Returns string type for a message object of type 'GenerateWaypointsGoal"
  "auv_msgs/GenerateWaypointsGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateWaypointsGoal>)))
  "Returns md5sum for a message object of type '<GenerateWaypointsGoal>"
  "738616ab94abb4608b3a4a1855f69cec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateWaypointsGoal)))
  "Returns md5sum for a message object of type 'GenerateWaypointsGoal"
  "738616ab94abb4608b3a4a1855f69cec")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateWaypointsGoal>)))
  "Returns full string definition for message of type '<GenerateWaypointsGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#areas of observed occupancy that we want to inspect around~%SphereArray occupancy~%#the pddl name to store the result in, WP maps to WP1, WP2 .. WPn~%string wp_variable_prefix~%string ip_variable_prefix~%~%================================================================================~%MSG: auv_msgs/SphereArray~%Sphere[] spheres~%~%================================================================================~%MSG: auv_msgs/Sphere~%geometry_msgs/Point center~%float64 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateWaypointsGoal)))
  "Returns full string definition for message of type 'GenerateWaypointsGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#areas of observed occupancy that we want to inspect around~%SphereArray occupancy~%#the pddl name to store the result in, WP maps to WP1, WP2 .. WPn~%string wp_variable_prefix~%string ip_variable_prefix~%~%================================================================================~%MSG: auv_msgs/SphereArray~%Sphere[] spheres~%~%================================================================================~%MSG: auv_msgs/Sphere~%geometry_msgs/Point center~%float64 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateWaypointsGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'occupancy))
     4 (cl:length (cl:slot-value msg 'wp_variable_prefix))
     4 (cl:length (cl:slot-value msg 'ip_variable_prefix))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateWaypointsGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateWaypointsGoal
    (cl:cons ':occupancy (occupancy msg))
    (cl:cons ':wp_variable_prefix (wp_variable_prefix msg))
    (cl:cons ':ip_variable_prefix (ip_variable_prefix msg))
))
