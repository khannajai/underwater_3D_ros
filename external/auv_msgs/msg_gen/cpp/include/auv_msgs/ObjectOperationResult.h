/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/ObjectOperationResult.msg */
#ifndef AUV_MSGS_MESSAGE_OBJECTOPERATIONRESULT_H
#define AUV_MSGS_MESSAGE_OBJECTOPERATIONRESULT_H
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
struct ObjectOperationResult_ {
  typedef ObjectOperationResult_<ContainerAllocator> Type;

  ObjectOperationResult_()
  : success(false)
  , error_num(0)
  , error_string()
  {
  }

  ObjectOperationResult_(const ContainerAllocator& _alloc)
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

  enum { ERROR_LOST_NAV = 1 };
  enum { ERROR_OBJECT_NOT_FOUND = 2 };
  enum { ERROR_DETECTION = 3 };
  enum { ERROR_TRACKING = 4 };
  enum { ERROR_UNREACHABLE = 5 };
  enum { ERROR_SPEC_NOT_FOUND = 6 };
  enum { ERROR_OTHER = -1 };

  typedef boost::shared_ptr< ::auv_msgs::ObjectOperationResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::ObjectOperationResult_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct ObjectOperationResult
typedef  ::auv_msgs::ObjectOperationResult_<std::allocator<void> > ObjectOperationResult;

typedef boost::shared_ptr< ::auv_msgs::ObjectOperationResult> ObjectOperationResultPtr;
typedef boost::shared_ptr< ::auv_msgs::ObjectOperationResult const> ObjectOperationResultConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::ObjectOperationResult_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::ObjectOperationResult_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::ObjectOperationResult_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::ObjectOperationResult_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::ObjectOperationResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "210a0e926b4a1fd82dcea2d4e9bef5d1";
  }

  static const char* value(const  ::auv_msgs::ObjectOperationResult_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x210a0e926b4a1fd8ULL;
  static const uint64_t static_value2 = 0x2dcea2d4e9bef5d1ULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::ObjectOperationResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/ObjectOperationResult";
  }

  static const char* value(const  ::auv_msgs::ObjectOperationResult_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::ObjectOperationResult_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
bool success\n\
\n\
# Error number if action failed.\n\
int32 error_num\n\
int32 ERROR_LOST_NAV=1\n\
int32 ERROR_OBJECT_NOT_FOUND=2\n\
int32 ERROR_DETECTION=3\n\
int32 ERROR_TRACKING=4\n\
int32 ERROR_UNREACHABLE=5\n\
int32 ERROR_SPEC_NOT_FOUND=6\n\
int32 ERROR_OTHER=-1\n\
\n\
string error_string\n\
\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::ObjectOperationResult_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::ObjectOperationResult_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.success);
    stream.next(m.error_num);
    stream.next(m.error_string);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct ObjectOperationResult_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::ObjectOperationResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::ObjectOperationResult_<ContainerAllocator> & v) 
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

#endif // AUV_MSGS_MESSAGE_OBJECTOPERATIONRESULT_H

