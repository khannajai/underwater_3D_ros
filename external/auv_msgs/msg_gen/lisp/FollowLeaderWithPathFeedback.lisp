; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude FollowLeaderWithPathFeedback.msg.html

(cl:defclass <FollowLeaderWithPathFeedback> (roslisp-msg-protocol:ros-message)
  ((num_waypoints
    :reader num_waypoints
    :initarg :num_waypoints
    :type cl:integer
    :initform 0)
   (num_waypoints_completed
    :reader num_waypoints_completed
    :initarg :num_waypoints_completed
    :type cl:integer
    :initform 0))
)

(cl:defclass FollowLeaderWithPathFeedback (<FollowLeaderWithPathFeedback>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <FollowLeaderWithPathFeedback>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'FollowLeaderWithPathFeedback)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<FollowLeaderWithPathFeedback> is deprecated: use auv_msgs-msg:FollowLeaderWithPathFeedback instead.")))

(cl:ensure-generic-function 'num_waypoints-val :lambda-list '(m))
(cl:defmethod num_waypoints-val ((m <FollowLeaderWithPathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:num_waypoints-val is deprecated.  Use auv_msgs-msg:num_waypoints instead.")
  (num_waypoints m))

(cl:ensure-generic-function 'num_waypoints_completed-val :lambda-list '(m))
(cl:defmethod num_waypoints_completed-val ((m <FollowLeaderWithPathFeedback>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:num_waypoints_completed-val is deprecated.  Use auv_msgs-msg:num_waypoints_completed instead.")
  (num_waypoints_completed m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <FollowLeaderWithPathFeedback>) ostream)
  "Serializes a message object of type '<FollowLeaderWithPathFeedback>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_waypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_waypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_waypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_waypoints)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_waypoints_completed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_waypoints_completed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_waypoints_completed)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_waypoints_completed)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <FollowLeaderWithPathFeedback>) istream)
  "Deserializes a message object of type '<FollowLeaderWithPathFeedback>"
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_waypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_waypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_waypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_waypoints)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'num_waypoints_completed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'num_waypoints_completed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'num_waypoints_completed)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'num_waypoints_completed)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<FollowLeaderWithPathFeedback>)))
  "Returns string type for a message object of type '<FollowLeaderWithPathFeedback>"
  "auv_msgs/FollowLeaderWithPathFeedback")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'FollowLeaderWithPathFeedback)))
  "Returns string type for a message object of type 'FollowLeaderWithPathFeedback"
  "auv_msgs/FollowLeaderWithPathFeedback")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<FollowLeaderWithPathFeedback>)))
  "Returns md5sum for a message object of type '<FollowLeaderWithPathFeedback>"
  "3c2cbfd602e6734bdf74aab898c1275b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'FollowLeaderWithPathFeedback)))
  "Returns md5sum for a message object of type 'FollowLeaderWithPathFeedback"
  "3c2cbfd602e6734bdf74aab898c1275b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<FollowLeaderWithPathFeedback>)))
  "Returns full string definition for message of type '<FollowLeaderWithPathFeedback>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%uint32 num_waypoints~%~%uint32 num_waypoints_completed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'FollowLeaderWithPathFeedback)))
  "Returns full string definition for message of type 'FollowLeaderWithPathFeedback"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%uint32 num_waypoints~%~%uint32 num_waypoints_completed~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <FollowLeaderWithPathFeedback>))
  (cl:+ 0
     4
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <FollowLeaderWithPathFeedback>))
  "Converts a ROS message object to a list"
  (cl:list 'FollowLeaderWithPathFeedback
    (cl:cons ':num_waypoints (num_waypoints msg))
    (cl:cons ':num_waypoints_completed (num_waypoints_completed msg))
))