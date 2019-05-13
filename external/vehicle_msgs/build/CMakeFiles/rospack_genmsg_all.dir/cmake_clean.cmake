file(REMOVE_RECURSE
  "../msg_gen"
  "../srv_gen"
  "../msg_gen"
  "../srv_gen"
  "../src/vehicle_msgs/msg"
  "../src/vehicle_msgs/srv"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/rospack_genmsg_all.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
