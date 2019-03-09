; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-srv)


;//! \htmlinclude FloatService-request.msg.html

(cl:defclass <FloatService-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FloatService-request (<FloatService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FloatService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FloatService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-srv:<FloatService-request> is deprecated: use vehicle_msgs-srv:FloatService-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <FloatService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-srv:request-val is deprecated.  Use vehicle_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FloatService-request>) ostream)
  "Serializes a message object of type '<FloatService-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FloatService-request>) istream)
  "Deserializes a message object of type '<FloatService-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'request) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'request)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FloatService-request>)))
  "Returns string type for a service object of type '<FloatService-request>"
  "vehicle_msgs/FloatServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FloatService-request)))
  "Returns string type for a service object of type 'FloatService-request"
  "vehicle_msgs/FloatServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FloatService-request>)))
  "Returns md5sum for a message object of type '<FloatService-request>"
  "bffed9851025f3aed64f7ec7e737ce26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FloatService-request)))
  "Returns md5sum for a message object of type 'FloatService-request"
  "bffed9851025f3aed64f7ec7e737ce26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FloatService-request>)))
  "Returns full string definition for message of type '<FloatService-request>"
  (cl:format cl:nil "~%~%~%float32[] request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FloatService-request)))
  "Returns full string definition for message of type 'FloatService-request"
  (cl:format cl:nil "~%~%~%float32[] request~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FloatService-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'request) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FloatService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'FloatService-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude FloatService-response.msg.html

(cl:defclass <FloatService-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (response
    :reader response
    :initarg :response
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass FloatService-response (<FloatService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FloatService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FloatService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-srv:<FloatService-response> is deprecated: use vehicle_msgs-srv:FloatService-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <FloatService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-srv:result-val is deprecated.  Use vehicle_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <FloatService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-srv:response-val is deprecated.  Use vehicle_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FloatService-response>) ostream)
  "Serializes a message object of type '<FloatService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FloatService-response>) istream)
  "Deserializes a message object of type '<FloatService-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'response) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'response)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FloatService-response>)))
  "Returns string type for a service object of type '<FloatService-response>"
  "vehicle_msgs/FloatServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FloatService-response)))
  "Returns string type for a service object of type 'FloatService-response"
  "vehicle_msgs/FloatServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FloatService-response>)))
  "Returns md5sum for a message object of type '<FloatService-response>"
  "bffed9851025f3aed64f7ec7e737ce26")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FloatService-response)))
  "Returns md5sum for a message object of type 'FloatService-response"
  "bffed9851025f3aed64f7ec7e737ce26")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FloatService-response>)))
  "Returns full string definition for message of type '<FloatService-response>"
  (cl:format cl:nil "~%bool result~%float32[] response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FloatService-response)))
  "Returns full string definition for message of type 'FloatService-response"
  (cl:format cl:nil "~%bool result~%float32[] response~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FloatService-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'response) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FloatService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'FloatService-response
    (cl:cons ':result (result msg))
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'FloatService)))
  'FloatService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'FloatService)))
  'FloatService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FloatService)))
  "Returns string type for a service object of type '<FloatService>"
  "vehicle_msgs/FloatService")