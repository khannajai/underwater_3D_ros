; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude SonarInspectFeedback.msg.html

(cl:defclass <SonarInspectFeedback> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass SonarInspectFeedback (<SonarInspectFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarInspectFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarInspectFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<SonarInspectFeedback> is deprecated: use auv_msgs-msg:SonarInspectFeedback instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarInspectFeedback>) ostream)
  "Serializes a message object of type '<SonarInspectFeedback>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarInspectFeedback>) istream)
  "Deserializes a message object of type '<SonarInspectFeedback>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarInspectFeedback>)))
  "Returns string type for a message object of type '<SonarInspectFeedback>"
  "auv_msgs/SonarInspectFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarInspectFeedback)))
  "Returns string type for a message object of type 'SonarInspectFeedback"
  "auv_msgs/SonarInspectFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarInspectFeedback>)))
  "Returns md5sum for a message object of type '<SonarInspectFeedback>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarInspectFeedback)))
  "Returns md5sum for a message object of type 'SonarInspectFeedback"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarInspectFeedback>)))
  "Returns full string definition for message of type '<SonarInspectFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarInspectFeedback)))
  "Returns full string definition for message of type 'SonarInspectFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarInspectFeedback>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarInspectFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarInspectFeedback
))
