; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude InspectionProblem2Goal.msg.html

(cl:defclass <InspectionProblem2Goal> (roslisp-msg-protocol:ros-message)
  ((map_dae_path
    :reader map_dae_path
    :initarg :map_dae_path
    :type cl:string
    :initform "")
   (ips_path
    :reader ips_path
    :initarg :ips_path
    :type cl:string
    :initform ""))
)

(cl:defclass InspectionProblem2Goal (<InspectionProblem2Goal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InspectionProblem2Goal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InspectionProblem2Goal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<InspectionProblem2Goal> is deprecated: use auv_msgs-msg:InspectionProblem2Goal instead.")))

(cl:ensure-generic-function 'map_dae_path-val :lambda-list '(m))
(cl:defmethod map_dae_path-val ((m <InspectionProblem2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:map_dae_path-val is deprecated.  Use auv_msgs-msg:map_dae_path instead.")
  (map_dae_path m))

(cl:ensure-generic-function 'ips_path-val :lambda-list '(m))
(cl:defmethod ips_path-val ((m <InspectionProblem2Goal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:ips_path-val is deprecated.  Use auv_msgs-msg:ips_path instead.")
  (ips_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InspectionProblem2Goal>) ostream)
  "Serializes a message object of type '<InspectionProblem2Goal>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'map_dae_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'map_dae_path))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'ips_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'ips_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InspectionProblem2Goal>) istream)
  "Deserializes a message object of type '<InspectionProblem2Goal>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'map_dae_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'map_dae_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'ips_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'ips_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InspectionProblem2Goal>)))
  "Returns string type for a message object of type '<InspectionProblem2Goal>"
  "auv_msgs/InspectionProblem2Goal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InspectionProblem2Goal)))
  "Returns string type for a message object of type 'InspectionProblem2Goal"
  "auv_msgs/InspectionProblem2Goal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InspectionProblem2Goal>)))
  "Returns md5sum for a message object of type '<InspectionProblem2Goal>"
  "7ac8b80cc26476659591ee4201a53e6a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InspectionProblem2Goal)))
  "Returns md5sum for a message object of type 'InspectionProblem2Goal"
  "7ac8b80cc26476659591ee4201a53e6a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InspectionProblem2Goal>)))
  "Returns full string definition for message of type '<InspectionProblem2Goal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#expected map that we want to inspect~%string map_dae_path~%string ips_path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InspectionProblem2Goal)))
  "Returns full string definition for message of type 'InspectionProblem2Goal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%#expected map that we want to inspect~%string map_dae_path~%string ips_path~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InspectionProblem2Goal>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'map_dae_path))
     4 (cl:length (cl:slot-value msg 'ips_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InspectionProblem2Goal>))
  "Converts a ROS message object to a list"
  (cl:list 'InspectionProblem2Goal
    (cl:cons ':map_dae_path (map_dae_path msg))
    (cl:cons ':ips_path (ips_path msg))
))
