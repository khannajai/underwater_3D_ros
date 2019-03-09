; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude NEDArray.msg.html

(cl:defclass <NEDArray> (roslisp-msg-protocol:ros-message)
  ((neds
    :reader neds
    :initarg :neds
    :type (cl:vector auv_msgs-msg:NED)
   :initform (cl:make-array 0 :element-type 'auv_msgs-msg:NED :initial-element (cl:make-instance 'auv_msgs-msg:NED))))
)

(cl:defclass NEDArray (<NEDArray>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NEDArray>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NEDArray)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<NEDArray> is deprecated: use auv_msgs-msg:NEDArray instead.")))

(cl:ensure-generic-function 'neds-val :lambda-list '(m))
(cl:defmethod neds-val ((m <NEDArray>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:neds-val is deprecated.  Use auv_msgs-msg:neds instead.")
  (neds m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NEDArray>) ostream)
  "Serializes a message object of type '<NEDArray>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'neds))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'neds))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NEDArray>) istream)
  "Deserializes a message object of type '<NEDArray>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'neds) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'neds)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auv_msgs-msg:NED))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NEDArray>)))
  "Returns string type for a message object of type '<NEDArray>"
  "auv_msgs/NEDArray")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NEDArray)))
  "Returns string type for a message object of type 'NEDArray"
  "auv_msgs/NEDArray")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NEDArray>)))
  "Returns md5sum for a message object of type '<NEDArray>"
  "bf65cc14ab3d146f950d75ee2723b898")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NEDArray)))
  "Returns md5sum for a message object of type 'NEDArray"
  "bf65cc14ab3d146f950d75ee2723b898")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NEDArray>)))
  "Returns full string definition for message of type '<NEDArray>"
  (cl:format cl:nil "NED[] neds~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NEDArray)))
  "Returns full string definition for message of type 'NEDArray"
  (cl:format cl:nil "NED[] neds~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NEDArray>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'neds) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NEDArray>))
  "Converts a ROS message object to a list"
  (cl:list 'NEDArray
    (cl:cons ':neds (neds msg))
))
