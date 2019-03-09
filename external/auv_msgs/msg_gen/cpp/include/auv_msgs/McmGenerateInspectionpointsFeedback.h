/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/McmGenerateInspectionpointsFeedback.msg */
#ifndef AUV_MSGS_MESSAGE_MCMGENERATEINSPECTIONPOINTSFEEDBACK_H
#define AUV_MSGS_MESSAGE_MCMGENERATEINSPECTIONPOINTSFEEDBACK_H
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
struct McmGenerateInspectionpointsFeedback_ {
  typedef McmGenerateInspectionpointsFeedback_<ContainerAllocator> Type;

  McmGenerateInspectionpointsFeedback_()
  : completed_action_name()
  {
  }

  McmGenerateInspectionpointsFeedback_(const ContainerAllocator& _alloc)
  : completed_action_name(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _completed_action_name_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  completed_action_name;


  typedef boost::shared_ptr< ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct McmGenerateInspectionpointsFeedback
typedef  ::auv_msgs::McmGenerateInspectionpointsFeedback_<std::allocator<void> > McmGenerateInspectionpointsFeedback;

typedef boost::shared_ptr< ::auv_msgs::McmGenerateInspectionpointsFeedback> McmGenerateInspectionpointsFeedbackPtr;
typedef boost::shared_ptr< ::auv_msgs::McmGenerateInspectionpointsFeedback const> McmGenerateInspectionpointsFeedbackConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "6c9cb9711195e37ad78edf6fd1b1dd5d";
  }

  static const char* value(const  ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x6c9cb9711195e37aULL;
  static const uint64_t static_value2 = 0xd78edf6fd1b1dd5dULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/McmGenerateInspectionpointsFeedback";
  }

  static const char* value(const  ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
string completed_action_name\n\
\n\
\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.completed_action_name);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct McmGenerateInspectionpointsFeedback_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::McmGenerateInspectionpointsFeedback_<ContainerAllocator> & v) 
  {
    s << indent << "completed_action_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.completed_action_name);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_MCMGENERATEINSPECTIONPOINTSFEEDBACK_H
