# Message describing estimated motion of the platform based 
# on pairs of optical images. Pose estimation may be performed
# either between a fixed image and the most recent image, 
# or the most recent two images. Twist (velocity) estimation is 
# always estimated between the most recent two images.

# Header frame is camera frame.
# Header stamp is of the most recent image.
Header header

# Time of pose reference image.
time reference_time_pose

# Time of twist reference image.
time reference_time_twist

# Estimated relative pose.
geometry_msgs/Pose pose

# Estimated velocity.
geometry_msgs/Twist twist

# Variance in the pose estimate.
float32 variance_pose

# Variance in the twist estimate.
float32 variance_twist
