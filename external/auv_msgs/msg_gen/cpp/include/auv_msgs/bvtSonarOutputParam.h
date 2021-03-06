/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/bvtSonarOutputParam.msg */
#ifndef AUV_MSGS_MESSAGE_BVTSONAROUTPUTPARAM_H
#define AUV_MSGS_MESSAGE_BVTSONAROUTPUTPARAM_H
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
struct bvtSonarOutputParam_ {
  typedef bvtSonarOutputParam_<ContainerAllocator> Type;

  bvtSonarOutputParam_()
  : header()
  , originRow(0.0)
  , originCol(0.0)
  , minRange(0.0)
  , maxRange(0.0)
  , minFOV(0.0)
  , maxFOV(0.0)
  , imgWidth(0.0)
  , imgHeight(0.0)
  , rangeRes(0.0)
  , bearingRes(0.0)
  {
  }

  bvtSonarOutputParam_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , originRow(0.0)
  , originCol(0.0)
  , minRange(0.0)
  , maxRange(0.0)
  , minFOV(0.0)
  , maxFOV(0.0)
  , imgWidth(0.0)
  , imgHeight(0.0)
  , rangeRes(0.0)
  , bearingRes(0.0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef float _originRow_type;
  float originRow;

  typedef float _originCol_type;
  float originCol;

  typedef float _minRange_type;
  float minRange;

  typedef float _maxRange_type;
  float maxRange;

  typedef float _minFOV_type;
  float minFOV;

  typedef float _maxFOV_type;
  float maxFOV;

  typedef float _imgWidth_type;
  float imgWidth;

  typedef float _imgHeight_type;
  float imgHeight;

  typedef float _rangeRes_type;
  float rangeRes;

  typedef float _bearingRes_type;
  float bearingRes;


  typedef boost::shared_ptr< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct bvtSonarOutputParam
typedef  ::auv_msgs::bvtSonarOutputParam_<std::allocator<void> > bvtSonarOutputParam;

typedef boost::shared_ptr< ::auv_msgs::bvtSonarOutputParam> bvtSonarOutputParamPtr;
typedef boost::shared_ptr< ::auv_msgs::bvtSonarOutputParam const> bvtSonarOutputParamConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4f2a1f53c97861b311eb9f47531f437f";
  }

  static const char* value(const  ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x4f2a1f53c97861b3ULL;
  static const uint64_t static_value2 = 0x11eb9f47531f437fULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/bvtSonarOutputParam";
  }

  static const char* value(const  ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> > {
  static const char* value() 
  {
    return "#represents outputs of bvt sonar accompanying the sonar image\n\
\n\
#timestamp, FRAME OF REFERENCE!\n\
Header header\n\
#data\n\
float32 originRow\n\
float32 originCol\n\
float32 minRange\n\
float32 maxRange\n\
float32 minFOV\n\
float32 maxFOV\n\
float32 imgWidth\n\
float32 imgHeight\n\
float32 rangeRes\n\
float32 bearingRes\n\
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

  static const char* value(const  ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.originRow);
    stream.next(m.originCol);
    stream.next(m.minRange);
    stream.next(m.maxRange);
    stream.next(m.minFOV);
    stream.next(m.maxFOV);
    stream.next(m.imgWidth);
    stream.next(m.imgHeight);
    stream.next(m.rangeRes);
    stream.next(m.bearingRes);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct bvtSonarOutputParam_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::bvtSonarOutputParam_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "originRow: ";
    Printer<float>::stream(s, indent + "  ", v.originRow);
    s << indent << "originCol: ";
    Printer<float>::stream(s, indent + "  ", v.originCol);
    s << indent << "minRange: ";
    Printer<float>::stream(s, indent + "  ", v.minRange);
    s << indent << "maxRange: ";
    Printer<float>::stream(s, indent + "  ", v.maxRange);
    s << indent << "minFOV: ";
    Printer<float>::stream(s, indent + "  ", v.minFOV);
    s << indent << "maxFOV: ";
    Printer<float>::stream(s, indent + "  ", v.maxFOV);
    s << indent << "imgWidth: ";
    Printer<float>::stream(s, indent + "  ", v.imgWidth);
    s << indent << "imgHeight: ";
    Printer<float>::stream(s, indent + "  ", v.imgHeight);
    s << indent << "rangeRes: ";
    Printer<float>::stream(s, indent + "  ", v.rangeRes);
    s << indent << "bearingRes: ";
    Printer<float>::stream(s, indent + "  ", v.bearingRes);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_BVTSONAROUTPUTPARAM_H

