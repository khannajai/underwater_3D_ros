FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/vehicle_msgs/msg"
  "../src/vehicle_msgs/srv"
  "CMakeFiles/ROSBUILD_gensrv_cpp"
  "../srv_gen/cpp/include/vehicle_msgs/PathService.h"
  "../srv_gen/cpp/include/vehicle_msgs/FloatService.h"
  "../srv_gen/cpp/include/vehicle_msgs/BooleanService.h"
  "../srv_gen/cpp/include/vehicle_msgs/StringService.h"
  "../srv_gen/cpp/include/vehicle_msgs/DictionaryService.h"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_cpp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
