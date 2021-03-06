/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/FollowLeaderWithPathFeedback.msg */
#ifndef AUV_MSGS_MESSAGE_FOLLOWLEADERWITHPATHFEEDBACK_H
#define AUV_MSGS_MESSAGE_FOLLOWLEADERWITHPATHFEEDBACK_H
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
struct FollowLeaderWithPathFeedback_ {
  typedef FollowLeaderWithPathFeedback_<ContainerAllocator> Type;

  FollowLeaderWithPathFeedback_()
  : num_waypoints(0)
  , num_waypoints_completed(0)
  {
  }

  FollowLeaderWithPathFeedback_(const ContainerAllocator& _alloc)
  : num_waypoints(0)
  , num_waypoints_completed(0)
  {
  }

  typedef uint32_t _num_waypoints_type;
  uint32_t num_waypoints;

  typedef uint32_t _num_waypoints_completed_type;
  uint32_t num_waypoints_completed;


  typedef boost::shared_ptr< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct FollowLeaderWithPathFeedback
typedef  ::auv_msgs::FollowLeaderWithPathFeedback_<std::allocator<void> > FollowLeaderWithPathFeedback;

typedef boost::shared_ptr< ::auv_msgs::FollowLeaderWithPathFeedback> FollowLeaderWithPathFeedbackPtr;
typedef boost::shared_ptr< ::auv_msgs::FollowLeaderWithPathFeedback const> FollowLeaderWithPathFeedbackConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "3c2cbfd602e6734bdf74aab898c1275b";
  }

  static const char* value(const  ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x3c2cbfd602e6734bULL;
  static const uint64_t static_value2 = 0xdf74aab898c1275bULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/FollowLeaderWithPathFeedback";
  }

  static const char* value(const  ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
uint32 num_waypoints\n\
\n\
uint32 num_waypoints_completed\n\
\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct IsFixedSize< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.num_waypoints);
    stream.next(m.num_waypoints_completed);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct FollowLeaderWithPathFeedback_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::FollowLeaderWithPathFeedback_<ContainerAllocator> & v) 
  {
    s << indent << "num_waypoints: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.num_waypoints);
    s << indent << "num_waypoints_completed: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.num_waypoints_completed);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_FOLLOWLEADERWITHPATHFEEDBACK_H

