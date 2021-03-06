/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/VideoSensingQualityFeedback.msg */
#ifndef AUV_MSGS_MESSAGE_VIDEOSENSINGQUALITYFEEDBACK_H
#define AUV_MSGS_MESSAGE_VIDEOSENSINGQUALITYFEEDBACK_H
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


namespace auv_msgs
{
template <class ContainerAllocator>
struct VideoSensingQualityFeedback_ {
  typedef VideoSensingQualityFeedback_<ContainerAllocator> Type;

  VideoSensingQualityFeedback_()
  : contrast(0.0)
  , blur(0.0)
  {
  }

  VideoSensingQualityFeedback_(const ContainerAllocator& _alloc)
  : contrast(0.0)
  , blur(0.0)
  {
  }

  typedef double _contrast_type;
  double contrast;

  typedef double _blur_type;
  double blur;


  typedef boost::shared_ptr< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct VideoSensingQualityFeedback
typedef  ::auv_msgs::VideoSensingQualityFeedback_<std::allocator<void> > VideoSensingQualityFeedback;

typedef boost::shared_ptr< ::auv_msgs::VideoSensingQualityFeedback> VideoSensingQualityFeedbackPtr;
typedef boost::shared_ptr< ::auv_msgs::VideoSensingQualityFeedback const> VideoSensingQualityFeedbackConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "522f2e99b12f4ead632baa4df3c5dc25";
  }

  static const char* value(const  ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x522f2e99b12f4eadULL;
  static const uint64_t static_value2 = 0x632baa4df3c5dc25ULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/VideoSensingQualityFeedback";
  }

  static const char* value(const  ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
float64 contrast\n\
\n\
float64 blur\n\
\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.contrast);
    stream.next(m.blur);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct VideoSensingQualityFeedback_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::VideoSensingQualityFeedback_<ContainerAllocator> & v) 
  {
    s << indent << "contrast: ";
    Printer<double>::stream(s, indent + "  ", v.contrast);
    s << indent << "blur: ";
    Printer<double>::stream(s, indent + "  ", v.blur);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_VIDEOSENSINGQUALITYFEEDBACK_H

