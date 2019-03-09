FILE(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/vehicle_msgs/msg"
  "../src/vehicle_msgs/srv"
  "CMakeFiles/ROSBUILD_gensrv_lisp"
  "../srv_gen/lisp/PathService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_PathService.lisp"
  "../srv_gen/lisp/FloatService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_FloatService.lisp"
  "../srv_gen/lisp/BooleanService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_BooleanService.lisp"
  "../srv_gen/lisp/StringService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_StringService.lisp"
  "../srv_gen/lisp/DictionaryService.lisp"
  "../srv_gen/lisp/_package.lisp"
  "../srv_gen/lisp/_package_DictionaryService.lisp"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_gensrv_lisp.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
