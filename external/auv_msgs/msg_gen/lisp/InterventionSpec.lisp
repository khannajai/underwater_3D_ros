; Auto-generated. Do not edit!


(cl:in-package auv_msgs-msg)


;//! \htmlinclude InterventionSpec.msg.html

(cl:defclass <InterventionSpec> (roslisp-msg-protocol:ros-message)
  ((id
    :reader id
    :initarg :id
    :type cl:string
    :initform "")
   (camera_frame
    :reader camera_frame
    :initarg :camera_frame
    :type cl:string
    :initform "")
   (stamp
    :reader stamp
    :initarg :stamp
    :type cl:real
    :initform 0)
   (view_feature
    :reader view_feature
    :initarg :view_feature
    :type (cl:vector auv_msgs-msg:ImageFeature)
   :initform (cl:make-array 0 :element-type 'auv_msgs-msg:ImageFeature :initial-element (cl:make-instance 'auv_msgs-msg:ImageFeature)))
   (roi
    :reader roi
    :initarg :roi
    :type sensor_msgs-msg:RegionOfInterest
    :initform (cl:make-instance 'sensor_msgs-msg:RegionOfInterest))
   (roi_rotation
    :reader roi_rotation
    :initarg :roi_rotation
    :type cl:float
    :initform 0.0)
   (object_feature
    :reader object_feature
    :initarg :object_feature
    :type (cl:vector auv_msgs-msg:ImageFeature)
   :initform (cl:make-array 0 :element-type 'auv_msgs-msg:ImageFeature :initial-element (cl:make-instance 'auv_msgs-msg:ImageFeature)))
   (task_spec
    :reader task_spec
    :initarg :task_spec
    :type (cl:vector auv_msgs-msg:InterventionTaskSpec)
   :initform (cl:make-array 0 :element-type 'auv_msgs-msg:InterventionTaskSpec :initial-element (cl:make-instance 'auv_msgs-msg:InterventionTaskSpec))))
)

