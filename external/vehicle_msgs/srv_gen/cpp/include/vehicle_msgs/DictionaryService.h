/* Auto-generated by genmsg_cpp for file /home/osl/src/nessie_highlander/vehicle_msgs/srv/DictionaryService.srv */
#ifndef VEHICLE_MSGS_SERVICE_DICTIONARYSERVICE_H
#define VEHICLE_MSGS_SERVICE_DICTIONARYSERVICE_H
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

#include "ros/service_traits.h"

#include "diagnostic_msgs/KeyValue.h"


#include "diagnostic_msgs/KeyValue.h"

namespace vehicle_msgs
{
template <class ContainerAllocator>
struct DictionaryServiceRequest_ {
  typedef DictionaryServiceRequest_<ContainerAllocator> Type;

  DictionaryServiceRequest_()
  : request()
  {
  }

  DictionaryServiceRequest_(const ContainerAllocator& _alloc)
  : request(_alloc)
  {
  }

  typedef std::vector< ::diagnostic_msgs::KeyValue_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::diagnostic_msgs::KeyValue_<ContainerAllocator> >::other >  _request_type;
  std::vector< ::diagnostic_msgs::KeyValue_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::diagnostic_msgs::KeyValue_<ContainerAllocator> >::other >  request;


  typedef boost::shared_ptr< ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct DictionaryServiceRequest
typedef  ::vehicle_msgs::DictionaryServiceRequest_<std::allocator<void> > DictionaryServiceRequest;

typedef boost::shared_ptr< ::vehicle_msgs::DictionaryServiceRequest> DictionaryServiceRequestPtr;
typedef boost::shared_ptr< ::vehicle_msgs::DictionaryServiceRequest const> DictionaryServiceRequestConstPtr;


template <class ContainerAllocator>
struct DictionaryServiceResponse_ {
  typedef DictionaryServiceResponse_<ContainerAllocator> Type;

  DictionaryServiceResponse_()
  : result(false)
  , response()
  {
  }

  DictionaryServiceResponse_(const ContainerAllocator& _alloc)
  : result(false)
  , response(_alloc)
  {
  }

  typedef uint8_t _result_type;
  uint8_t result;

  typedef std::vector< ::diagnostic_msgs::KeyValue_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::diagnostic_msgs::KeyValue_<ContainerAllocator> >::other >  _response_type;
  std::vector< ::diagnostic_msgs::KeyValue_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::diagnostic_msgs::KeyValue_<ContainerAllocator> >::other >  response;


  typedef boost::shared_ptr< ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator>  const> ConstPtr;
  boost::shared_ptr<std::map<std::string, std::string> > __connection_header;
}; // struct DictionaryServiceResponse
typedef  ::vehicle_msgs::DictionaryServiceResponse_<std::allocator<void> > DictionaryServiceResponse;

typedef boost::shared_ptr< ::vehicle_msgs::DictionaryServiceResponse> DictionaryServiceResponsePtr;
typedef boost::shared_ptr< ::vehicle_msgs::DictionaryServiceResponse const> DictionaryServiceResponseConstPtr;

struct DictionaryService
{

typedef DictionaryServiceRequest Request;
typedef DictionaryServiceResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;
}; // struct DictionaryService
} // namespace vehicle_msgs

namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "bb8a3ce779c075c220f0a928f3c8f40e";
  }

  static const char* value(const  ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0xbb8a3ce779c075c2ULL;
  static const uint64_t static_value2 = 0x20f0a928f3c8f40eULL;
};

template<class ContainerAllocator>
struct DataType< ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "vehicle_msgs/DictionaryServiceRequest";
  }

  static const char* value(const  ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
\n\
\n\
diagnostic_msgs/KeyValue[] request\n\
\n\
================================================================================\n\
MSG: diagnostic_msgs/KeyValue\n\
string key # what to label this value when viewing\n\
string value # a value to track over time\n\
\n\
";
  }

  static const char* value(const  ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros


namespace ros
{
namespace message_traits
{
template<class ContainerAllocator> struct IsMessage< ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> > : public TrueType {};
template<class ContainerAllocator> struct IsMessage< ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator>  const> : public TrueType {};
template<class ContainerAllocator>
struct MD5Sum< ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "138d8da569f8b57e35b40c4e3914ce74";
  }

  static const char* value(const  ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> &) { return value(); } 
  static const uint64_t static_value1 = 0x138d8da569f8b57eULL;
  static const uint64_t static_value2 = 0x35b40c4e3914ce74ULL;
};

template<class ContainerAllocator>
struct DataType< ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "vehicle_msgs/DictionaryServiceResponse";
  }

  static const char* value(const  ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct Definition< ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "\n\
bool result\n\
diagnostic_msgs/KeyValue[] response\n\
\n\
\n\
================================================================================\n\
MSG: diagnostic_msgs/KeyValue\n\
string key # what to label this value when viewing\n\
string value # a value to track over time\n\
\n\
";
  }

  static const char* value(const  ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.request);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct DictionaryServiceRequest_
} // namespace serialization
} // namespace ros


namespace ros
{
namespace serialization
{

template<class ContainerAllocator> struct Serializer< ::vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> >
{
  template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
  {
    stream.next(m.result);
    stream.next(m.response);
  }

  ROS_DECLARE_ALLINONE_SERIALIZER;
}; // struct DictionaryServiceResponse_
} // namespace serialization
} // namespace ros

namespace ros
{
namespace service_traits
{
template<>
struct MD5Sum<vehicle_msgs::DictionaryService> {
  static const char* value() 
  {
    return "4a0dfb3a808ac3dadb0e9dd765801675";
  }

  static const char* value(const vehicle_msgs::DictionaryService&) { return value(); } 
};

template<>
struct DataType<vehicle_msgs::DictionaryService> {
  static const char* value() 
  {
    return "vehicle_msgs/DictionaryService";
  }

  static const char* value(const vehicle_msgs::DictionaryService&) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4a0dfb3a808ac3dadb0e9dd765801675";
  }

  static const char* value(const vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> > {
  static const char* value() 
  {
    return "vehicle_msgs/DictionaryService";
  }

  static const char* value(const vehicle_msgs::DictionaryServiceRequest_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct MD5Sum<vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "4a0dfb3a808ac3dadb0e9dd765801675";
  }

  static const char* value(const vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> &) { return value(); } 
};

template<class ContainerAllocator>
struct DataType<vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> > {
  static const char* value() 
  {
    return "vehicle_msgs/DictionaryService";
  }

  static const char* value(const vehicle_msgs::DictionaryServiceResponse_<ContainerAllocator> &) { return value(); } 
};

} // namespace service_traits
} // namespace ros

#endif // VEHICLE_MSGS_SERVICE_DICTIONARYSERVICE_H

