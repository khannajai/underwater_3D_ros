; Auto-generated. Do not edit!


(cl:in-package vehicle_msgs-srv)


;//! \htmlinclude DictionaryService-request.msg.html

(cl:defclass <DictionaryService-request> (roslisp-msg-protocol:ros-message)
  ((request
    :reader request
    :initarg :request
    :type (cl:vector diagnostic_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'diagnostic_msgs-msg:KeyValue :initial-element (cl:make-instance 'diagnostic_msgs-msg:KeyValue))))
)

(cl:defclass DictionaryService-request (<DictionaryService-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DictionaryService-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DictionaryService-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-srv:<DictionaryService-request> is deprecated: use vehicle_msgs-srv:DictionaryService-request instead.")))

(cl:ensure-generic-function 'request-val :lambda-list '(m))
(cl:defmethod request-val ((m <DictionaryService-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-srv:request-val is deprecated.  Use vehicle_msgs-srv:request instead.")
  (request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DictionaryService-request>) ostream)
  "Serializes a message object of type '<DictionaryService-request>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'request))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'request))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DictionaryService-request>) istream)
  "Deserializes a message object of type '<DictionaryService-request>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'request) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'request)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'diagnostic_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DictionaryService-request>)))
  "Returns string type for a service object of type '<DictionaryService-request>"
  "vehicle_msgs/DictionaryServiceRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DictionaryService-request)))
  "Returns string type for a service object of type 'DictionaryService-request"
  "vehicle_msgs/DictionaryServiceRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DictionaryService-request>)))
  "Returns md5sum for a message object of type '<DictionaryService-request>"
  "4a0dfb3a808ac3dadb0e9dd765801675")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DictionaryService-request)))
  "Returns md5sum for a message object of type 'DictionaryService-request"
  "4a0dfb3a808ac3dadb0e9dd765801675")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DictionaryService-request>)))
  "Returns full string definition for message of type '<DictionaryService-request>"
  (cl:format cl:nil "~%~%~%diagnostic_msgs/KeyValue[] request~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DictionaryService-request)))
  "Returns full string definition for message of type 'DictionaryService-request"
  (cl:format cl:nil "~%~%~%diagnostic_msgs/KeyValue[] request~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DictionaryService-request>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'request) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DictionaryService-request>))
  "Converts a ROS message object to a list"
  (cl:list 'DictionaryService-request
    (cl:cons ':request (request msg))
))
;//! \htmlinclude DictionaryService-response.msg.html

(cl:defclass <DictionaryService-response> (roslisp-msg-protocol:ros-message)
  ((result
    :reader result
    :initarg :result
    :type cl:boolean
    :initform cl:nil)
   (response
    :reader response
    :initarg :response
    :type (cl:vector diagnostic_msgs-msg:KeyValue)
   :initform (cl:make-array 0 :element-type 'diagnostic_msgs-msg:KeyValue :initial-element (cl:make-instance 'diagnostic_msgs-msg:KeyValue))))
)

(cl:defclass DictionaryService-response (<DictionaryService-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DictionaryService-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DictionaryService-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vehicle_msgs-srv:<DictionaryService-response> is deprecated: use vehicle_msgs-srv:DictionaryService-response instead.")))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <DictionaryService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-srv:result-val is deprecated.  Use vehicle_msgs-srv:result instead.")
  (result m))

(cl:ensure-generic-function 'response-val :lambda-list '(m))
(cl:defmethod response-val ((m <DictionaryService-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vehicle_msgs-srv:response-val is deprecated.  Use vehicle_msgs-srv:response instead.")
  (response m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DictionaryService-response>) ostream)
  "Serializes a message object of type '<DictionaryService-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'result) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'response))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'response))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DictionaryService-response>) istream)
  "Deserializes a message object of type '<DictionaryService-response>"
    (cl:setf (cl:slot-value msg 'result) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'response) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'response)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'diagnostic_msgs-msg:KeyValue))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DictionaryService-response>)))
  "Returns string type for a service object of type '<DictionaryService-response>"
  "vehicle_msgs/DictionaryServiceResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DictionaryService-response)))
  "Returns string type for a service object of type 'DictionaryService-response"
  "vehicle_msgs/DictionaryServiceResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DictionaryService-response>)))
  "Returns md5sum for a message object of type '<DictionaryService-response>"
  "4a0dfb3a808ac3dadb0e9dd765801675")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DictionaryService-response)))
  "Returns md5sum for a message object of type 'DictionaryService-response"
  "4a0dfb3a808ac3dadb0e9dd765801675")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DictionaryService-response>)))
  "Returns full string definition for message of type '<DictionaryService-response>"
  (cl:format cl:nil "~%bool result~%diagnostic_msgs/KeyValue[] response~%~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DictionaryService-response)))
  "Returns full string definition for message of type 'DictionaryService-response"
  (cl:format cl:nil "~%bool result~%diagnostic_msgs/KeyValue[] response~%~%~%================================================================================~%MSG: diagnostic_msgs/KeyValue~%string key # what to label this value when viewing~%string value # a value to track over time~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DictionaryService-response>))
  (cl:+ 0
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'response) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DictionaryService-response>))
  "Converts a ROS message object to a list"
  (cl:list 'DictionaryService-response
    (cl:cons ':result (result msg))
    (cl:cons ':response (response msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'DictionaryService)))
  'DictionaryService-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'DictionaryService)))
  'DictionaryService-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DictionaryService)))
  "Returns string type for a service object of type '<DictionaryService>"
  "vehicle_msgs/DictionaryService")