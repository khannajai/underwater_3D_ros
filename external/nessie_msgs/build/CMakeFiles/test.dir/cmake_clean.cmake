file(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/nessie_msgs/msg"
)

# Per-language clean rules from dependency scanning.
foreach(lang )
  include(CMakeFiles/test.dir/cmake_clean_${lang}.cmake OPTIONAL)
endforeach()