(cl:defclass InterventionSpec (<InterventionSpec>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <InterventionSpec>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'InterventionSpec)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name auv_msgs-msg:<InterventionSpec> is deprecated: use auv_msgs-msg:InterventionSpec instead.")))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <InterventionSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:id-val is deprecated.  Use auv_msgs-msg:id instead.")
  (id m))

(cl:ensure-generic-function 'camera_frame-val :lambda-list '(m))
(cl:defmethod camera_frame-val ((m <InterventionSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:camera_frame-val is deprecated.  Use auv_msgs-msg:camera_frame instead.")
  (camera_frame m))

(cl:ensure-generic-function 'stamp-val :lambda-list '(m))
(cl:defmethod stamp-val ((m <InterventionSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:stamp-val is deprecated.  Use auv_msgs-msg:stamp instead.")
  (stamp m))

(cl:ensure-generic-function 'view_feature-val :lambda-list '(m))
(cl:defmethod view_feature-val ((m <InterventionSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:view_feature-val is deprecated.  Use auv_msgs-msg:view_feature instead.")
  (view_feature m))

(cl:ensure-generic-function 'roi-val :lambda-list '(m))
(cl:defmethod roi-val ((m <InterventionSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:roi-val is deprecated.  Use auv_msgs-msg:roi instead.")
  (roi m))

(cl:ensure-generic-function 'roi_rotation-val :lambda-list '(m))
(cl:defmethod roi_rotation-val ((m <InterventionSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:roi_rotation-val is deprecated.  Use auv_msgs-msg:roi_rotation instead.")
  (roi_rotation m))

(cl:ensure-generic-function 'object_feature-val :lambda-list '(m))
(cl:defmethod object_feature-val ((m <InterventionSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:object_feature-val is deprecated.  Use auv_msgs-msg:object_feature instead.")
  (object_feature m))

(cl:ensure-generic-function 'task_spec-val :lambda-list '(m))
(cl:defmethod task_spec-val ((m <InterventionSpec>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader auv_msgs-msg:task_spec-val is deprecated.  Use auv_msgs-msg:task_spec instead.")
  (task_spec m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <InterventionSpec>) ostream)
  "Serializes a message object of type '<InterventionSpec>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'id))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'camera_frame))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'camera_frame))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'stamp)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'stamp) (cl:floor (cl:slot-value msg 'stamp)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'view_feature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'view_feature))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'roi) ostream)
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'roi_rotation))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_feature))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_feature))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'task_spec))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'task_spec))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <InterventionSpec>) istream)
  "Deserializes a message object of type '<InterventionSpec>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'camera_frame) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'camera_frame) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'stamp) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'view_feature) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'view_feature)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auv_msgs-msg:ImageFeature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'roi) istream)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'roi_rotation) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_feature) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_feature)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auv_msgs-msg:ImageFeature))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'task_spec) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'task_spec)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'auv_msgs-msg:InterventionTaskSpec))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<InterventionSpec>)))
  "Returns string type for a message object of type '<InterventionSpec>"
  "auv_msgs/InterventionSpec")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'InterventionSpec)))
  "Returns string type for a message object of type 'InterventionSpec"
  "auv_msgs/InterventionSpec")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<InterventionSpec>)))
  "Returns md5sum for a message object of type '<InterventionSpec>"
  "bd8e9cc17d96008b9cd94d4ad8d1c7fa")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'InterventionSpec)))
  "Returns md5sum for a message object of type 'InterventionSpec"
  "bd8e9cc17d96008b9cd94d4ad8d1c7fa")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<InterventionSpec>)))
  "Returns full string definition for message of type '<InterventionSpec>"
  (cl:format cl:nil "# Specification of an intervention operation, containing one or more~%# intervention tasks.~%~%# Unique identifier for this intervention specification~%string id~%~%# Frame of the camera that captured the image (may be virtual).~%string camera_frame~%~%# Timestamp of the image.~%time stamp~%~%ImageFeature[] view_feature~%~%# Bounding box of the Target of Interest inside the view.~%sensor_msgs/RegionOfInterest roi~%float32 roi_rotation~%~%ImageFeature[] object_feature~%~%# Array of task specifications. All tasks must be completed for intervention~%# to succeed.~%InterventionTaskSpec[] task_spec~%~%================================================================================~%MSG: auv_msgs/ImageFeature~%# A single feature within a 2D image.~%~%# Position of feature in image (z is unused)~%geometry_msgs/Point position~%~%# Array of float32 values describing the feature.~%float32[] descriptor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: auv_msgs/InterventionTaskSpec~%# Specification of the intervention task, given as a task type to perform~%# on an object identified with a bounding box on an image.~%~%# Type of intervention task to perform.~%int32 task_type~%int32 TASK_RECOVERY=1~%int32 TASK_HOOK_CABLE=2~%int32 TASK_PUSH_BUTTON=3~%int32 TASK_OPEN_VALVE=4~%~%# Array of strategy specifications, in descending order of preference.~%InterventionStrategySpec[] strategy_spec~%~%================================================================================~%MSG: auv_msgs/InterventionStrategySpec~%# Specification of the intervention strategy.~%~%# Grasp frame given wrt bounding box origin~%geometry_msgs/Transform grasp_frame~%~%# Hand preshape~%int32 preshape~%int32 PRESHAPE_CYLINDRICAL_PRECISION=1~%int32 PRESHAPE_CYLINDRICAL_POWER=2~%int32 PRESHAPE_ONE_FINGER=3~%int32 PRESHAPE_HOOK=4~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'InterventionSpec)))
  "Returns full string definition for message of type 'InterventionSpec"
  (cl:format cl:nil "# Specification of an intervention operation, containing one or more~%# intervention tasks.~%~%# Unique identifier for this intervention specification~%string id~%~%# Frame of the camera that captured the image (may be virtual).~%string camera_frame~%~%# Timestamp of the image.~%time stamp~%~%ImageFeature[] view_feature~%~%# Bounding box of the Target of Interest inside the view.~%sensor_msgs/RegionOfInterest roi~%float32 roi_rotation~%~%ImageFeature[] object_feature~%~%# Array of task specifications. All tasks must be completed for intervention~%# to succeed.~%InterventionTaskSpec[] task_spec~%~%================================================================================~%MSG: auv_msgs/ImageFeature~%# A single feature within a 2D image.~%~%# Position of feature in image (z is unused)~%geometry_msgs/Point position~%~%# Array of float32 values describing the feature.~%float32[] descriptor~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%================================================================================~%MSG: auv_msgs/InterventionTaskSpec~%# Specification of the intervention task, given as a task type to perform~%# on an object identified with a bounding box on an image.~%~%# Type of intervention task to perform.~%int32 task_type~%int32 TASK_RECOVERY=1~%int32 TASK_HOOK_CABLE=2~%int32 TASK_PUSH_BUTTON=3~%int32 TASK_OPEN_VALVE=4~%~%# Array of strategy specifications, in descending order of preference.~%InterventionStrategySpec[] strategy_spec~%~%================================================================================~%MSG: auv_msgs/InterventionStrategySpec~%# Specification of the intervention strategy.~%~%# Grasp frame given wrt bounding box origin~%geometry_msgs/Transform grasp_frame~%~%# Hand preshape~%int32 preshape~%int32 PRESHAPE_CYLINDRICAL_PRECISION=1~%int32 PRESHAPE_CYLINDRICAL_POWER=2~%int32 PRESHAPE_ONE_FINGER=3~%int32 PRESHAPE_HOOK=4~%~%================================================================================~%MSG: geometry_msgs/Transform~%# This represents the transform between two coordinate frames in free space.~%~%Vector3 translation~%Quaternion rotation~%~%================================================================================~%MSG: geometry_msgs/Vector3~%# This represents a vector in free space. ~%~%float64 x~%float64 y~%float64 z~%================================================================================~%MSG: geometry_msgs/Quaternion~%# This represents an orientation in free space in quaternion form.~%~%float64 x~%float64 y~%float64 z~%float64 w~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <InterventionSpec>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'id))
     4 (cl:length (cl:slot-value msg 'camera_frame))
     8
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'view_feature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'roi))
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_feature) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'task_spec) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <InterventionSpec>))
  "Converts a ROS message object to a list"
  (cl:list 'InterventionSpec
    (cl:cons ':id (id msg))
    (cl:cons ':camera_frame (camera_frame msg))
    (cl:cons ':stamp (stamp msg))
    (cl:cons ':view_feature (view_feature msg))
    (cl:cons ':roi (roi msg))
    (cl:cons ':roi_rotation (roi_rotation msg))
    (cl:cons ':object_feature (object_feature msg))
    (cl:cons ':task_spec (task_spec msg))
))
