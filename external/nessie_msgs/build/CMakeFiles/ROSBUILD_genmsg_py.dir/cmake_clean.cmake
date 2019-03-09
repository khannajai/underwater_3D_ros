FILE(REMOVE_RECURSE
  "../msg_gen"
  "../msg_gen"
  "../src/nessie_msgs/msg"
  "CMakeFiles/ROSBUILD_genmsg_py"
  "../src/nessie_msgs/msg/__init__.py"
  "../src/nessie_msgs/msg/_LBLTimeDelay.py"
  "../src/nessie_msgs/msg/_TeledyneExplDvl.py"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang)
  INCLUDE(CMakeFiles/ROSBUILD_genmsg_py.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
