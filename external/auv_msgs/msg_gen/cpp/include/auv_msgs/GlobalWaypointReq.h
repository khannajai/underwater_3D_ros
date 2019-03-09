/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/GlobalWaypointReq.msg */
#ifndef AUV_MSGS_MESSAGE_GLOBALWAYPOINTREQ_H
#define AUV_MSGS_MESSAGE_GLOBALWAYPOINTREQ_H
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

#include "std_msgs/Header.h"
#include "auv_msgs/GoalDescriptor.h"
#include "auv_msgs/DecimalLatLon.h"
#include "auv_msgs/RPY.h"
#include "auv_msgs/Bool6Axis.h"
#include "geometry_msgs/Vector3.h"
#include "auv_msgs/RPY.h"

namespace auv_msgs
{
template <class ContainerAllocator>
struct GlobalWaypointReq_ {
  typedef GlobalWaypointReq_<ContainerAllocator> Type;

  GlobalWaypointReq_()
  : header()
  , goal()
  , altitude_mode(false)
  , position()
  , depth(0.0)
  , altitude(0.0)
  , orientation()
  , disable_axis()
  , position_tolerance()
  , orientation_tolerance()
  {
  }

  GlobalWaypointReq_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , goal(_alloc)
  , altitude_mode(false)
  , position(_alloc)
  , depth(0.0)
  , altitude(0.0)
  , orientation(_alloc)
  , disable_axis(_alloc)
  , position_tolerance(_alloc)
  , orientation_tolerance(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef  ::auv_msgs::GoalDescriptor_<ContainerAllocator>  _goal_type;
   ::auv_msgs::GoalDescriptor_<ContainerAllocator>  goal;

  typedef uint8_t _altitude_mode_type;
  uint8_t altitude_mode;

  typedef  ::auv_msgs::DecimalLatLon_<ContainerAllocator>  _position_type;
   ::auv_msgs::DecimalLatLon_<ContainerAllocator>  position;

  typedef float _depth_type;
  float depth;

  typedef float _altitude_type;
  float altitude;

  typedef  ::auv_msgs::RPY_<ContainerAllocator>  _orientation_type;
   ::auv_msgs::RPY_<ContainerAllocator>  orientation;

  typedef  ::auv_msgs::Bool6Axis_<ContainerAllocator>  _disable_axis_type;
   ::auv_msgs::Bool6Axis_<ContainerAllocator>  disable_axis;

  typedef  ::geometry_msgs::Vector3_<ContainerAllocator>  _position_tolerance_type;
   ::geometry_msgs::Vector3_<ContainerAllocator>  position_tolerance;

  typedef  ::auv_msgs::RPY_<ContainerAllocator>  _orientation_tolerance_type;
   ::auv_msgs::RPY_<ContainerAllocator>  orientation_tolerance;


  typedef boost::shared_ptr< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct GlobalWaypointReq
typedef  ::auv_msgs::GlobalWaypointReq_<std::allocator<void> > GlobalWaypointReq;

typedef boost::shared_ptr< ::auv_msgs::GlobalWaypointReq> GlobalWaypointReqPtr;
typedef boost::shared_ptr< ::auv_msgs::GlobalWaypointReq const> GlobalWaypointReqConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> > {
  static const char* value() 
  {
    return "f90e850f757b53f3641907daf353af05";
  }

  static const char* value(const  ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xf90e850f757b53f3ULL;
  static const uint64_t static_value2 = 0x641907daf353af05ULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/GlobalWaypointReq";
  }

  static const char* value(const  ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# Global frame (absolute) waypoint request to pilot.\n\
# A new waypoint request should contain a different goal.id\n\
# (incremented) from previous requests. This same message should then\n\
# be re-sent at 5-10 Hz. Conversion to world frame can be done once at\n\
# the time the new goal.{requestor, id} is received.\n\
\n\
Header header\n\
\n\
# Common waypoint details\n\
GoalDescriptor goal\n\
\n\
# If true, maintain Z position relative to altitude, otherwise depth.\n\
bool altitude_mode\n\
\n\
DecimalLatLon position\n\
float32 depth\n\
float32 altitude\n\
RPY orientation\n\
\n\
# Axes of control to disable, in body frame.\n\
Bool6Axis disable_axis\n\
\n\
# Tolerances are in body frame, zero indicates pilot default should be used.\n\
geometry_msgs/Vector3 position_tolerance\n\
RPY orientation_tolerance\n\
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
MSG: auv_msgs/GoalDescriptor\n\
# Contains values common to all waypoint request and status messages.\n\
# Waypoint goals with higher priority trump lower priority goals. For\n\
# goals of the same priority, the pilot should follow the latest\n\
# received.\n\
\n\
# Name of the requesting node, used with id to identify the request.\n\
string requester\n\
\n\
# Goal ID for the request\n\
uint32 id\n\
\n\
uint32 priority\n\
uint32 PRIORITY_LOW = 0\n\
uint32 PRIORITY_NORMAL = 10\n\
uint32 PRIORITY_AVOID_OBSTACLE = 20\n\
uint32 PRIORITY_EMERGENCY = 30\n\
uint32 PRIORITY_MANUAL_OVERRIDE  = 40\n\
\n\
================================================================================\n\
MSG: auv_msgs/DecimalLatLon\n\
# Latitude and longitude, in decimal form.\n\
\n\
float64 latitude\n\
float64 longitude\n\
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
================================================================================\n\
MSG: auv_msgs/Bool6Axis\n\
bool x\n\
bool y\n\
bool z\n\
bool roll\n\
bool pitch\n\
bool yaw\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const  ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.goal);
    stream.next(m.altitude_mode);
    stream.next(m.position);
    stream.next(m.depth);
    stream.next(m.altitude);
    stream.next(m.orientation);
    stream.next(m.disable_axis);
    stream.next(m.position_tolerance);
    stream.next(m.orientation_tolerance);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct GlobalWaypointReq_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::GlobalWaypointReq_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal: ";
s << std::endl;
    Printer< ::auv_msgs::GoalDescriptor_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
    s << indent << "altitude_mode: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.altitude_mode);
    s << indent << "position: ";
s << std::endl;
    Printer< ::auv_msgs::DecimalLatLon_<ContainerAllocator> >::stream(s, indent + "  ", v.position);
    s << indent << "depth: ";
    Printer<float>::stream(s, indent + "  ", v.depth);
    s << indent << "altitude: ";
    Printer<float>::stream(s, indent + "  ", v.altitude);
    s << indent << "orientation: ";
s << std::endl;
    Printer< ::auv_msgs::RPY_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation);
    s << indent << "disable_axis: ";
s << std::endl;
    Printer< ::auv_msgs::Bool6Axis_<ContainerAllocator> >::stream(s, indent + "  ", v.disable_axis);
    s << indent << "position_tolerance: ";
s << std::endl;
    Printer< ::geometry_msgs::Vector3_<ContainerAllocator> >::stream(s, indent + "  ", v.position_tolerance);
    s << indent << "orientation_tolerance: ";
s << std::endl;
    Printer< ::auv_msgs::RPY_<ContainerAllocator> >::stream(s, indent + "  ", v.orientation_tolerance);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_GLOBALWAYPOINTREQ_H

