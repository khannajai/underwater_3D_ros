/* Auto-generated by genmsg_cpp for file /home/osl/src/nessie/ros/nessie_msgs/msg/LBLTimeDelay.msg */
#ifndef NESSIE_MSGS_MESSAGE_LBLTIMEDELAY_H
#define NESSIE_MSGS_MESSAGE_LBLTIMEDELAY_H
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

namespace nessie_msgs
{
template <class ContainerAllocator>
struct LBLTimeDelay_ {
  typedef LBLTimeDelay_<ContainerAllocator> Type;

  LBLTimeDelay_()
  : header()
  , time_delay_a(0.0)
  , time_delay_b(0.0)
  , time_delay_c(0.0)
  , time_delay_d(0.0)
  {
  }

  LBLTimeDelay_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , time_delay_a(0.0)
  , time_delay_b(0.0)
  , time_delay_c(0.0)
  , time_delay_d(0.0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef float _time_delay_a_type;
  float time_delay_a;

  typedef float _time_delay_b_type;
  float time_delay_b;

  typedef float _time_delay_c_type;
  float time_delay_c;

  typedef float _time_delay_d_type;
  float time_delay_d;


  typedef boost::shared_ptr< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct LBLTimeDelay
typedef  ::nessie_msgs::LBLTimeDelay_<std::allocator<void> > LBLTimeDelay;

typedef boost::shared_ptr< ::nessie_msgs::LBLTimeDelay> LBLTimeDelayPtr;
typedef boost::shared_ptr< ::nessie_msgs::LBLTimeDelay const> LBLTimeDelayConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace nessie_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> > {
  static const char* value() 
  {
    return "696b34e1cb3a938882ac6be4f28b2794";
  }

  static const char* value(const  ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x696b34e1cb3a9388ULL;
  static const uint64_t static_value2 = 0x82ac6be4f28b2794ULL;
};

template<class ContainerAllocator>
struct DataType< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> > {
  static const char* value() 
  {
    return "nessie_msgs/LBLTimeDelay";
  }

  static const char* value(const  ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# Used to report time delays from a set of LBL transponders, which are\n\
# pinged by the modem.\n\
\n\
Header header                   # standard message beader\n\
\n\
\n\
# Time delay for each source, zero means invalid \n\
\n\
float32 time_delay_a\n\
float32 time_delay_b\n\
float32 time_delay_c\n\
float32 time_delay_d\n\
\n\
\n\
\n\
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

  static const char* value(const  ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.time_delay_a);
    stream.next(m.time_delay_b);
    stream.next(m.time_delay_c);
    stream.next(m.time_delay_d);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct LBLTimeDelay_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::nessie_msgs::LBLTimeDelay_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "time_delay_a: ";
    Printer<float>::stream(s, indent + "  ", v.time_delay_a);
    s << indent << "time_delay_b: ";
    Printer<float>::stream(s, indent + "  ", v.time_delay_b);
    s << indent << "time_delay_c: ";
    Printer<float>::stream(s, indent + "  ", v.time_delay_c);
    s << indent << "time_delay_d: ";
    Printer<float>::stream(s, indent + "  ", v.time_delay_d);
  }
};


} // namespace message_operations
} // namespace ros

#endif // NESSIE_MSGS_MESSAGE_LBLTIMEDELAY_H
