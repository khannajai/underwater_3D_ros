; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude WaypointSts.msg.html

(cl:defclass <WaypointSts> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal
    :reader goal
    :initarg :goal
    :type auv_msgs-msg:GoalDescriptor
    :initform (cl:make-instance 'auv_msgs-msg:GoalDescriptor))
   (achieved
    :reader achieved
    :initarg :achieved
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WaypointSts (<WaypointSts>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WaypointSts>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WaypointSts)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<WaypointSts> is deprecated: use auv_msgs-msg:WaypointSts instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <WaypointSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <WaypointSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:goal-val is deprecated.  Use auv_msgs-msg:goal instead.")
  (goal m))

(cl:ensure-generic-function 'achieved-val :lambda-list '(m))
(cl:defmethod achieved-val ((m <WaypointSts>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:achieved-val is deprecated.  Use auv_msgs-msg:achieved instead.")
  (achieved m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WaypointSts>) ostream)
  "Serializes a message object of type '<WaypointSts>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'achieved) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WaypointSts>) istream)
  "Deserializes a message object of type '<WaypointSts>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
    (cl:setf (cl:slot-value msg 'achieved) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WaypointSts>)))
  "Returns string type for a message object of type '<WaypointSts>"
  "auv_msgs/WaypointSts")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WaypointSts)))
  "Returns string type for a message object of type 'WaypointSts"
  "auv_msgs/WaypointSts")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WaypointSts>)))
  "Returns md5sum for a message object of type '<WaypointSts>"
  "52121c2ea15ce1a73bc5b64465141d80")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WaypointSts)))
  "Returns md5sum for a message object of type 'WaypointSts"
  "52121c2ea15ce1a73bc5b64465141d80")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WaypointSts>)))
  "Returns full string definition for message of type '<WaypointSts>"
  (cl:format cl:nil "# This message acknowledges the active waypoint request ~%# (Stay/Body/World/Global) and indicates if the vehicle is in position within~%# the requested tolerances. Immediately sent by the pilot in response to each~%# waypoint request message, not sent periodically.~%~%Header header~%~%# Common waypoint details~%GoalDescriptor goal~%~%# True if currently within waypoint tolerance for all enabled axes.~%bool achieved~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/GoalDescriptor~%# Contains values common to all waypoint request and status messages.~%# Waypoint goals with higher priority trump lower priority goals. For~%# goals of the same priority, the pilot should follow the latest~%# received.~%~%# Name of the requesting node, used with id to identify the request.~%string requester~%~%# Goal ID for the request~%uint32 id~%~%uint32 priority~%uint32 PRIORITY_LOW = 0~%uint32 PRIORITY_NORMAL = 10~%uint32 PRIORITY_AVOID_OBSTACLE = 20~%uint32 PRIORITY_EMERGENCY = 30~%uint32 PRIORITY_MANUAL_OVERRIDE  = 40~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WaypointSts)))
  "Returns full string definition for message of type 'WaypointSts"
  (cl:format cl:nil "# This message acknowledges the active waypoint request ~%# (Stay/Body/World/Global) and indicates if the vehicle is in position within~%# the requested tolerances. Immediately sent by the pilot in response to each~%# waypoint request message, not sent periodically.~%~%Header header~%~%# Common waypoint details~%GoalDescriptor goal~%~%# True if currently within waypoint tolerance for all enabled axes.~%bool achieved~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/GoalDescriptor~%# Contains values common to all waypoint request and status messages.~%# Waypoint goals with higher priority trump lower priority goals. For~%# goals of the same priority, the pilot should follow the latest~%# received.~%~%# Name of the requesting node, used with id to identify the request.~%string requester~%~%# Goal ID for the request~%uint32 id~%~%uint32 priority~%uint32 PRIORITY_LOW = 0~%uint32 PRIORITY_NORMAL = 10~%uint32 PRIORITY_AVOID_OBSTACLE = 20~%uint32 PRIORITY_EMERGENCY = 30~%uint32 PRIORITY_MANUAL_OVERRIDE  = 40~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WaypointSts>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WaypointSts>))
  "Converts a ROS message object to a list"
  (cl:list 'WaypointSts
    (cl:cons ':header (header msg))
    (cl:cons ':goal (goal msg))
    (cl:cons ':achieved (achieved msg))
))
