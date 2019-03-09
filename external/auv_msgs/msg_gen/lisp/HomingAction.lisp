; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude HomingAction.msg.html

(cl:defclass <HomingAction> (roslisp-msg-protocol:ros-message)
  ((action_goal
    :reader action_goal
    :initarg :action_goal
    :type auv_msgs-msg:HomingActionGoal
    :initform (cl:make-instance 'auv_msgs-msg:HomingActionGoal))
   (action_result
    :reader action_result
    :initarg :action_result
    :type auv_msgs-msg:HomingActionResult
    :initform (cl:make-instance 'auv_msgs-msg:HomingActionResult))
   (action_feedback
    :reader action_feedback
    :initarg :action_feedback
    :type auv_msgs-msg:HomingActionFeedback
    :initform (cl:make-instance 'auv_msgs-msg:HomingActionFeedback)))
)

(cl:defclass HomingAction (<HomingAction>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HomingAction>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HomingAction)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<HomingAction> is deprecated: use auv_msgs-msg:HomingAction instead.")))

(cl:ensure-generic-function 'action_goal-val :lambda-list '(m))
(cl:defmethod action_goal-val ((m <HomingAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:action_goal-val is deprecated.  Use auv_msgs-msg:action_goal instead.")
  (action_goal m))

(cl:ensure-generic-function 'action_result-val :lambda-list '(m))
(cl:defmethod action_result-val ((m <HomingAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:action_result-val is deprecated.  Use auv_msgs-msg:action_result instead.")
  (action_result m))

(cl:ensure-generic-function 'action_feedback-val :lambda-list '(m))
(cl:defmethod action_feedback-val ((m <HomingAction>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:action_feedback-val is deprecated.  Use auv_msgs-msg:action_feedback instead.")
  (action_feedback m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HomingAction>) ostream)
  "Serializes a message object of type '<HomingAction>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_goal) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_result) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'action_feedback) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HomingAction>) istream)
  "Deserializes a message object of type '<HomingAction>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_goal) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_result) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'action_feedback) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HomingAction>)))
  "Returns string type for a message object of type '<HomingAction>"
  "auv_msgs/HomingAction")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HomingAction)))
  "Returns string type for a message object of type 'HomingAction"
  "auv_msgs/HomingAction")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HomingAction>)))
  "Returns md5sum for a message object of type '<HomingAction>"
  "b99ccdfbe5c8ea3cd2e89301a435bd24")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HomingAction)))
  "Returns md5sum for a message object of type 'HomingAction"
  "b99ccdfbe5c8ea3cd2e89301a435bd24")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HomingAction>)))
  "Returns full string definition for message of type '<HomingAction>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%HomingActionGoal action_goal~%HomingActionResult action_result~%HomingActionFeedback action_feedback~%~%================================================================================~%MSG: auv_msgs/HomingActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%HomingGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: auv_msgs/HomingGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Homing which can be with a simulation beacon or using USBL~%~%# If we specifiy in ROS parameters fakebeacon, we will take the position from here instead of USBL~%~%NED beacon~%~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/HomingActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%HomingResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: auv_msgs/HomingResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%bool success~%~%# Error number if action failed.~%int32 error_num~%int32 ERROR_LOST_NAV=1~%int32 ERROR_OTHER=-1~%~%string error_string~%~%~%================================================================================~%MSG: auv_msgs/HomingActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%HomingFeedback feedback~%~%================================================================================~%MSG: auv_msgs/HomingFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%uint32 current_distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HomingAction)))
  "Returns full string definition for message of type 'HomingAction"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%HomingActionGoal action_goal~%HomingActionResult action_result~%HomingActionFeedback action_feedback~%~%================================================================================~%MSG: auv_msgs/HomingActionGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalID goal_id~%HomingGoal goal~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: actionlib_msgs/GoalID~%# The stamp should store the time at which this goal was requested.~%# It is used by an action server when it tries to preempt all~%# goals that were requested before a certain time~%time stamp~%~%# The id provides a way to associate feedback and~%# result message with specific goal requests. The id~%# specified must be unique.~%string id~%~%~%================================================================================~%MSG: auv_msgs/HomingGoal~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Homing which can be with a simulation beacon or using USBL~%~%# If we specifiy in ROS parameters fakebeacon, we will take the position from here instead of USBL~%~%NED beacon~%~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/HomingActionResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%HomingResult result~%~%================================================================================~%MSG: actionlib_msgs/GoalStatus~%GoalID goal_id~%uint8 status~%uint8 PENDING         = 0   # The goal has yet to be processed by the action server~%uint8 ACTIVE          = 1   # The goal is currently being processed by the action server~%uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing~%                            #   and has since completed its execution (Terminal State)~%uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)~%uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due~%                            #    to some failure (Terminal State)~%uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,~%                            #    because the goal was unattainable or invalid (Terminal State)~%uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing~%                            #    and has not yet completed execution~%uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,~%                            #    but the action server has not yet confirmed that the goal is canceled~%uint8 RECALLED        = 8   # The goal received a cancel request before it started executing~%                            #    and was successfully cancelled (Terminal State)~%uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be~%                            #    sent over the wire by an action server~%~%#Allow for the user to associate a string with GoalStatus for debugging~%string text~%~%~%================================================================================~%MSG: auv_msgs/HomingResult~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%bool success~%~%# Error number if action failed.~%int32 error_num~%int32 ERROR_LOST_NAV=1~%int32 ERROR_OTHER=-1~%~%string error_string~%~%~%================================================================================~%MSG: auv_msgs/HomingActionFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%Header header~%actionlib_msgs/GoalStatus status~%HomingFeedback feedback~%~%================================================================================~%MSG: auv_msgs/HomingFeedback~%# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%uint32 current_distance~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HomingAction>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_goal))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_result))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'action_feedback))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HomingAction>))
  "Converts a ROS message object to a list"
  (cl:list 'HomingAction
    (cl:cons ':action_goal (action_goal msg))
    (cl:cons ':action_result (action_result msg))
    (cl:cons ':action_feedback (action_feedback msg))
))
