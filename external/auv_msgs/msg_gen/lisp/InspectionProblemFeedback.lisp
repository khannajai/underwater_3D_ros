; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude InspectionProblemFeedback.msg.html

(cl:defclass <InspectionProblemFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass InspectionProblemFeedback (<InspectionProblemFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InspectionProblemFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InspectionProblemFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<InspectionProblemFeedback> is deprecated: use auv_msgs-msg:InspectionProblemFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InspectionProblemFeedback>) ostream)
  "Serializes a message object of type '<InspectionProblemFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InspectionProblemFeedback>) istream)
  "Deserializes a message object of type '<InspectionProblemFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InspectionProblemFeedback>)))
  "Returns string type for a message object of type '<InspectionProblemFeedback>"
  "auv_msgs/InspectionProblemFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InspectionProblemFeedback)))
  "Returns string type for a message object of type 'InspectionProblemFeedback"
  "auv_msgs/InspectionProblemFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InspectionProblemFeedback>)))
  "Returns md5sum for a message object of type '<InspectionProblemFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InspectionProblemFeedback)))
  "Returns md5sum for a message object of type 'InspectionProblemFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InspectionProblemFeedback>)))
  "Returns full string definition for message of type '<InspectionProblemFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InspectionProblemFeedback)))
  "Returns full string definition for message of type 'InspectionProblemFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InspectionProblemFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InspectionProblemFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'InspectionProblemFeedback
))