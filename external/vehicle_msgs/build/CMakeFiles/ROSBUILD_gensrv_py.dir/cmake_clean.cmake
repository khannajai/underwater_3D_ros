file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/vehicle_msgs/msg"
  "../src/vehicle_msgs/srv"
  "CMakeFiles/ROSBUILD_gensrv_py"
  "../src/vehicle_msgs/srv/__init__.py"
  "../src/vehicle_msgs/srv/_BooleanService.py"
  "../src/vehicle_msgs/srv/_DictionaryService.py"
  "../src/vehicle_msgs/srv/_FloatService.py"
  "../src/vehicle_msgs/srv/_PathService.py"
  "../src/vehicle_msgs/srv/_StringService.py"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/ROSBUILD_gensrv_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
