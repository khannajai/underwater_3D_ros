# Specification of an intervention operation, containing one or more
# intervention tasks.

# Unique identifier for this intervention specification
string id

# Frame of the camera that captured the image (may be virtual).
string camera_frame

# Timestamp of the image.
time stamp

ImageFeature[] view_feature

# Bounding box of the Target of Interest inside the view.
sensor_msgs/RegionOfInterest roi
float32 roi_rotation

ImageFeature[] object_feature

# Array of task specifications. All tasks must be completed for intervention
# to succeed.
InterventionTaskSpec[] task_spec
