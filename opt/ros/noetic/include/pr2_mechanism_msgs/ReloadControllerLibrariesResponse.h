// Generated by gencpp from file pr2_mechanism_msgs/ReloadControllerLibrariesResponse.msg
// DO NOT EDIT!


#ifndef PR2_MECHANISM_MSGS_MESSAGE_RELOADCONTROLLERLIBRARIESRESPONSE_H
#define PR2_MECHANISM_MSGS_MESSAGE_RELOADCONTROLLERLIBRARIESRESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pr2_mechanism_msgs
{
template <class ContainerAllocator>
struct ReloadControllerLibrariesResponse_
{
  typedef ReloadControllerLibrariesResponse_<ContainerAllocator> Type;

  ReloadControllerLibrariesResponse_()
    : ok(false)  {
    }
  ReloadControllerLibrariesResponse_(const ContainerAllocator& _alloc)
    : ok(false)  {
  (void)_alloc;
    }



   typedef uint8_t _ok_type;
  _ok_type ok;





  typedef boost::shared_ptr< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> const> ConstPtr;

}; // struct ReloadControllerLibrariesResponse_

typedef ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<std::allocator<void> > ReloadControllerLibrariesResponse;

typedef boost::shared_ptr< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse > ReloadControllerLibrariesResponsePtr;
typedef boost::shared_ptr< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse const> ReloadControllerLibrariesResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator1> & lhs, const ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator2> & rhs)
{
  return lhs.ok == rhs.ok;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator1> & lhs, const ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr2_mechanism_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "6f6da3883749771fac40d6deb24a8c02";
  }

  static const char* value(const ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x6f6da3883749771fULL;
  static const uint64_t static_value2 = 0xac40d6deb24a8c02ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_mechanism_msgs/ReloadControllerLibrariesResponse";
  }

  static const char* value(const ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool ok\n"
;
  }

  static const char* value(const ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.ok);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReloadControllerLibrariesResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_mechanism_msgs::ReloadControllerLibrariesResponse_<ContainerAllocator>& v)
  {
    s << indent << "ok: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.ok);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_MECHANISM_MSGS_MESSAGE_RELOADCONTROLLERLIBRARIESRESPONSE_H
