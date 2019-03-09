; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude NEDVelCov.msg.html

(cl:defclass <NEDVelCov> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (position
    :reader position
    :initarg :position
    :type auv_msgs-msg:NED
    :initform (cl:make-instance 'auv_msgs-msg:NED))
   (velocity
    :reader velocity
    :initarg :velocity
    :type auv_msgs-msg:NED
    :initform (cl:make-instance 'auv_msgs-msg:NED))
   (position_var
    :reader position_var
    :initarg :position_var
    :type auv_msgs-msg:NED
    :initform (cl:make-instance 'auv_msgs-msg:NED))
   (velocity_var
    :reader velocity_var
    :initarg :velocity_var
    :type auv_msgs-msg:NED
    :initform (cl:make-instance 'auv_msgs-msg:NED)))
)

(cl:defclass NEDVelCov (<NEDVelCov>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <NEDVelCov>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'NEDVelCov)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<NEDVelCov> is deprecated: use auv_msgs-msg:NEDVelCov instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <NEDVelCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:header-val is deprecated.  Use auv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'position-val :lambda-list '(m))
(cl:defmethod position-val ((m <NEDVelCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:position-val is deprecated.  Use auv_msgs-msg:position instead.")
  (position m))

(cl:ensure-generic-function 'velocity-val :lambda-list '(m))
(cl:defmethod velocity-val ((m <NEDVelCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:velocity-val is deprecated.  Use auv_msgs-msg:velocity instead.")
  (velocity m))

(cl:ensure-generic-function 'position_var-val :lambda-list '(m))
(cl:defmethod position_var-val ((m <NEDVelCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:position_var-val is deprecated.  Use auv_msgs-msg:position_var instead.")
  (position_var m))

(cl:ensure-generic-function 'velocity_var-val :lambda-list '(m))
(cl:defmethod velocity_var-val ((m <NEDVelCov>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:velocity_var-val is deprecated.  Use auv_msgs-msg:velocity_var instead.")
  (velocity_var m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <NEDVelCov>) ostream)
  "Serializes a message object of type '<NEDVelCov>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'position_var) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'velocity_var) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <NEDVelCov>) istream)
  "Deserializes a message object of type '<NEDVelCov>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'position_var) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'velocity_var) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<NEDVelCov>)))
  "Returns string type for a message object of type '<NEDVelCov>"
  "auv_msgs/NEDVelCov")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'NEDVelCov)))
  "Returns string type for a message object of type 'NEDVelCov"
  "auv_msgs/NEDVelCov")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<NEDVelCov>)))
  "Returns md5sum for a message object of type '<NEDVelCov>"
  "85e1b2034d502fbffd13416083871524")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'NEDVelCov)))
  "Returns md5sum for a message object of type 'NEDVelCov"
  "85e1b2034d502fbffd13416083871524")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<NEDVelCov>)))
  "Returns full string definition for message of type '<NEDVelCov>"
  (cl:format cl:nil "#its important the header is stamped with the correct time, for a KF update~%std_msgs/Header header~%~%#msg that suits a kalman filter update of a constant velocity model~%#the first three of the state quantities are position (specific values can be set 'nan' indicating unobserved, e.g. depth on GPS)~%NED position~%#the second three of the state quantities are velocity(specific values can be set 'nan' indicating unobserved, e.g. all GPS values)~%NED velocity ~%~%#variance along priciple dimentaions (we do not bother with full covaraiance)~%NED position_var~%NED velocity_var~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'NEDVelCov)))
  "Returns full string definition for message of type 'NEDVelCov"
  (cl:format cl:nil "#its important the header is stamped with the correct time, for a KF update~%std_msgs/Header header~%~%#msg that suits a kalman filter update of a constant velocity model~%#the first three of the state quantities are position (specific values can be set 'nan' indicating unobserved, e.g. depth on GPS)~%NED position~%#the second three of the state quantities are velocity(specific values can be set 'nan' indicating unobserved, e.g. all GPS values)~%NED velocity ~%~%#variance along priciple dimentaions (we do not bother with full covaraiance)~%NED position_var~%NED velocity_var~%~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.secs: seconds (stamp_secs) since epoch~%# * stamp.nsecs: nanoseconds since stamp_secs~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%# 0: no frame~%# 1: global frame~%string frame_id~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <NEDVelCov>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'position_var))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'velocity_var))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <NEDVelCov>))
  "Converts a ROS message object to a list"
  (cl:list 'NEDVelCov
    (cl:cons ':header (header msg))
    (cl:cons ':position (position msg))
    (cl:cons ':velocity (velocity msg))
    (cl:cons ':position_var (position_var msg))
    (cl:cons ':velocity_var (velocity_var msg))
))
