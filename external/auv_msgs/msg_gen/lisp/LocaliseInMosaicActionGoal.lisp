; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude LocaliseInMosaicActionGoal.msg.html

(cl:defclass <LocaliseInMosaicActionGoal> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (goal_id
    :reader goal_id
    :initarg :goal_id
    :type actionlib_msgs-msg:GoalID
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalID))
   (goal
    :reader goal
    :initarg :goal
    :type auv_msgs-msg:LocaliseInMosaicGoal
    :initform (cl:make-instance 'auv_msgs-msg:LocaliseInMosaicGoal)))
)

(cl:defclass LocaliseInMosaicActionGoal (<LocaliseInMosaicActionGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LocaliseInMosaicActionGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LocaliseInMosaicActionGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<LocaliseInMosaicActionGoal> is deprecated: use auv_msgs-msg:LocaliseInMosaicActionGoal instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LocaliseInMosaicActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'goal_id-val :lambda-list '(m))
(cl:defmethod goal_id-val ((m <LocaliseInMosaicActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:goal_id-val is deprecated.  Use auv_msgs-msg:goal_id instead.")
  (goal_id m))

(cl:ensure-generic-function 'goal-val :lambda-list '(m))
(cl:defmethod goal-val ((m <LocaliseInMosaicActionGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:goal-val is deprecated.  Use auv_msgs-msg:goal instead.")
  (goal m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LocaliseInMosaicActionGoal>) ostream)
  "Serializes a message object of type '<LocaliseInMosaicActionGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal_id) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'goal) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LocaliseInMosaicActionGoal>) istream)
  "Deserializes a message object of type '<LocaliseInMosaicActionGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal_id) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'goal) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LocaliseInMosaicActionGoal>)))
  "Returns string type for a message object of type '<LocaliseInMosaicActionGoal>"
  "auv_msgs/LocaliseInMosaicActionGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LocaliseInMosaicActionGoal)))
  "Returns string type for a message object of type 'LocaliseInMosaicActionGoal"
  "auv_msgs/LocaliseInMosaicActionGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LocaliseInMosaicActionGoal>)))
  "Returns md5sum for a message object of type '<LocaliseInMosaicActionGoal>"
  "ac75343f581a2761b8256513a2ddb392")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LocaliseInMosaicActionGoal)))
  "Returns md5sum for a message object of type 'LocaliseInMosaicActionGoal"
  "ac75343f581a2761b8256513a2ddb392")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LocaliseInMosaicActionGoal>)))
  "Returns full string definition for message of type '<LocaliseInMosaicActionGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%LocaliseInMosaicGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: auv_msgs/LocaliseInMosaicGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Attempt to discover the vehicle's pose within the specified large mosaic image.~%#~%# May need to be performed with vehicle stationary due to computation time.~%# May be useful to provide constraints on odometry whilst localising, e.g. at least ~%# estimate visual motion every second, to speed up localisation calculations. ~%# Could slow/stop vehicle during this process. Potential to specify pose ~%# radius/covariance cutoff probability for mosaic localisation action.~%~%# ID of the image to localise within. ~%string view_image_id~%~%# Features to use for localisation, specified in image frame.~%ImageFeature view_feature~%~%# Frame of the suggested camera to use.~%string camera_frame~%~%~%================================================================================~%MSG: auv_msgs/ImageFeature~%# A single feature within a 2D image.~%~%# Position of feature in image (z is unused)~%geometry_msgs/Point position~%~%# Array of float32 values describing the feature.~%float32[] descriptor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LocaliseInMosaicActionGoal)))
  "Returns full string definition for message of type 'LocaliseInMosaicActionGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%LocaliseInMosaicGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: auv_msgs/LocaliseInMosaicGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Attempt to discover the vehicle's pose within the specified large mosaic image.~%#~%# May need to be performed with vehicle stationary due to computation time.~%# May be useful to provide constraints on odometry whilst localising, e.g. at least ~%# estimate visual motion every second, to speed up localisation calculations. ~%# Could slow/stop vehicle during this process. Potential to specify pose ~%# radius/covariance cutoff probability for mosaic localisation action.~%~%# ID of the image to localise within. ~%string view_image_id~%~%# Features to use for localisation, specified in image frame.~%ImageFeature view_feature~%~%# Frame of the suggested camera to use.~%string camera_frame~%~%~%================================================================================~%MSG: auv_msgs/ImageFeature~%# A single feature within a 2D image.~%~%# Position of feature in image (z is unused)~%geometry_msgs/Point position~%~%# Array of float32 values describing the feature.~%float32[] descriptor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LocaliseInMosaicActionGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'goal))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LocaliseInMosaicActionGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'LocaliseInMosaicActionGoal
    (cl:cons ':header (header msg))
    (cl:cons ':goal_id (goal_id msg))
    (cl:cons ':goal (goal msg))
))
