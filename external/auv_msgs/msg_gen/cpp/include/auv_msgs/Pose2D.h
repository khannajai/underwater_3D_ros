/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/Pose2D.msg */
#ifndef AUV_MSGS_MESSAGE_POSE2D_H
#define AUV_MSGS_MESSAGE_POSE2D_H
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

namespace auv_msgs
{
template <class ContainerAllocator>
struct Pose2D_ {
  typedef Pose2D_<ContainerAllocator> Type;

  Pose2D_()
  : header()
  , x(0.0)
  , y(0.0)
  , angle(0.0)
  , detect(false)
  {
  }

  Pose2D_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , x(0.0)
  , y(0.0)
  , angle(0.0)
  , detect(false)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef float _x_type;
  float x;

  typedef float _y_type;
  float y;

  typedef float _angle_type;
  float angle;

  typedef uint8_t _detect_type;
  uint8_t detect;


  typedef boost::shared_ptr< ::auv_msgs::Pose2D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::Pose2D_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct Pose2D
typedef  ::auv_msgs::Pose2D_<std::allocator<void> > Pose2D;

typedef boost::shared_ptr< ::auv_msgs::Pose2D> Pose2DPtr;
typedef boost::shared_ptr< ::auv_msgs::Pose2D const> Pose2DConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::Pose2D_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::Pose2D_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::Pose2D_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::Pose2D_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::Pose2D_<ContainerAllocator> > {
  static const char* value() 
  {
    return "157f8a05647077ea0d54b7289eb6fd35";
  }

  static const char* value(const  ::auv_msgs::Pose2D_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x157f8a05647077eaULL;
  static const uint64_t static_value2 = 0x0d54b7289eb6fd35ULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::Pose2D_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/Pose2D";
  }

  static const char* value(const  ::auv_msgs::Pose2D_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::Pose2D_<ContainerAllocator> > {
  static const char* value() 
  {
    return "#represents the disance and angle of something on a plane e.g. a wall on a sonar feed\n\
\n\
#timestamp, FRAME OF REFERENCE!\n\
Header header\n\
#data\n\
float32 x\n\
float32 y\n\
float32 angle\n\
bool detect\n\
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
";
  }

  static const char* value(const  ::auv_msgs::Pose2D_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::auv_msgs::Pose2D_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::auv_msgs::Pose2D_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::Pose2D_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.x);
    stream.next(m.y);
    stream.next(m.angle);
    stream.next(m.detect);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Pose2D_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::Pose2D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::Pose2D_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "x: ";
    Printer<float>::stream(s, indent + "  ", v.x);
    s << indent << "y: ";
    Printer<float>::stream(s, indent + "  ", v.y);
    s << indent << "angle: ";
    Printer<float>::stream(s, indent + "  ", v.angle);
    s << indent << "detect: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.detect);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_POSE2D_H

