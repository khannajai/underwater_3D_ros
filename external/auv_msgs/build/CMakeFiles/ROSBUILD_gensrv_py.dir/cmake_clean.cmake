FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/auv_msgs/msg"
  "../src/auv_msgs/srv"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/auv_msgs/srv/__init__.py"
  "../src/auv_msgs/srv/_PlanVehicleSearchPath.py"
  "../src/auv_msgs/srv/_GenerateIPsFromOctomap.py"
  "../src/auv_msgs/srv/_SetInterventionConfig.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
