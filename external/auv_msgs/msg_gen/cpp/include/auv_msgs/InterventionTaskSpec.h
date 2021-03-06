/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/InterventionTaskSpec.msg */
#ifndef AUV_MSGS_MESSAGE_INTERVENTIONTASKSPEC_H
#define AUV_MSGS_MESSAGE_INTERVENTIONTASKSPEC_H
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

#include "auv_msgs/InterventionStrategySpec.h"

namespace auv_msgs
{
template <class ContainerAllocator>
struct InterventionTaskSpec_ {
  typedef InterventionTaskSpec_<ContainerAllocator> Type;

  InterventionTaskSpec_()
  : task_type(0)
  , strategy_spec()
  {
  }

  InterventionTaskSpec_(const ContainerAllocator& _alloc)
  : task_type(0)
  , strategy_spec(_alloc)
  {
  }

  typedef int32_t _task_type_type;
  int32_t task_type;

  typedef std::vector< ::auv_msgs::InterventionStrategySpec_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::auv_msgs::InterventionStrategySpec_<ContainerAllocator> >::other >  _strategy_spec_type;
  std::vector< ::auv_msgs::InterventionStrategySpec_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::auv_msgs::InterventionStrategySpec_<ContainerAllocator> >::other >  strategy_spec;

  enum { TASK_RECOVERY = 1 };
  enum { TASK_HOOK_CABLE = 2 };
  enum { TASK_PUSH_BUTTON = 3 };
  enum { TASK_OPEN_VALVE = 4 };

  typedef boost::shared_ptr< ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::InterventionTaskSpec_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct InterventionTaskSpec
typedef  ::auv_msgs::InterventionTaskSpec_<std::allocator<void> > InterventionTaskSpec;

typedef boost::shared_ptr< ::auv_msgs::InterventionTaskSpec> InterventionTaskSpecPtr;
typedef boost::shared_ptr< ::auv_msgs::InterventionTaskSpec const> InterventionTaskSpecConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::InterventionTaskSpec_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> > {
  static const char* value() 
  {
    return "2b8fadd4bfa9a8a880fc736d196c3441";
  }

  static const char* value(const  ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x2b8fadd4bfa9a8a8ULL;
  static const uint64_t static_value2 = 0x80fc736d196c3441ULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/InterventionTaskSpec";
  }

  static const char* value(const  ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# Specification of the intervention task, given as a task type to perform\n\
# on an object identified with a bounding box on an image.\n\
\n\
# Type of intervention task to perform.\n\
int32 task_type\n\
int32 TASK_RECOVERY=1\n\
int32 TASK_HOOK_CABLE=2\n\
int32 TASK_PUSH_BUTTON=3\n\
int32 TASK_OPEN_VALVE=4\n\
\n\
# Array of strategy specifications, in descending order of preference.\n\
InterventionStrategySpec[] strategy_spec\n\
\n\
================================================================================\n\
MSG: auv_msgs/InterventionStrategySpec\n\
# Specification of the intervention strategy.\n\
\n\
# Grasp frame given wrt bounding box origin\n\
geometry_msgs/Transform grasp_frame\n\
\n\
# Hand preshape\n\
int32 preshape\n\
int32 PRESHAPE_CYLINDRICAL_PRECISION=1\n\
int32 PRESHAPE_CYLINDRICAL_POWER=2\n\
int32 PRESHAPE_ONE_FINGER=3\n\
int32 PRESHAPE_HOOK=4\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Transform\n\
# This represents the transform between two coordinate frames in free space.\n\
\n\
Vector3 translation\n\
Quaternion rotation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.task_type);
    stream.next(m.strategy_spec);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct InterventionTaskSpec_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::InterventionTaskSpec_<ContainerAllocator> & v) 
  {
    s << indent << "task_type: ";
    Printer<int32_t>::stream(s, indent + "  ", v.task_type);
    s << indent << "strategy_spec[]" << std::endl;
    for (size_t i = 0; i < v.strategy_spec.size(); ++i)
    {
      s << indent << "  strategy_spec[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::auv_msgs::InterventionStrategySpec_<ContainerAllocator> >::stream(s, indent + "    ", v.strategy_spec[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_INTERVENTIONTASKSPEC_H

