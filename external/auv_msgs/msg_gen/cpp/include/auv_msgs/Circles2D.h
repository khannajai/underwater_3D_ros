/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/Circles2D.msg */
#ifndef AUV_MSGS_MESSAGE_CIRCLES2D_H
#define AUV_MSGS_MESSAGE_CIRCLES2D_H
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
#include "geometry_msgs/Point.h"

namespace auv_msgs
{
template <class ContainerAllocator>
struct Circles2D_ {
  typedef Circles2D_<ContainerAllocator> Type;

  Circles2D_()
  : header()
  , center()
  , radius(0.0)
  {
  }

  Circles2D_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , center(_alloc)
  , radius(0.0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef  ::geometry_msgs::Point_<ContainerAllocator>  _center_type;
   ::geometry_msgs::Point_<ContainerAllocator>  center;

  typedef double _radius_type;
  double radius;


  typedef boost::shared_ptr< ::auv_msgs::Circles2D_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::Circles2D_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct Circles2D
typedef  ::auv_msgs::Circles2D_<std::allocator<void> > Circles2D;

typedef boost::shared_ptr< ::auv_msgs::Circles2D> Circles2DPtr;
typedef boost::shared_ptr< ::auv_msgs::Circles2D const> Circles2DConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::Circles2D_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::Circles2D_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::Circles2D_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::Circles2D_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::Circles2D_<ContainerAllocator> > {
  static const char* value() 
  {
    return "3ec3f1e4c9ed653d64f4a72bda22768b";
  }

  static const char* value(const  ::auv_msgs::Circles2D_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x3ec3f1e4c9ed653dULL;
  static const uint64_t static_value2 = 0x64f4a72bda22768bULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::Circles2D_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/Circles2D";
  }

  static const char* value(const  ::auv_msgs::Circles2D_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::Circles2D_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# Detected circles (x,y,radius) in a 2D image.\n\
\n\
Header header\n\
\n\
# Position of the center of the circle (x,y). z is unused.\n\
geometry_msgs/Point center\n\
\n\
float64 radius\n\
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
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::Circles2D_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::auv_msgs::Circles2D_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::auv_msgs::Circles2D_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::Circles2D_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.center);
    stream.next(m.radius);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct Circles2D_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::Circles2D_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::Circles2D_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "center: ";
s << std::endl;
    Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "  ", v.center);
    s << indent << "radius: ";
    Printer<double>::stream(s, indent + "  ", v.radius);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_CIRCLES2D_H

