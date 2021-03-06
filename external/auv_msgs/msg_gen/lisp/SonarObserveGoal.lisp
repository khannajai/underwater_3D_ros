; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude SonarObserveGoal.msg.html

(cl:defclass <SonarObserveGoal> (roslisp-msg-protocol:ros-message)
  ((waypoint
    :reader waypoint
    :initarg :waypoint
    :type auv_msgs-msg:VehiclePose
    :initform (cl:make-instance 'auv_msgs-msg:VehiclePose))
   (inspectionpoint
    :reader inspectionpoint
    :initarg :inspectionpoint
    :type auv_msgs-msg:NED
    :initform (cl:make-instance 'auv_msgs-msg:NED))
   (minimum_duration
    :reader minimum_duration
    :initarg :minimum_duration
    :type cl:real
    :initform 0))
)

(cl:defclass SonarObserveGoal (<SonarObserveGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SonarObserveGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SonarObserveGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<SonarObserveGoal> is deprecated: use auv_msgs-msg:SonarObserveGoal instead.")))

(cl:ensure-generic-function 'waypoint-val :lambda-list '(m))
(cl:defmethod waypoint-val ((m <SonarObserveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:waypoint-val is deprecated.  Use auv_msgs-msg:waypoint instead.")
  (waypoint m))

(cl:ensure-generic-function 'inspectionpoint-val :lambda-list '(m))
(cl:defmethod inspectionpoint-val ((m <SonarObserveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:inspectionpoint-val is deprecated.  Use auv_msgs-msg:inspectionpoint instead.")
  (inspectionpoint m))

(cl:ensure-generic-function 'minimum_duration-val :lambda-list '(m))
(cl:defmethod minimum_duration-val ((m <SonarObserveGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:minimum_duration-val is deprecated.  Use auv_msgs-msg:minimum_duration instead.")
  (minimum_duration m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SonarObserveGoal>) ostream)
  "Serializes a message object of type '<SonarObserveGoal>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'waypoint) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'inspectionpoint) ostream)
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'minimum_duration)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'minimum_duration) (cl:floor (cl:slot-value msg 'minimum_duration)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SonarObserveGoal>) istream)
  "Deserializes a message object of type '<SonarObserveGoal>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'waypoint) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'inspectionpoint) istream)
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'minimum_duration) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SonarObserveGoal>)))
  "Returns string type for a message object of type '<SonarObserveGoal>"
  "auv_msgs/SonarObserveGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SonarObserveGoal)))
  "Returns string type for a message object of type 'SonarObserveGoal"
  "auv_msgs/SonarObserveGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SonarObserveGoal>)))
  "Returns md5sum for a message object of type '<SonarObserveGoal>"
  "81f4fb0242f7dfe3d370ddedb0576be9")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SonarObserveGoal)))
  "Returns md5sum for a message object of type 'SonarObserveGoal"
  "81f4fb0242f7dfe3d370ddedb0576be9")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SonarObserveGoal>)))
  "Returns full string definition for message of type '<SonarObserveGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Variable to specify final pose.~%VehiclePose waypoint~%NED inspectionpoint~%time minimum_duration~%~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SonarObserveGoal)))
  "Returns full string definition for message of type 'SonarObserveGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%# Variable to specify final pose.~%VehiclePose waypoint~%NED inspectionpoint~%time minimum_duration~%~%~%================================================================================~%MSG: auv_msgs/VehiclePose~%# Position and orientation of the vehicle. ~%~%NED position~%RPY orientation~%~%================================================================================~%MSG: auv_msgs/NED~%# Position or velocity in the right-handed NED coordinate frame.~%~%# metres north, positive towards true north.~%float64 north~%~%# metres east, positive towards true east.~%float64 east~%~%# metres down, positive towards the centre of the earth.~%float64 depth~%~%================================================================================~%MSG: auv_msgs/RPY~%# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.~%~%# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.~%float32 roll~%~%# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.~%float32 pitch~%~%# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.~%float32 yaw~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SonarObserveGoal>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'waypoint))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'inspectionpoint))
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SonarObserveGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'SonarObserveGoal
    (cl:cons ':waypoint (waypoint msg))
    (cl:cons ':inspectionpoint (inspectionpoint msg))
    (cl:cons ':minimum_duration (minimum_duration msg))
))
