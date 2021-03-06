/* Auto-generated by genmsg_cpp for file /home/osl/src/hwu-osl-ros-pkg/hwu_osl_common/auv_msgs/msg/LocaliseInMosaicFeedback.msg */
#ifndef AUV_MSGS_MESSAGE_LOCALISEINMOSAICFEEDBACK_H
#define AUV_MSGS_MESSAGE_LOCALISEINMOSAICFEEDBACK_H
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

#include "geometry_msgs/PoseWithCovariance.h"

namespace auv_msgs
{
template <class ContainerAllocator>
struct LocaliseInMosaicFeedback_ {
  typedef LocaliseInMosaicFeedback_<ContainerAllocator> Type;

  LocaliseInMosaicFeedback_()
  : view_image_id()
  , camera_frame()
  , stamp()
  , identified(false)
  , vehicle_relative_to_view()
  {
  }

  LocaliseInMosaicFeedback_(const ContainerAllocator& _alloc)
  : view_image_id(_alloc)
  , camera_frame(_alloc)
  , stamp()
  , identified(false)
  , vehicle_relative_to_view(_alloc)
  {
  }

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _view_image_id_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  view_image_id;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _camera_frame_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  camera_frame;

  typedef ros::Time _stamp_type;
  ros::Time stamp;

  typedef uint8_t _identified_type;
  uint8_t identified;

  typedef  ::geometry_msgs::PoseWithCovariance_<ContainerAllocator>  _vehicle_relative_to_view_type;
   ::geometry_msgs::PoseWithCovariance_<ContainerAllocator>  vehicle_relative_to_view;


  typedef boost::shared_ptr< ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct LocaliseInMosaicFeedback
typedef  ::auv_msgs::LocaliseInMosaicFeedback_<std::allocator<void> > LocaliseInMosaicFeedback;

typedef boost::shared_ptr< ::auv_msgs::LocaliseInMosaicFeedback> LocaliseInMosaicFeedbackPtr;
typedef boost::shared_ptr< ::auv_msgs::LocaliseInMosaicFeedback const> LocaliseInMosaicFeedbackConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace auv_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "b7bdc09431e6b44fddff0b521b94cbb5";
  }

  static const char* value(const  ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xb7bdc09431e6b44fULL;
  static const uint64_t static_value2 = 0xddff0b521b94cbb5ULL;
};

template<class ContainerAllocator>
struct DataType< ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "auv_msgs/LocaliseInMosaicFeedback";
  }

  static const char* value(const  ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
\n\
# Image ID repeated from request\n\
string view_image_id\n\
\n\
# Frame of the camera used to localise.\n\
string camera_frame\n\
\n\
# Timestamp of the camera image used.\n\
time stamp\n\
\n\
# True if view is identified.\n\
bool identified\n\
\n\
# Pose is specified in view image frame.\n\
geometry_msgs/PoseWithCovariance vehicle_relative_to_view\n\
\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseWithCovariance\n\
# This represents a pose in free space with uncertainty.\n\
\n\
Pose pose\n\
\n\
# Row-major representation of the 6x6 covariance matrix\n\
# The orientation parameters use a fixed-axis representation.\n\
# In order, the parameters are:\n\
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n\
float64[36] covariance\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of postion and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
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

  static const char* value(const  ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.view_image_id);
    stream.next(m.camera_frame);
    stream.next(m.stamp);
    stream.next(m.identified);
    stream.next(m.vehicle_relative_to_view);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct LocaliseInMosaicFeedback_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::auv_msgs::LocaliseInMosaicFeedback_<ContainerAllocator> & v) 
  {
    s << indent << "view_image_id: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.view_image_id);
    s << indent << "camera_frame: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.camera_frame);
    s << indent << "stamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.stamp);
    s << indent << "identified: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.identified);
    s << indent << "vehicle_relative_to_view: ";
s << std::endl;
    Printer< ::geometry_msgs::PoseWithCovariance_<ContainerAllocator> >::stream(s, indent + "  ", v.vehicle_relative_to_view);
  }
};


} // namespace message_operations
} // namespace ros

#endif // AUV_MSGS_MESSAGE_LOCALISEINMOSAICFEEDBACK_H

