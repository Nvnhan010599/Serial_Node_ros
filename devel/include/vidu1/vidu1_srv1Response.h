// Generated by gencpp from file vidu1/vidu1_srv1Response.msg
// DO NOT EDIT!


#ifndef VIDU1_MESSAGE_VIDU1_SRV1RESPONSE_H
#define VIDU1_MESSAGE_VIDU1_SRV1RESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace vidu1
{
template <class ContainerAllocator>
struct vidu1_srv1Response_
{
  typedef vidu1_srv1Response_<ContainerAllocator> Type;

  vidu1_srv1Response_()
    : sum(0)  {
    }
  vidu1_srv1Response_(const ContainerAllocator& _alloc)
    : sum(0)  {
  (void)_alloc;
    }



   typedef int32_t _sum_type;
  _sum_type sum;





  typedef boost::shared_ptr< ::vidu1::vidu1_srv1Response_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::vidu1::vidu1_srv1Response_<ContainerAllocator> const> ConstPtr;

}; // struct vidu1_srv1Response_

typedef ::vidu1::vidu1_srv1Response_<std::allocator<void> > vidu1_srv1Response;

typedef boost::shared_ptr< ::vidu1::vidu1_srv1Response > vidu1_srv1ResponsePtr;
typedef boost::shared_ptr< ::vidu1::vidu1_srv1Response const> vidu1_srv1ResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::vidu1::vidu1_srv1Response_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::vidu1::vidu1_srv1Response_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace vidu1

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'vidu1': ['/home/nhan/my_ws/src/vidu1/msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::vidu1::vidu1_srv1Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::vidu1::vidu1_srv1Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vidu1::vidu1_srv1Response_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::vidu1::vidu1_srv1Response_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vidu1::vidu1_srv1Response_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::vidu1::vidu1_srv1Response_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::vidu1::vidu1_srv1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "0ba699c25c9418c0366f3595c0c8e8ec";
  }

  static const char* value(const ::vidu1::vidu1_srv1Response_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x0ba699c25c9418c0ULL;
  static const uint64_t static_value2 = 0x366f3595c0c8e8ecULL;
};

template<class ContainerAllocator>
struct DataType< ::vidu1::vidu1_srv1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "vidu1/vidu1_srv1Response";
  }

  static const char* value(const ::vidu1::vidu1_srv1Response_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::vidu1::vidu1_srv1Response_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 sum\n\
\n\
";
  }

  static const char* value(const ::vidu1::vidu1_srv1Response_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::vidu1::vidu1_srv1Response_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.sum);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct vidu1_srv1Response_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::vidu1::vidu1_srv1Response_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::vidu1::vidu1_srv1Response_<ContainerAllocator>& v)
  {
    s << indent << "sum: ";
    Printer<int32_t>::stream(s, indent + "  ", v.sum);
  }
};

} // namespace message_operations
} // namespace ros

#endif // VIDU1_MESSAGE_VIDU1_SRV1RESPONSE_H
