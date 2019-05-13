file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/vehicle_msgs/msg"
  "../src/vehicle_msgs/srv"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/vehicle_msgs/msg/__init__.py"
  "../src/vehicle_msgs/msg/_Dictionary.py"
  "../src/vehicle_msgs/msg/_FloatArray.py"
  "../src/vehicle_msgs/msg/_FloatArrayStamped.py"
  "../src/vehicle_msgs/msg/_NodeStatus.py"
  "../src/vehicle_msgs/msg/_PathStatus.py"
  "../src/vehicle_msgs/msg/_PilotRequest.py"
  "../src/vehicle_msgs/msg/_PilotStatus.py"
  "../src/vehicle_msgs/msg/_ThrusterCommand.py"
  "../src/vehicle_msgs/msg/_ThrusterFeedback.py"
  "../src/vehicle_msgs/msg/_Vector6.py"
  "../src/vehicle_msgs/msg/_Vector6Stamped.py"
  "../src/vehicle_msgs/msg/_VehicleStatus.py"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
