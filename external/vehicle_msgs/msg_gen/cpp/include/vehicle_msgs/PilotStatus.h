/* Auto-generated by genmsg_cpp for file /home/osl/src/nessie_highlander/vehicle_msgs/msg/PilotStatus.msg */
#ifndef VEHICLE_MSGS_MESSAGE_PILOTSTATUS_H
#define VEHICLE_MSGS_MESSAGE_PILOTSTATUS_H
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
#include "diagnostic_msgs/KeyValue.h"

namespace vehicle_msgs
{
template <class ContainerAllocator>
struct PilotStatus_ {
  typedef PilotStatus_<ContainerAllocator> Type;

  PilotStatus_()
  : header()
  , status()
  , mode()
  , des_pos()
  , des_vel()
  , err_pos()
  , err_vel()
  , lim_vel_user()
  , lim_vel_ctrl()
  , info()
  {
    des_pos.assign(0.0);
    des_vel.assign(0.0);
    err_pos.assign(0.0);
    err_vel.assign(0.0);
    lim_vel_user.assign(0.0);
    lim_vel_ctrl.assign(0.0);
  }

  PilotStatus_(const ContainerAllocator& _alloc)
  : header(_alloc)
  , status(_alloc)
  , mode(_alloc)
  , des_pos()
  , des_vel()
  , err_pos()
  , err_vel()
  , lim_vel_user()
  , lim_vel_ctrl()
  , info(_alloc)
  {
    des_pos.assign(0.0);
    des_vel.assign(0.0);
    err_pos.assign(0.0);
    err_vel.assign(0.0);
    lim_vel_user.assign(0.0);
    lim_vel_ctrl.assign(0.0);
  }

  typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
   ::std_msgs::Header_<ContainerAllocator>  header;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _status_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  status;

  typedef std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  _mode_type;
  std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other >  mode;

  typedef boost::array<float, 6>  _des_pos_type;
  boost::array<float, 6>  des_pos;

  typedef boost::array<float, 6>  _des_vel_type;
  boost::array<float, 6>  des_vel;

  typedef boost::array<float, 6>  _err_pos_type;
  boost::array<float, 6>  err_pos;

  typedef boost::array<float, 6>  _err_vel_type;
  boost::array<float, 6>  err_vel;

  typedef boost::array<float, 6>  _lim_vel_user_type;
  boost::array<float, 6>  lim_vel_user;

  typedef boost::array<float, 6>  _lim_vel_ctrl_type;
  boost::array<float, 6>  lim_vel_ctrl;

  typedef std::vector< ::diagnostic_msgs::KeyValue_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::diagnostic_msgs::KeyValue_<ContainerAllocator> >::other >  _info_type;
  std::vector< ::diagnostic_msgs::KeyValue_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::diagnostic_msgs::KeyValue_<ContainerAllocator> >::other >  info;


  typedef boost::shared_ptr< ::vehicle_msgs::PilotStatus_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vehicle_msgs::PilotStatus_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct PilotStatus
typedef  ::vehicle_msgs::PilotStatus_<std::allocator<void> > PilotStatus;

typedef boost::shared_ptr< ::vehicle_msgs::PilotStatus> PilotStatusPtr;
typedef boost::shared_ptr< ::vehicle_msgs::PilotStatus const> PilotStatusConstPtr;


template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const  ::vehicle_msgs::PilotStatus_<ContainerAllocator> & v)
{
  ros::message_operations::Printer< ::vehicle_msgs::PilotStatus_<ContainerAllocator> >::stream(s, "", v);
  return s;}

} // namespace vehicle_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::vehicle_msgs::PilotStatus_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::vehicle_msgs::PilotStatus_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::vehicle_msgs::PilotStatus_<ContainerAllocator> > {
  static const char* value() 
  {
    return "95e902a78691918b0940fdc05c04242c";
  }

  static const char* value(const  ::vehicle_msgs::PilotStatus_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x95e902a78691918bULL;
  static const uint64_t static_value2 = 0x0940fdc05c04242cULL;
};

