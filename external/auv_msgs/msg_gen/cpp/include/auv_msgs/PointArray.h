/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/PointArray.msg */
#ifndef AUV_MSGS_MESSAGE_POINTARRAY_H
#define AUV_MSGS_MESSAGE_POINTARRAY_H
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
struct PointArray_ {
  typedef PointArray_<ContainerAllocator> Type;

  PointArray_()
  : header()
  , point()
  {
  }

  PointArray_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , point(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  _point_type;
  std::vector< ::geometry_msgs::Point_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::geometry_msgs::Point_<ContainerAllocator> >::other >  point;


  typedef boost::shared_ptr< ::auv_msgs::PointArray_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::PointArray_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct PointArray
typedef  ::auv_msgs::PointArray_<std::allocator<void> > PointArray;

typedef boost::shared_ptr< ::auv_msgs::PointArray> PointArrayPtr;
typedef boost::shared_ptr< ::auv_msgs::PointArray const> PointArrayConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::PointArray_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::PointArray_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::PointArray_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::PointArray_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::PointArray_<ContainerAllocator> > {
  static const char* value() 
  {
    return "c63aecb41bfdfd6b7e1fac37c7cbe7bf";
  }

  static const char* value(const  ::auv_msgs::PointArray_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xc63aecb41bfdfd6bULL;
  static const uint64_t static_value2 = 0x7e1fac37c7cbe7bfULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::PointArray_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/PointArray";
  }

  static const char* value(const  ::auv_msgs::PointArray_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::PointArray_<ContainerAllocator> > {
  static const char* value() 
  {
    return "Header header\n\
\n\
geometry_msgs/Point[] point\n\
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

  static const char* value(const  ::auv_msgs::PointArray_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::auv_msgs::PointArray_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::auv_msgs::PointArray_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::PointArray_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.point);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct PointArray_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::PointArray_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::PointArray_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "point[]" << std::endl;
    for (size_t i = 0; i < v.point.size(); ++i)
    {
      s << indent << "  point[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::geometry_msgs::Point_<ContainerAllocator> >::stream(s, indent + "    ", v.point[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_POINTARRAY_H

