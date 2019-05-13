file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/vehicle_msgs/msg"
  "../src/vehicle_msgs/srv"
  "CMakeFiles/ROSBUILD_genmsg_cpp"
  "../msg_gen/cpp/include/vehicle_msgs/Dictionary.h"
  "../msg_gen/cpp/include/vehicle_msgs/FloatArray.h"
  "../msg_gen/cpp/include/vehicle_msgs/FloatArrayStamped.h"
  "../msg_gen/cpp/include/vehicle_msgs/NodeStatus.h"
  "../msg_gen/cpp/include/vehicle_msgs/PathStatus.h"
  "../msg_gen/cpp/include/vehicle_msgs/PilotRequest.h"
  "../msg_gen/cpp/include/vehicle_msgs/PilotStatus.h"
  "../msg_gen/cpp/include/vehicle_msgs/ThrusterCommand.h"
  "../msg_gen/cpp/include/vehicle_msgs/ThrusterFeedback.h"
  "../msg_gen/cpp/include/vehicle_msgs/Vector6.h"
  "../msg_gen/cpp/include/vehicle_msgs/Vector6Stamped.h"
  "../msg_gen/cpp/include/vehicle_msgs/VehicleStatus.h"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_genmsg_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
