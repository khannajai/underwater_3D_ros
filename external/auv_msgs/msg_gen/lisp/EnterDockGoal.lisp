; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude EnterDockGoal.msg.html

(cl:defclass <EnterDockGoal> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass EnterDockGoal (<EnterDockGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EnterDockGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EnterDockGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<EnterDockGoal> is deprecated: use auv_msgs-msg:EnterDockGoal instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EnterDockGoal>) ostream)
  "Serializes a message object of type '<EnterDockGoal>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EnterDockGoal>) istream)
  "Deserializes a message object of type '<EnterDockGoal>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EnterDockGoal>)))
  "Returns string type for a message object of type '<EnterDockGoal>"
  "auv_msgs/EnterDockGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EnterDockGoal)))
  "Returns string type for a message object of type 'EnterDockGoal"
  "auv_msgs/EnterDockGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EnterDockGoal>)))
  "Returns md5sum for a message object of type '<EnterDockGoal>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EnterDockGoal)))
  "Returns md5sum for a message object of type 'EnterDockGoal"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EnterDockGoal>)))
  "Returns full string definition for message of type '<EnterDockGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Instructs the vehicle to enter the dock. ~%~%# TODO Goal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EnterDockGoal)))
  "Returns full string definition for message of type 'EnterDockGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Instructs the vehicle to enter the dock. ~%~%# TODO Goal~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EnterDockGoal>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EnterDockGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'EnterDockGoal
))
