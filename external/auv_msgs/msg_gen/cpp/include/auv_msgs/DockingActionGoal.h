/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/DockingActionGoal.msg */
#ifndef AUV_MSGS_MESSAGE_DOCKINGACTIONGOAL_H
#define AUV_MSGS_MESSAGE_DOCKINGACTIONGOAL_H
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
#include "actionlib_msgs/GoalID.h"
#include "auv_msgs/DockingGoal.h"

namespace auv_msgs
{
template <class ContainerAllocator>
struct DockingActionGoal_ {
  typedef DockingActionGoal_<ContainerAllocator> Type;

  DockingActionGoal_()
  : header()
  , goal_id()
  , goal()
  {
  }

  DockingActionGoal_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , goal_id(_alloc)
  , goal(_alloc)
  {
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
   ::actionlib_msgs::GoalID_<ContainerAllocator>  goal_id;

  typedef  ::auv_msgs::DockingGoal_<ContainerAllocator>  _goal_type;
   ::auv_msgs::DockingGoal_<ContainerAllocator>  goal;


  typedef boost::shared_ptr< ::auv_msgs::DockingActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::DockingActionGoal_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct DockingActionGoal
typedef  ::auv_msgs::DockingActionGoal_<std::allocator<void> > DockingActionGoal;

typedef boost::shared_ptr< ::auv_msgs::DockingActionGoal> DockingActionGoalPtr;
typedef boost::shared_ptr< ::auv_msgs::DockingActionGoal const> DockingActionGoalConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::DockingActionGoal_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::DockingActionGoal_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::DockingActionGoal_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::DockingActionGoal_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::DockingActionGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "900415722beda7f7b3df991f9b7ff964";
  }

  static const char* value(const  ::auv_msgs::DockingActionGoal_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x900415722beda7f7ULL;
  static const uint64_t static_value2 = 0xb3df991f9b7ff964ULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::DockingActionGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/DockingActionGoal";
  }

  static const char* value(const  ::auv_msgs::DockingActionGoal_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::DockingActionGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
DockingGoal goal\n\
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
MSG: actionlib_msgs/GoalID\n\
# The stamp should store the time at which this goal was requested.\n\
# It is used by an action server when it tries to preempt all\n\
# goals that were requested before a certain time\n\
time stamp\n\
\n\
# The id provides a way to associate feedback and\n\
# result message with specific goal requests. The id\n\
# specified must be unique.\n\
string id\n\
\n\
\n\
================================================================================\n\
MSG: auv_msgs/DockingGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# Homing which can be with a simulation beacon or using USBL\n\
\n\
# If we specifiy in ROS parameters fakebeacon, we will take the position from here instead of USBL\n\
\n\
NED beacon\n\
\n\
\n\
================================================================================\n\
MSG: auv_msgs/NED\n\
# Position or velocity in the right-handed NED coordinate frame.\n\
\n\
# metres north, positive towards true north.\n\
float64 north\n\
\n\
# metres east, positive towards true east.\n\
float64 east\n\
\n\
# metres down, positive towards the centre of the earth.\n\
float64 depth\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::DockingActionGoal_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::auv_msgs::DockingActionGoal_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::auv_msgs::DockingActionGoal_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::DockingActionGoal_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.goal_id);
    stream.next(m.goal);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct DockingActionGoal_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::DockingActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::DockingActionGoal_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
s << std::endl;
    Printer< ::auv_msgs::DockingGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_DOCKINGACTIONGOAL_H

