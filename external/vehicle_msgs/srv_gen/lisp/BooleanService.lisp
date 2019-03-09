; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-srv)


;//! \htmlinclude BooleanService-request.msg.html

(cl:defclass <BooleanService-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BooleanService-request (<BooleanService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BooleanService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BooleanService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-srv:<BooleanService-request> is deprecated: use vehicle_msgs-srv:BooleanService-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <BooleanService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-srv:request-val is deprecated.  Use vehicle_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BooleanService-request>) ostream)
  "Serializes a message object of type '<BooleanService-request>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'request) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BooleanService-request>) istream)
  "Deserializes a message object of type '<BooleanService-request>"
    (cl:setf (cl:slot-value msg 'request) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BooleanService-request>)))
  "Returns string type for a service object of type '<BooleanService-request>"
  "vehicle_msgs/BooleanServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BooleanService-request)))
  "Returns string type for a service object of type 'BooleanService-request"
  "vehicle_msgs/BooleanServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BooleanService-request>)))
  "Returns md5sum for a message object of type '<BooleanService-request>"
  "9a74408ed4558f2d49b9e90001338a55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BooleanService-request)))
  "Returns md5sum for a message object of type 'BooleanService-request"
  "9a74408ed4558f2d49b9e90001338a55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BooleanService-request>)))
  "Returns full string definition for message of type '<BooleanService-request>"
  (cl:format cl:nil "~%~%~%bool request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BooleanService-request)))
  "Returns full string definition for message of type 'BooleanService-request"
  (cl:format cl:nil "~%~%~%bool request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BooleanService-request>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BooleanService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'BooleanService-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude BooleanService-response.msg.html

(cl:defclass <BooleanService-response> (roslisp-msg-protocol:ros-message)
  ((response
    :reader response
    :initarg :response
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass BooleanService-response (<BooleanService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <BooleanService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'BooleanService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-srv:<BooleanService-response> is deprecated: use vehicle_msgs-srv:BooleanService-response instead.")))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <BooleanService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-srv:response-val is deprecated.  Use vehicle_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <BooleanService-response>) ostream)
  "Serializes a message object of type '<BooleanService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'response) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <BooleanService-response>) istream)
  "Deserializes a message object of type '<BooleanService-response>"
    (cl:setf (cl:slot-value msg 'response) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<BooleanService-response>)))
  "Returns string type for a service object of type '<BooleanService-response>"
  "vehicle_msgs/BooleanServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BooleanService-response)))
  "Returns string type for a service object of type 'BooleanService-response"
  "vehicle_msgs/BooleanServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<BooleanService-response>)))
  "Returns md5sum for a message object of type '<BooleanService-response>"
  "9a74408ed4558f2d49b9e90001338a55")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'BooleanService-response)))
  "Returns md5sum for a message object of type 'BooleanService-response"
  "9a74408ed4558f2d49b9e90001338a55")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<BooleanService-response>)))
  "Returns full string definition for message of type '<BooleanService-response>"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'BooleanService-response)))
  "Returns full string definition for message of type 'BooleanService-response"
  (cl:format cl:nil "bool response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <BooleanService-response>))
  (cl:+ 0
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <BooleanService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'BooleanService-response
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'BooleanService)))
  'BooleanService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'BooleanService)))
  'BooleanService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'BooleanService)))
  "Returns string type for a service object of type '<BooleanService>"
  "vehicle_msgs/BooleanService")