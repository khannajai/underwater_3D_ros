/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/ObserveAction.msg */
#ifndef AUV_MSGS_MESSAGE_OBSERVEACTION_H
#define AUV_MSGS_MESSAGE_OBSERVEACTION_H
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

#include "auv_msgs/ObserveActionGoal.h"
#include "auv_msgs/ObserveActionResult.h"
#include "auv_msgs/ObserveActionFeedback.h"

namespace auv_msgs
{
template <class ContainerAllocator>
struct ObserveAction_ {
  typedef ObserveAction_<ContainerAllocator> Type;

  ObserveAction_()
  : action_goal()
  , action_result()
  , action_feedback()
  {
  }

  ObserveAction_(const ContainerAllocator& _alloc)
  : action_goal(_alloc)
  , action_result(_alloc)
  , action_feedback(_alloc)
  {
  }

  typedef  ::auv_msgs::ObserveActionGoal_<ContainerAllocator>  _action_goal_type;
   ::auv_msgs::ObserveActionGoal_<ContainerAllocator>  action_goal;

  typedef  ::auv_msgs::ObserveActionResult_<ContainerAllocator>  _action_result_type;
   ::auv_msgs::ObserveActionResult_<ContainerAllocator>  action_result;

  typedef  ::auv_msgs::ObserveActionFeedback_<ContainerAllocator>  _action_feedback_type;
   ::auv_msgs::ObserveActionFeedback_<ContainerAllocator>  action_feedback;


  typedef boost::shared_ptr< ::auv_msgs::ObserveAction_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::ObserveAction_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct ObserveAction
typedef  ::auv_msgs::ObserveAction_<std::allocator<void> > ObserveAction;

typedef boost::shared_ptr< ::auv_msgs::ObserveAction> ObserveActionPtr;
typedef boost::shared_ptr< ::auv_msgs::ObserveAction const> ObserveActionConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::ObserveAction_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::ObserveAction_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::ObserveAction_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::ObserveAction_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::ObserveAction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "aaf40a914caa3faa330183bae5a47e3e";
  }

  static const char* value(const  ::auv_msgs::ObserveAction_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xaaf40a914caa3faaULL;
  static const uint64_t static_value2 = 0x330183bae5a47e3eULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::ObserveAction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/ObserveAction";
  }

  static const char* value(const  ::auv_msgs::ObserveAction_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::ObserveAction_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
ObserveActionGoal action_goal\n\
ObserveActionResult action_result\n\
ObserveActionFeedback action_feedback\n\
\n\
================================================================================\n\
MSG: auv_msgs/ObserveActionGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalID goal_id\n\
ObserveGoal goal\n\
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
MSG: auv_msgs/ObserveGoal\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
  \n\
\n\
\n\
================================================================================\n\
MSG: auv_msgs/ObserveActionResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
ObserveResult result\n\
\n\
================================================================================\n\
MSG: actionlib_msgs/GoalStatus\n\
GoalID goal_id\n\
uint8 status\n\
uint8 PENDING         = 0   # The goal has yet to be processed by the action server\n\
uint8 ACTIVE          = 1   # The goal is currently being processed by the action server\n\
uint8 PREEMPTED       = 2   # The goal received a cancel request after it started executing\n\
                            #   and has since completed its execution (Terminal State)\n\
uint8 SUCCEEDED       = 3   # The goal was achieved successfully by the action server (Terminal State)\n\
uint8 ABORTED         = 4   # The goal was aborted during execution by the action server due\n\
                            #    to some failure (Terminal State)\n\
uint8 REJECTED        = 5   # The goal was rejected by the action server without being processed,\n\
                            #    because the goal was unattainable or invalid (Terminal State)\n\
uint8 PREEMPTING      = 6   # The goal received a cancel request after it started executing\n\
                            #    and has not yet completed execution\n\
uint8 RECALLING       = 7   # The goal received a cancel request before it started executing,\n\
                            #    but the action server has not yet confirmed that the goal is canceled\n\
uint8 RECALLED        = 8   # The goal received a cancel request before it started executing\n\
                            #    and was successfully cancelled (Terminal State)\n\
uint8 LOST            = 9   # An action client can determine that a goal is LOST. This should not be\n\
                            #    sent over the wire by an action server\n\
\n\
#Allow for the user to associate a string with GoalStatus for debugging\n\
string text\n\
\n\
\n\
================================================================================\n\
MSG: auv_msgs/ObserveResult\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
bool success\n\
\n\
# Error number if action failed.\n\
int32 error_num\n\
int32 ERROR_LOST_NAV=1\n\
int32 ERROR_OTHER=-1\n\
\n\
string error_string\n\
\n\
\n\
================================================================================\n\
MSG: auv_msgs/ObserveActionFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
Header header\n\
actionlib_msgs/GoalStatus status\n\
ObserveFeedback feedback\n\
\n\
================================================================================\n\
MSG: auv_msgs/ObserveFeedback\n\
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::ObserveAction_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::ObserveAction_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.action_goal);
    stream.next(m.action_result);
    stream.next(m.action_feedback);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct ObserveAction_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::ObserveAction_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::ObserveAction_<ContainerAllocator> & v) 
  {
    s << indent << "action_goal: ";
s << std::endl;
    Printer< ::auv_msgs::ObserveActionGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.action_goal);
    s << indent << "action_result: ";
s << std::endl;
    Printer< ::auv_msgs::ObserveActionResult_<ContainerAllocator> >::stream(s, indent + "  ", v.action_result);
    s << indent << "action_feedback: ";
s << std::endl;
    Printer< ::auv_msgs::ObserveActionFeedback_<ContainerAllocator> >::stream(s, indent + "  ", v.action_feedback);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_OBSERVEACTION_H

