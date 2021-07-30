// Generated by gencpp from file hello_w/stateResponse.msg
// DO NOT EDIT!


#ifndef HELLO_W_MESSAGE_STATERESPONSE_H
#define HELLO_W_MESSAGE_STATERESPONSE_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace hello_w
{
template <class ContainerAllocator>
struct stateResponse_
{
  typedef stateResponse_<ContainerAllocator> Type;

  stateResponse_()
    : x2()
    , y2()  {
    }
  stateResponse_(const ContainerAllocator& _alloc)
    : x2(_alloc)
    , y2(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _x2_type;
  _x2_type x2;

   typedef std::vector<float, typename ContainerAllocator::template rebind<float>::other >  _y2_type;
  _y2_type y2;





  typedef boost::shared_ptr< ::hello_w::stateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::hello_w::stateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct stateResponse_

typedef ::hello_w::stateResponse_<std::allocator<void> > stateResponse;

typedef boost::shared_ptr< ::hello_w::stateResponse > stateResponsePtr;
typedef boost::shared_ptr< ::hello_w::stateResponse const> stateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::hello_w::stateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::hello_w::stateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace hello_w

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'std_msgs': ['/opt/ros/melodic/share/std_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::hello_w::stateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::hello_w::stateResponse_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_w::stateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::hello_w::stateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_w::stateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::hello_w::stateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::hello_w::stateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "dc73d22bb0adec9013b72c5dc47be025";
  }

  static const char* value(const ::hello_w::stateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdc73d22bb0adec90ULL;
  static const uint64_t static_value2 = 0x13b72c5dc47be025ULL;
};

template<class ContainerAllocator>
struct DataType< ::hello_w::stateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "hello_w/stateResponse";
  }

  static const char* value(const ::hello_w::stateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::hello_w::stateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] x2\n"
"float32[] y2\n"
"\n"
;
  }

  static const char* value(const ::hello_w::stateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::hello_w::stateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.x2);
      stream.next(m.y2);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct stateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::hello_w::stateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::hello_w::stateResponse_<ContainerAllocator>& v)
  {
    s << indent << "x2[]" << std::endl;
    for (size_t i = 0; i < v.x2.size(); ++i)
    {
      s << indent << "  x2[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.x2[i]);
    }
    s << indent << "y2[]" << std::endl;
    for (size_t i = 0; i < v.y2.size(); ++i)
    {
      s << indent << "  y2[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.y2[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // HELLO_W_MESSAGE_STATERESPONSE_H
