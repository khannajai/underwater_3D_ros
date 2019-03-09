FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/auv_msgs/msg"
  "../src/auv_msgs/srv"
  "CMakeFiles/ROSBUILD_gensrv_lisp"
  "../srv_gen/lisp/PlanVehicleSearchPath.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_PlanVehicleSearchPath.lisp"
  "../srv_gen/lisp/GenerateIPsFromOctomap.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_GenerateIPsFromOctomap.lisp"
  "../srv_gen/lisp/SetInterventionConfig.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_SetInterventionConfig.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
