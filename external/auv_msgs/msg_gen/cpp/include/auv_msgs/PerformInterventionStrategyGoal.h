/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/PerformInterventionStrategyGoal.msg */
#ifndef AUV_MSGS_MESSAGE_PERFORMINTERVENTIONSTRATEGYGOAL_H
#define AUV_MSGS_MESSAGE_PERFORMINTERVENTIONSTRATEGYGOAL_H
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
struct PerformInterventionStrategyGoal_ {
  typedef PerformInterventionStrategyGoal_<ContainerAllocator> Type;

  PerformInterventionStrategyGoal_()
  : intervention_spec_id()
  , task_index(0)
  , strategy_index(0)
  {
  }

  PerformInterventionStrategyGoal_(const ContainerAllocator& _alloc)
  : intervention_spec_id(_alloc)
  , task_index(0)
  , strategy_index(0)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _intervention_spec_id_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  intervention_spec_id;

  typedef uint32_t _task_index_type;
  uint32_t task_index;

  typedef uint32_t _strategy_index_type;
  uint32_t strategy_index;


  typedef boost::shared_ptr< ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct PerformInterventionStrategyGoal
typedef  ::auv_msgs::PerformInterventionStrategyGoal_<std::allocator<void> > PerformInterventionStrategyGoal;

typedef boost::shared_ptr< ::auv_msgs::PerformInterventionStrategyGoal> PerformInterventionStrategyGoalPtr;
typedef boost::shared_ptr< ::auv_msgs::PerformInterventionStrategyGoal const> PerformInterventionStrategyGoalConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "49b002bde3ed238f2471ade43ca02aa0";
  }

  static const char* value(const  ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x49b002bde3ed238fULL;
  static const uint64_t static_value2 = 0x2471ade43ca02aa0ULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/PerformInterventionStrategyGoal";
  }

  static const char* value(const  ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
# This action requests that a specific intervention strategy be attempted,\n\
# specified by unique reference to an InterventionSpec, and task and\n\
# strategy indices within that spec.\n\
\n\
string intervention_spec_id\n\
uint32 task_index\n\
uint32 strategy_index\n\
\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.intervention_spec_id);
    stream.next(m.task_index);
    stream.next(m.strategy_index);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct PerformInterventionStrategyGoal_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::PerformInterventionStrategyGoal_<ContainerAllocator> & v) 
  {
    s << indent << "intervention_spec_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.intervention_spec_id);
    s << indent << "task_index: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.task_index);
    s << indent << "strategy_index: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.strategy_index);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_PERFORMINTERVENTIONSTRATEGYGOAL_H
