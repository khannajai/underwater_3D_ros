/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/ObjectOperationFeedback.msg */
#ifndef AUV_MSGS_MESSAGE_OBJECTOPERATIONFEEDBACK_H
#define AUV_MSGS_MESSAGE_OBJECTOPERATIONFEEDBACK_H
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
#include "std_msgs/Duration.h"

namespace auv_msgs
{
template <class ContainerAllocator>
struct ObjectOperationFeedback_ {
  typedef ObjectOperationFeedback_<ContainerAllocator> Type;

  ObjectOperationFeedback_()
  : header()
  , state()
  , num_waypoints(0)
  , num_waypoints_completed(0)
  , intervention_percent_complete(0.0)
  , intervention_est_time_left()
  , step(0)
  {
  }

  ObjectOperationFeedback_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , state(_alloc)
  , num_waypoints(0)
  , num_waypoints_completed(0)
  , intervention_percent_complete(0.0)
  , intervention_est_time_left(_alloc)
  , step(0)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _state_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  state;

  typedef uint32_t _num_waypoints_type;
  uint32_t num_waypoints;

  typedef uint32_t _num_waypoints_completed_type;
  uint32_t num_waypoints_completed;

  typedef float _intervention_percent_complete_type;
  float intervention_percent_complete;

  typedef  ::std_msgs::Duration_<ContainerAllocator>  _intervention_est_time_left_type;
   ::std_msgs::Duration_<ContainerAllocator>  intervention_est_time_left;

  typedef int32_t _step_type;
  int32_t step;

  enum { STEP_REACHING = 1 };
  enum { STEP_GRASPING = 2 };
  enum { STEP_TASK = 3 };
  enum { STEP_OTHER = -1 };

  typedef boost::shared_ptr< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct ObjectOperationFeedback
typedef  ::auv_msgs::ObjectOperationFeedback_<std::allocator<void> > ObjectOperationFeedback;

typedef boost::shared_ptr< ::auv_msgs::ObjectOperationFeedback> ObjectOperationFeedbackPtr;
typedef boost::shared_ptr< ::auv_msgs::ObjectOperationFeedback const> ObjectOperationFeedbackConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "2ba8daaeaac47494bd7f3b580ebdb69c";
  }

  static const char* value(const  ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x2ba8daaeaac47494ULL;
  static const uint64_t static_value2 = 0xbd7f3b580ebdb69cULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/ObjectOperationFeedback";
  }

  static const char* value(const  ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
\n\
# Action progress\n\
\n\
string state\n\
\n\
uint32 num_waypoints\n\
\n\
uint32 num_waypoints_completed\n\
\n\
float32 intervention_percent_complete\n\
\n\
std_msgs/Duration intervention_est_time_left\n\
\n\
int32 step\n\
int32 STEP_REACHING=1\n\
int32 STEP_GRASPING=2\n\
int32 STEP_TASK=3\n\
int32 STEP_OTHER=-1\n\
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
================================================================================\n\
MSG: std_msgs/Duration\n\
duration data\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.state);
    stream.next(m.num_waypoints);
    stream.next(m.num_waypoints_completed);
    stream.next(m.intervention_percent_complete);
    stream.next(m.intervention_est_time_left);
    stream.next(m.step);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct ObjectOperationFeedback_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::ObjectOperationFeedback_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "state: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.state);
    s << indent << "num_waypoints: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.num_waypoints);
    s << indent << "num_waypoints_completed: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.num_waypoints_completed);
    s << indent << "intervention_percent_complete: ";
    Printer<float>::stream(s, indent + "  ", v.intervention_percent_complete);
    s << indent << "intervention_est_time_left: ";
s << std::endl;
    Printer< ::std_msgs::Duration_<ContainerAllocator> >::stream(s, indent + "  ", v.intervention_est_time_left);
    s << indent << "step: ";
    Printer<int32_t>::stream(s, indent + "  ", v.step);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_OBJECTOPERATIONFEEDBACK_H

