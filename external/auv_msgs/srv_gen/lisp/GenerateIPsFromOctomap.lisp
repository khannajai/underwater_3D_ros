; Auto-generated. Do not edit!


(cl:in-package auv_msgs-srv)


;//! \htmlinclude GenerateIPsFromOctomap-request.msg.html

(cl:defclass <GenerateIPsFromOctomap-request> (roslisp-msg-protocol:ros-message)
  ((octomap_id
    :reader octomap_id
    :initarg :octomap_id
    :type cl:string
    :initform "")
   (inspection_volume
    :reader inspection_volume
    :initarg :inspection_volume
    :type auv_msgs-msg:SphereArray
    :initform (cl:make-instance 'auv_msgs-msg:SphereArray)))
)

(cl:defclass GenerateIPsFromOctomap-request (<GenerateIPsFromOctomap-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateIPsFromOctomap-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateIPsFromOctomap-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-srv:<GenerateIPsFromOctomap-request> is deprecated: use auv_msgs-srv:GenerateIPsFromOctomap-request instead.")))

(cl:ensure-generic-function 'octomap_id-val :lambda-list '(m))
(cl:defmethod octomap_id-val ((m <GenerateIPsFromOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:octomap_id-val is deprecated.  Use auv_msgs-srv:octomap_id instead.")
  (octomap_id m))

(cl:ensure-generic-function 'inspection_volume-val :lambda-list '(m))
(cl:defmethod inspection_volume-val ((m <GenerateIPsFromOctomap-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:inspection_volume-val is deprecated.  Use auv_msgs-srv:inspection_volume instead.")
  (inspection_volume m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateIPsFromOctomap-request>) ostream)
  "Serializes a message object of type '<GenerateIPsFromOctomap-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'octomap_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'octomap_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inspection_volume) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateIPsFromOctomap-request>) istream)
  "Deserializes a message object of type '<GenerateIPsFromOctomap-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'octomap_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'octomap_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inspection_volume) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateIPsFromOctomap-request>)))
  "Returns string type for a service object of type '<GenerateIPsFromOctomap-request>"
  "auv_msgs/GenerateIPsFromOctomapRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateIPsFromOctomap-request)))
  "Returns string type for a service object of type 'GenerateIPsFromOctomap-request"
  "auv_msgs/GenerateIPsFromOctomapRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateIPsFromOctomap-request>)))
  "Returns md5sum for a message object of type '<GenerateIPsFromOctomap-request>"
  "ae1fc104a517cdd815ff2270e013be6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateIPsFromOctomap-request)))
  "Returns md5sum for a message object of type 'GenerateIPsFromOctomap-request"
  "ae1fc104a517cdd815ff2270e013be6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateIPsFromOctomap-request>)))
  "Returns full string definition for message of type '<GenerateIPsFromOctomap-request>"
  (cl:format cl:nil "~%~%string octomap_id~%SphereArray inspection_volume~%~%================================================================================~%MSG: auv_msgs/SphereArray~%Sphere[] spheres~%~%================================================================================~%MSG: auv_msgs/Sphere~%geometry_msgs/Point center~%float64 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateIPsFromOctomap-request)))
  "Returns full string definition for message of type 'GenerateIPsFromOctomap-request"
  (cl:format cl:nil "~%~%string octomap_id~%SphereArray inspection_volume~%~%================================================================================~%MSG: auv_msgs/SphereArray~%Sphere[] spheres~%~%================================================================================~%MSG: auv_msgs/Sphere~%geometry_msgs/Point center~%float64 radius~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateIPsFromOctomap-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'octomap_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inspection_volume))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateIPsFromOctomap-request>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateIPsFromOctomap-request
    (cl:cons ':octomap_id (octomap_id msg))
    (cl:cons ':inspection_volume (inspection_volume msg))
))
;//! \htmlinclude GenerateIPsFromOctomap-response.msg.html

(cl:defclass <GenerateIPsFromOctomap-response> (roslisp-msg-protocol:ros-message)
  ((ips
    :reader ips
    :initarg :ips
    :type auv_msgs-msg:NEDArray
    :initform (cl:make-instance 'auv_msgs-msg:NEDArray)))
)

(cl:defclass GenerateIPsFromOctomap-response (<GenerateIPsFromOctomap-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateIPsFromOctomap-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateIPsFromOctomap-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-srv:<GenerateIPsFromOctomap-response> is deprecated: use auv_msgs-srv:GenerateIPsFromOctomap-response instead.")))

(cl:ensure-generic-function 'ips-val :lambda-list '(m))
(cl:defmethod ips-val ((m <GenerateIPsFromOctomap-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:ips-val is deprecated.  Use auv_msgs-srv:ips instead.")
  (ips m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateIPsFromOctomap-response>) ostream)
  "Serializes a message object of type '<GenerateIPsFromOctomap-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'ips) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateIPsFromOctomap-response>) istream)
  "Deserializes a message object of type '<GenerateIPsFromOctomap-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'ips) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateIPsFromOctomap-response>)))
  "Returns string type for a service object of type '<GenerateIPsFromOctomap-response>"
  "auv_msgs/GenerateIPsFromOctomapResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateIPsFromOctomap-response)))
  "Returns string type for a service object of type 'GenerateIPsFromOctomap-response"
  "auv_msgs/GenerateIPsFromOctomapResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateIPsFromOctomap-response>)))
  "Returns md5sum for a message object of type '<GenerateIPsFromOctomap-response>"
  "ae1fc104a517cdd815ff2270e013be6c")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateIPsFromOctomap-response)))
  "Returns md5sum for a message object of type 'GenerateIPsFromOctomap-response"
  "ae1fc104a517cdd815ff2270e013be6c")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateIPsFromOctomap-response>)))
  "Returns full string definition for message of type '<GenerateIPsFromOctomap-response>"
  (cl:format cl:nil "~%NEDArray ips~%~%~%================================================================================~%MSG: auv_msgs/NEDArray~%NED[] neds~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateIPsFromOctomap-response)))
  "Returns full string definition for message of type 'GenerateIPsFromOctomap-response"
  (cl:format cl:nil "~%NEDArray ips~%~%~%================================================================================~%MSG: auv_msgs/NEDArray~%NED[] neds~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateIPsFromOctomap-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'ips))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateIPsFromOctomap-response>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateIPsFromOctomap-response
    (cl:cons ':ips (ips msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'GenerateIPsFromOctomap)))
  'GenerateIPsFromOctomap-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'GenerateIPsFromOctomap)))
  'GenerateIPsFromOctomap-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateIPsFromOctomap)))
  "Returns string type for a service object of type '<GenerateIPsFromOctomap>"
  "auv_msgs/GenerateIPsFromOctomap")