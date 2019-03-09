; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude GenerateWaypointsActionResult.msg.html

(cl:defclass <GenerateWaypointsActionResult> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (status
    :reader status
    :initarg :status
    :type actionlib_msgs-msg:GoalStatus
    :initform (cl:make-instance 'actionlib_msgs-msg:GoalStatus))
   (result
    :reader result
    :initarg :result
    :type auv_msgs-msg:GenerateWaypointsResult
    :initform (cl:make-instance 'auv_msgs-msg:GenerateWaypointsResult)))
)

(cl:defclass GenerateWaypointsActionResult (<GenerateWaypointsActionResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <GenerateWaypointsActionResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'GenerateWaypointsActionResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<GenerateWaypointsActionResult> is deprecated: use auv_msgs-msg:GenerateWaypointsActionResult instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <GenerateWaypointsActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'status-val :lambda-list '(m))
(cl:defmethod status-val ((m <GenerateWaypointsActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:status-val is deprecated.  Use auv_msgs-msg:status instead.")
  (status m))

(cl:ensure-generic-function 'result-val :lambda-list '(m))
(cl:defmethod result-val ((m <GenerateWaypointsActionResult>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:result-val is deprecated.  Use auv_msgs-msg:result instead.")
  (result m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <GenerateWaypointsActionResult>) ostream)
  "Serializes a message object of type '<GenerateWaypointsActionResult>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'status) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'result) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <GenerateWaypointsActionResult>) istream)
  "Deserializes a message object of type '<GenerateWaypointsActionResult>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'status) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'result) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<GenerateWaypointsActionResult>)))
  "Returns string type for a message object of type '<GenerateWaypointsActionResult>"
  "auv_msgs/GenerateWaypointsActionResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'GenerateWaypointsActionResult)))
  "Returns string type for a message object of type 'GenerateWaypointsActionResult"
  "auv_msgs/GenerateWaypointsActionResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<GenerateWaypointsActionResult>)))
  "Returns md5sum for a message object of type '<GenerateWaypointsActionResult>"
  "9aad926b5de8bb0540edb6b27ce996e0")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'GenerateWaypointsActionResult)))
  "Returns md5sum for a message object of type 'GenerateWaypointsActionResult"
  "9aad926b5de8bb0540edb6b27ce996e0")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<GenerateWaypointsActionResult>)))
  "Returns full string definition for message of type '<GenerateWaypointsActionResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%GenerateWaypointsResult result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: auv_msgs/GenerateWaypointsResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#total waypoints suggested~%VehiclePoseArray waypoints~%NEDArray inspectionpoints~%~%bool success~%~%# Error number if action failed.~%int32 error_num~%int32 ERROR_LOST_NAV=1~%int32 ERROR_OTHER=-1~%string error_string~%~%~%================================================================================~%MSG: auv_msgs/VehiclePoseArray~%Header header~%VehiclePose[] poses~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%================================================================================~%MSG: auv_msgs/NEDArray~%NED[] neds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'GenerateWaypointsActionResult)))
  "Returns full string definition for message of type 'GenerateWaypointsActionResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%GenerateWaypointsResult result~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: auv_msgs/GenerateWaypointsResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%#total waypoints suggested~%VehiclePoseArray waypoints~%NEDArray inspectionpoints~%~%bool success~%~%# Error number if action failed.~%int32 error_num~%int32 ERROR_LOST_NAV=1~%int32 ERROR_OTHER=-1~%string error_string~%~%~%================================================================================~%MSG: auv_msgs/VehiclePoseArray~%Header header~%VehiclePose[] poses~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%================================================================================~%MSG: auv_msgs/NEDArray~%NED[] neds~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <GenerateWaypointsActionResult>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'status))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'result))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <GenerateWaypointsActionResult>))
  "Converts a ROS message object to a list"
  (cl:list 'GenerateWaypointsActionResult
    (cl:cons ':header (header msg))
    (cl:cons ':status (status msg))
    (cl:cons ':result (result msg))
))
