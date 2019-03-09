/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/McmGenerateLawnMowerWaypointsResult.msg */
#ifndef AUV_MSGS_MESSAGE_MCMGENERATELAWNMOWERWAYPOINTSRESULT_H
#define AUV_MSGS_MESSAGE_MCMGENERATELAWNMOWERWAYPOINTSRESULT_H
#include <string>
#include <vector>
#include <map>
#include <ostream>
#include "ros/serialization.h"
#include "ros/builtin_message_traits.h"
#include "ros/message_operations.h"
#include "ros/time.h"

#include "ros/macros.h"

#include "ros/assert.h"

#include "auv_msgs/VehiclePoseArray.h"

namespace auv_msgs
{
template <class ContainerAllocator>
struct McmGenerateLawnMowerWaypointsResult_ {
  typedef McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> Type;

  McmGenerateLawnMowerWaypointsResult_()
  : waypoints()
  , success(false)
  , error_num(0)
  , error_string()
  {
  }

  McmGenerateLawnMowerWaypointsResult_(const ContainerAllocator& _alloc)
  : waypoints(_alloc)
  , success(false)
  , error_num(0)
  , error_string(_alloc)
  {
  }

  typedef  ::auv_msgs::VehiclePoseArray_<ContainerAllocator>  _waypoints_type;
   ::auv_msgs::VehiclePoseArray_<ContainerAllocator>  waypoints;

  typedef uint8_t _success_type;
  uint8_t success;

  typedef int32_t _error_num_type;
  int32_t error_num;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_string_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  error_string;

  enum { ERROR_LOST_NAV = 1 };
  enum { ERROR_OTHER = -1 };

  typedef boost::shared_ptr< ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct McmGenerateLawnMowerWaypointsResult
typedef  ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<std::allocator<void> > McmGenerateLawnMowerWaypointsResult;

typedef boost::shared_ptr< ::auv_msgs::McmGenerateLawnMowerWaypointsResult> McmGenerateLawnMowerWaypointsResultPtr;
typedef boost::shared_ptr< ::auv_msgs::McmGenerateLawnMowerWaypointsResult const> McmGenerateLawnMowerWaypointsResultConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "567252045b1cbceaafc1fc3f6619e651";
  }

  static const char* value(const  ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x567252045b1cbceaULL;
  static const uint64_t static_value2 = 0xafc1fc3f6619e651ULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/McmGenerateLawnMowerWaypointsResult";
  }

  static const char* value(const  ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
#total waypoints suggested\n\
VehiclePoseArray waypoints\n\
\n\
bool success\n\
\n\
# Error number if action failed.\n\
int32 error_num\n\
int32 ERROR_LOST_NAV=1\n\
int32 ERROR_OTHER=-1\n\
string error_string\n\
\n\
\n\
================================================================================\n\
MSG: auv_msgs/VehiclePoseArray\n\
Header header\n\
VehiclePose[] poses\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.secs: seconds (stamp_secs) since epoch\n\
# * stamp.nsecs: nanoseconds since stamp_secs\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: auv_msgs/VehiclePose\n\
# Position and orientation of the vehicle. \n\
\n\
NED position\n\
RPY orientation\n\
\n\
================================================================================\n\
MSG: auv_msgs/NED\n\
# Position or velocity in the right-handed NED coordinate frame.\n\
\n\
# metres north, positive towards true north.\n\
float64 north\n\
\n\
# metres east, positive towards true east.\n\
float64 east\n\
\n\
# metres down, positive towards the centre of the earth.\n\
float64 depth\n\
\n\
================================================================================\n\
MSG: auv_msgs/RPY\n\
# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.\n\
\n\
# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.\n\
float32 roll\n\
\n\
# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.\n\
float32 pitch\n\
\n\
# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.\n\
float32 yaw\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.waypoints);
    stream.next(m.success);
    stream.next(m.error_num);
    stream.next(m.error_string);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct McmGenerateLawnMowerWaypointsResult_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::McmGenerateLawnMowerWaypointsResult_<ContainerAllocator> & v) 
  {
    s << indent << "waypoints: ";
s << std::endl;
    Printer< ::auv_msgs::VehiclePoseArray_<ContainerAllocator> >::stream(s, indent + "  ", v.waypoints);
    s << indent << "success: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.success);
    s << indent << "error_num: ";
    Printer<int32_t>::stream(s, indent + "  ", v.error_num);
    s << indent << "error_string: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.error_string);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_MCMGENERATELAWNMOWERWAYPOINTSRESULT_H