template<class ContainerAllocator>
struct DataType< ::vehicle_msgs::PilotStatus_<ContainerAllocator> > {
  static const char* value() 
  {
    return "vehicle_msgs/PilotStatus";
  }

  static const char* value(const  ::vehicle_msgs::PilotStatus_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::vehicle_msgs::PilotStatus_<ContainerAllocator> > {
  static const char* value() 
  {
    return "# vehicle_msgs/PilotStatus.msg\n\
#   reports the current status of the pilot\n\
\n\
Header header                          # message header\n\
\n\
string status                          # status (e.g. enabled, disabled)\n\
string mode                            # mode (e.g. position tracking, velocity tracking, station keeping)\n\
\n\
float32[6] des_pos                     # position goal\n\
float32[6] des_vel                     # velocity goal\n\
float32[6] err_pos                     # current error in position\n\
float32[6] err_vel                     # current error in velocity\n\
\n\
float32[6] lim_vel_user                # current velocity limits (user)\n\
float32[6] lim_vel_ctrl                # current velocity limits (controller)\n\
\n\
diagnostic_msgs/KeyValue[] info        # optional field for additional data\n\
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
MSG: diagnostic_msgs/KeyValue\n\
string key # what to label this value when viewing\n\
string value # a value to track over time\n\
\n\
";
  }

  static const char* value(const  ::vehicle_msgs::PilotStatus_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator> struct HasHeader< ::vehicle_msgs::PilotStatus_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct HasHeader< const ::vehicle_msgs::PilotStatus_<ContainerAllocator> > : public TrueType {};
} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::vehicle_msgs::PilotStatus_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.header);
    stream.next(m.status);
    stream.next(m.mode);
    stream.next(m.des_pos);
    stream.next(m.des_vel);
    stream.next(m.err_pos);
    stream.next(m.err_vel);
    stream.next(m.lim_vel_user);
    stream.next(m.lim_vel_ctrl);
    stream.next(m.info);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct PilotStatus_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vehicle_msgs::PilotStatus_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const  ::vehicle_msgs::PilotStatus_<ContainerAllocator> & v) 
  {
    s << indent << "header: ";
s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "status: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.status);
    s << indent << "mode: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename ContainerAllocator::template rebind<char>::other > >::stream(s, indent + "  ", v.mode);
    s << indent << "des_pos[]" << std::endl;
    for (size_t i = 0; i < v.des_pos.size(); ++i)
    {
      s << indent << "  des_pos[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.des_pos[i]);
    }
    s << indent << "des_vel[]" << std::endl;
    for (size_t i = 0; i < v.des_vel.size(); ++i)
    {
      s << indent << "  des_vel[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.des_vel[i]);
    }
    s << indent << "err_pos[]" << std::endl;
    for (size_t i = 0; i < v.err_pos.size(); ++i)
    {
      s << indent << "  err_pos[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.err_pos[i]);
    }
    s << indent << "err_vel[]" << std::endl;
    for (size_t i = 0; i < v.err_vel.size(); ++i)
    {
      s << indent << "  err_vel[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.err_vel[i]);
    }
    s << indent << "lim_vel_user[]" << std::endl;
    for (size_t i = 0; i < v.lim_vel_user.size(); ++i)
    {
      s << indent << "  lim_vel_user[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.lim_vel_user[i]);
    }
    s << indent << "lim_vel_ctrl[]" << std::endl;
    for (size_t i = 0; i < v.lim_vel_ctrl.size(); ++i)
    {
      s << indent << "  lim_vel_ctrl[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.lim_vel_ctrl[i]);
    }
    s << indent << "info[]" << std::endl;
    for (size_t i = 0; i < v.info.size(); ++i)
    {
      s << indent << "  info[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::diagnostic_msgs::KeyValue_<ContainerAllocator> >::stream(s, indent + "    ", v.info[i]);
    }
  }
};


} // namespace message_operations
} // namespace ros

#endif // VEHICLE_MSGS_MESSAGE_PILOTSTATUS_H

