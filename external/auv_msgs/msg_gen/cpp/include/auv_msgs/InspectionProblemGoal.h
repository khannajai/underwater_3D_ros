/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/InspectionProblemGoal.msg */
#ifndef AUV_MSGS_MESSAGE_INSPECTIONPROBLEMGOAL_H
#define AUV_MSGS_MESSAGE_INSPECTIONPROBLEMGOAL_H
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

#include "auv_msgs/SphereArray.h"

namespace auv_msgs
{
template <class ContainerAllocator>
struct InspectionProblemGoal_ {
  typedef InspectionProblemGoal_<ContainerAllocator> Type;

  InspectionProblemGoal_()
  : occupancy()
  {
  }

  InspectionProblemGoal_(const ContainerAllocator& _alloc)
  : occupancy(_alloc)
  {
  }

  typedef  ::auv_msgs::SphereArray_<ContainerAllocator>  _occupancy_type;
   ::auv_msgs::SphereArray_<ContainerAllocator>  occupancy;


  typedef boost::shared_ptr< ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::InspectionProblemGoal_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct InspectionProblemGoal
typedef  ::auv_msgs::InspectionProblemGoal_<std::allocator<void> > InspectionProblemGoal;

typedef boost::shared_ptr< ::auv_msgs::InspectionProblemGoal> InspectionProblemGoalPtr;
typedef boost::shared_ptr< ::auv_msgs::InspectionProblemGoal const> InspectionProblemGoalConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::InspectionProblemGoal_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "b7f3299761dc718a8d1567e5f1b9975e";
  }

  static const char* value(const  ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xb7f3299761dc718aULL;
  static const uint64_t static_value2 = 0x8d1567e5f1b9975eULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/InspectionProblemGoal";
  }

  static const char* value(const  ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#areas of observed occupancy that we want to inspect around\n\
SphereArray occupancy\n\
\n\
\n\
================================================================================\n\
MSG: auv_msgs/SphereArray\n\
Sphere[] spheres\n\
\n\
================================================================================\n\
MSG: auv_msgs/Sphere\n\
geometry_msgs/Point center\n\
float64 radius\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
";
  }

  static const char* value(const  ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.occupancy);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct InspectionProblemGoal_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::InspectionProblemGoal_<ContainerAllocator> & v) 
  {
    s << indent << "occupancy: ";
s << std::endl;
    Printer< ::auv_msgs::SphereArray_<ContainerAllocator> >::stream(s, indent + "  ", v.occupancy);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_INSPECTIONPROBLEMGOAL_H
