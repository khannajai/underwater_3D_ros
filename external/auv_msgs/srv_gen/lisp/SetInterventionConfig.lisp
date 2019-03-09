; Auto-generated. Do not edit!


(cl:in-package auv_msgs-srv)


;//! \htmlinclude SetInterventionConfig-request.msg.html

(cl:defclass <SetInterventionConfig-request> (roslisp-msg-protocol:ros-message)
  ((spec
    :reader spec
    :initarg :spec
    :type auv_msgs-msg:InterventionSpec
    :initform (cl:make-instance 'auv_msgs-msg:InterventionSpec)))
)

(cl:defclass SetInterventionConfig-request (<SetInterventionConfig-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInterventionConfig-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInterventionConfig-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-srv:<SetInterventionConfig-request> is deprecated: use auv_msgs-srv:SetInterventionConfig-request instead.")))

(cl:ensure-generic-function 'spec-val :lambda-list '(m))
(cl:defmethod spec-val ((m <SetInterventionConfig-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:spec-val is deprecated.  Use auv_msgs-srv:spec instead.")
  (spec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInterventionConfig-request>) ostream)
  "Serializes a message object of type '<SetInterventionConfig-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'spec) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInterventionConfig-request>) istream)
  "Deserializes a message object of type '<SetInterventionConfig-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'spec) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInterventionConfig-request>)))
  "Returns string type for a service object of type '<SetInterventionConfig-request>"
  "auv_msgs/SetInterventionConfigRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInterventionConfig-request)))
  "Returns string type for a service object of type 'SetInterventionConfig-request"
  "auv_msgs/SetInterventionConfigRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInterventionConfig-request>)))
  "Returns md5sum for a message object of type '<SetInterventionConfig-request>"
  "eaf712383e643f9336cb68a3aabad76e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInterventionConfig-request)))
  "Returns md5sum for a message object of type 'SetInterventionConfig-request"
  "eaf712383e643f9336cb68a3aabad76e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInterventionConfig-request>)))
  "Returns full string definition for message of type '<SetInterventionConfig-request>"
  (cl:format cl:nil "~%~%~%~%InterventionSpec spec~%~%~%================================================================================~%MSG: auv_msgs/InterventionSpec~%# Specification of an intervention operation, containing one or more~%# intervention tasks.~%~%# Unique identifier for this intervention specification~%string id~%~%# Frame of the camera that captured the image (may be virtual).~%string camera_frame~%~%# Timestamp of the image.~%time stamp~%~%ImageFeature[] view_feature~%~%# Bounding box of the Target of Interest inside the view.~%sensor_msgs/RegionOfInterest roi~%float32 roi_rotation~%~%ImageFeature[] object_feature~%~%# Array of task specifications. All tasks must be completed for intervention~%# to succeed.~%InterventionTaskSpec[] task_spec~%~%================================================================================~%MSG: auv_msgs/ImageFeature~%# A single feature within a 2D image.~%~%# Position of feature in image (z is unused)~%geometry_msgs/Point position~%~%# Array of float32 values describing the feature.~%float32[] descriptor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: auv_msgs/InterventionTaskSpec~%# Specification of the intervention task, given as a task type to perform~%# on an object identified with a bounding box on an image.~%~%# Type of intervention task to perform.~%int32 task_type~%int32 TASK_RECOVERY=1~%int32 TASK_HOOK_CABLE=2~%int32 TASK_PUSH_BUTTON=3~%int32 TASK_OPEN_VALVE=4~%~%# Array of strategy specifications, in descending order of preference.~%InterventionStrategySpec[] strategy_spec~%~%================================================================================~%MSG: auv_msgs/InterventionStrategySpec~%# Specification of the intervention strategy.~%~%# Grasp frame given wrt bounding box origin~%geometry_msgs/Transform grasp_frame~%~%# Hand preshape~%int32 preshape~%int32 PRESHAPE_CYLINDRICAL_PRECISION=1~%int32 PRESHAPE_CYLINDRICAL_POWER=2~%int32 PRESHAPE_ONE_FINGER=3~%int32 PRESHAPE_HOOK=4~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInterventionConfig-request)))
  "Returns full string definition for message of type 'SetInterventionConfig-request"
  (cl:format cl:nil "~%~%~%~%InterventionSpec spec~%~%~%================================================================================~%MSG: auv_msgs/InterventionSpec~%# Specification of an intervention operation, containing one or more~%# intervention tasks.~%~%# Unique identifier for this intervention specification~%string id~%~%# Frame of the camera that captured the image (may be virtual).~%string camera_frame~%~%# Timestamp of the image.~%time stamp~%~%ImageFeature[] view_feature~%~%# Bounding box of the Target of Interest inside the view.~%sensor_msgs/RegionOfInterest roi~%float32 roi_rotation~%~%ImageFeature[] object_feature~%~%# Array of task specifications. All tasks must be completed for intervention~%# to succeed.~%InterventionTaskSpec[] task_spec~%~%================================================================================~%MSG: auv_msgs/ImageFeature~%# A single feature within a 2D image.~%~%# Position of feature in image (z is unused)~%geometry_msgs/Point position~%~%# Array of float32 values describing the feature.~%float32[] descriptor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: auv_msgs/InterventionTaskSpec~%# Specification of the intervention task, given as a task type to perform~%# on an object identified with a bounding box on an image.~%~%# Type of intervention task to perform.~%int32 task_type~%int32 TASK_RECOVERY=1~%int32 TASK_HOOK_CABLE=2~%int32 TASK_PUSH_BUTTON=3~%int32 TASK_OPEN_VALVE=4~%~%# Array of strategy specifications, in descending order of preference.~%InterventionStrategySpec[] strategy_spec~%~%================================================================================~%MSG: auv_msgs/InterventionStrategySpec~%# Specification of the intervention strategy.~%~%# Grasp frame given wrt bounding box origin~%geometry_msgs/Transform grasp_frame~%~%# Hand preshape~%int32 preshape~%int32 PRESHAPE_CYLINDRICAL_PRECISION=1~%int32 PRESHAPE_CYLINDRICAL_POWER=2~%int32 PRESHAPE_ONE_FINGER=3~%int32 PRESHAPE_HOOK=4~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInterventionConfig-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'spec))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInterventionConfig-request>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInterventionConfig-request
    (cl:cons ':spec (spec msg))
))
;//! \htmlinclude SetInterventionConfig-response.msg.html

(cl:defclass <SetInterventionConfig-response> (roslisp-msg-protocol:ros-message)
  ((ok
    :reader ok
    :initarg :ok
    :type cl:boolean
    :initform cl:nil)
   (error_num
    :reader error_num
    :initarg :error_num
    :type cl:integer
    :initform 0)
   (error_string
    :reader error_string
    :initarg :error_string
    :type cl:string
    :initform ""))
)

(cl:defclass SetInterventionConfig-response (<SetInterventionConfig-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <SetInterventionConfig-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'SetInterventionConfig-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-srv:<SetInterventionConfig-response> is deprecated: use auv_msgs-srv:SetInterventionConfig-response instead.")))

(cl:ensure-generic-function 'ok-val :lambda-list '(m))
(cl:defmethod ok-val ((m <SetInterventionConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:ok-val is deprecated.  Use auv_msgs-srv:ok instead.")
  (ok m))

(cl:ensure-generic-function 'error_num-val :lambda-list '(m))
(cl:defmethod error_num-val ((m <SetInterventionConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:error_num-val is deprecated.  Use auv_msgs-srv:error_num instead.")
  (error_num m))

(cl:ensure-generic-function 'error_string-val :lambda-list '(m))
(cl:defmethod error_string-val ((m <SetInterventionConfig-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-srv:error_string-val is deprecated.  Use auv_msgs-srv:error_string instead.")
  (error_string m))
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql '<SetInterventionConfig-response>)))
    "Constants for message type '<SetInterventionConfig-response>"
  '((:ERROR_BAD_PARAM . 1)
    (:ERROR_SERVICE_RUNNING . 2)
    (:ERROR_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:symbol-codes ((msg-type (cl:eql 'SetInterventionConfig-response)))
    "Constants for message type 'SetInterventionConfig-response"
  '((:ERROR_BAD_PARAM . 1)
    (:ERROR_SERVICE_RUNNING . 2)
    (:ERROR_OTHER . -1))
)
(cl:defmethod roslisp-msg-protocol:serialize ((msg <SetInterventionConfig-response>) ostream)
  "Serializes a message object of type '<SetInterventionConfig-response>"
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'ok) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'error_num)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'error_string))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'error_string))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <SetInterventionConfig-response>) istream)
  "Deserializes a message object of type '<SetInterventionConfig-response>"
    (cl:setf (cl:slot-value msg 'ok) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_num) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'error_string) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'error_string) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<SetInterventionConfig-response>)))
  "Returns string type for a service object of type '<SetInterventionConfig-response>"
  "auv_msgs/SetInterventionConfigResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInterventionConfig-response)))
  "Returns string type for a service object of type 'SetInterventionConfig-response"
  "auv_msgs/SetInterventionConfigResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<SetInterventionConfig-response>)))
  "Returns md5sum for a message object of type '<SetInterventionConfig-response>"
  "eaf712383e643f9336cb68a3aabad76e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'SetInterventionConfig-response)))
  "Returns md5sum for a message object of type 'SetInterventionConfig-response"
  "eaf712383e643f9336cb68a3aabad76e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<SetInterventionConfig-response>)))
  "Returns full string definition for message of type '<SetInterventionConfig-response>"
  (cl:format cl:nil "~%bool ok~%~%~%int32 error_num~%int32 ERROR_BAD_PARAM = 1~%int32 ERROR_SERVICE_RUNNING = 2~%int32 ERROR_OTHER = -1~%~%~%~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'SetInterventionConfig-response)))
  "Returns full string definition for message of type 'SetInterventionConfig-response"
  (cl:format cl:nil "~%bool ok~%~%~%int32 error_num~%int32 ERROR_BAD_PARAM = 1~%int32 ERROR_SERVICE_RUNNING = 2~%int32 ERROR_OTHER = -1~%~%~%~%string error_string~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <SetInterventionConfig-response>))
  (cl:+ 0
     1
     4
     4 (cl:length (cl:slot-value msg 'error_string))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <SetInterventionConfig-response>))
  "Converts a ROS message object to a list"
  (cl:list 'SetInterventionConfig-response
    (cl:cons ':ok (ok msg))
    (cl:cons ':error_num (error_num msg))
    (cl:cons ':error_string (error_string msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'SetInterventionConfig)))
  'SetInterventionConfig-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'SetInterventionConfig)))
  'SetInterventionConfig-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'SetInterventionConfig)))
  "Returns string type for a service object of type '<SetInterventionConfig>"
  "auv_msgs/SetInterventionConfig")