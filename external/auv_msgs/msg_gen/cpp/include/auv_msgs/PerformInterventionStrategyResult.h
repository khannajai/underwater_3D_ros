/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/PerformInterventionStrategyResult.msg */
#ifndef AUV_MSGS_MESSAGE_PERFORMINTERVENTIONSTRATEGYRESULT_H
#define AUV_MSGS_MESSAGE_PERFORMINTERVENTIONSTRATEGYRESULT_H
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
struct PerformInterventionStrategyResult_ {
  typedef PerformInterventionStrategyResult_<ContainerAllocator> Type;

  PerformInterventionStrategyResult_()
  : success(false)
  , error_num(0)
  , error_string()
  {
  }

  PerformInterventionStrategyResult_(const ContainerAllocator& _alloc)
  : success(false)
  , error_num(0)
  , error_string(_alloc)
  {
  }

  typedef uint8_t _success_type;
  uint8_t success;

  typedef int32_t _error_num_type;
  int32_t error_num;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _error_string_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  error_string;

  enum { ERROR_DETECTION = 1 };
  enum { ERROR_TRACKING = 2 };
  enum { ERROR_UNREACHABLE = 3 };
  enum { ERROR_SPEC_NOT_FOUND = 4 };
  enum { ERROR_OTHER = -1 };

  typedef boost::shared_ptr< ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct PerformInterventionStrategyResult
typedef  ::auv_msgs::PerformInterventionStrategyResult_<std::allocator<void> > PerformInterventionStrategyResult;

typedef boost::shared_ptr< ::auv_msgs::PerformInterventionStrategyResult> PerformInterventionStrategyResultPtr;
typedef boost::shared_ptr< ::auv_msgs::PerformInterventionStrategyResult const> PerformInterventionStrategyResultConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "18febaf3a35d43da1c40538f9c308531";
  }

  static const char* value(const  ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x18febaf3a35d43daULL;
  static const uint64_t static_value2 = 0x1c40538f9c308531ULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/PerformInterventionStrategyResult";
  }

  static const char* value(const  ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
bool success\n\
\n\
# Error number if action failed.\n\
int32 error_num\n\
int32 ERROR_DETECTION=1\n\
int32 ERROR_TRACKING=2\n\
int32 ERROR_UNREACHABLE=3\n\
int32 ERROR_SPEC_NOT_FOUND=4\n\
int32 ERROR_OTHER=-1\n\
\n\
string error_string\n\
\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.success);
    stream.next(m.error_num);
    stream.next(m.error_string);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct PerformInterventionStrategyResult_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::PerformInterventionStrategyResult_<ContainerAllocator> & v) 
  {
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

#endif // AUV_MSGS_MESSAGE_PERFORMINTERVENTIONSTRATEGYRESULT_H

