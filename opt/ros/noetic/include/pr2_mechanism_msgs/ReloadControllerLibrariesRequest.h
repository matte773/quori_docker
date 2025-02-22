// Generated by gencpp from file pr2_mechanism_msgs/ReloadControllerLibrariesRequest.msg
// DO NOT EDIT!


#ifndef PR2_MECHANISM_MSGS_MESSAGE_RELOADCONTROLLERLIBRARIESREQUEST_H
#define PR2_MECHANISM_MSGS_MESSAGE_RELOADCONTROLLERLIBRARIESREQUEST_H


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
struct ReloadControllerLibrariesRequest_
{
  typedef ReloadControllerLibrariesRequest_<ContainerAllocator> Type;

  ReloadControllerLibrariesRequest_()
    : force_kill(false)  {
    }
  ReloadControllerLibrariesRequest_(const ContainerAllocator& _alloc)
    : force_kill(false)  {
  (void)_alloc;
    }



   typedef uint8_t _force_kill_type;
  _force_kill_type force_kill;





  typedef boost::shared_ptr< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> const> ConstPtr;

}; // struct ReloadControllerLibrariesRequest_

typedef ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<std::allocator<void> > ReloadControllerLibrariesRequest;

typedef boost::shared_ptr< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest > ReloadControllerLibrariesRequestPtr;
typedef boost::shared_ptr< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest const> ReloadControllerLibrariesRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator1> & lhs, const ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator2> & rhs)
{
  return lhs.force_kill == rhs.force_kill;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator1> & lhs, const ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr2_mechanism_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "18442b59be9479097f11c543bddbac62";
  }

  static const char* value(const ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x18442b59be947909ULL;
  static const uint64_t static_value2 = 0x7f11c543bddbac62ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_mechanism_msgs/ReloadControllerLibrariesRequest";
  }

  static const char* value(const ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# The ReloadControllerLibraries service will reload all controllers that are available in\n"
"# the system as plugins\n"
"\n"
"\n"
"# Reloading libraries only works if there are no controllers loaded. If there\n"
"# are still some controllers loaded, the reloading will fail.\n"
"# If this bool is set to true, all loaded controllers will get\n"
"# killed automatically, and the reloading can succeed.\n"
"bool force_kill\n"
;
  }

  static const char* value(const ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.force_kill);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct ReloadControllerLibrariesRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_mechanism_msgs::ReloadControllerLibrariesRequest_<ContainerAllocator>& v)
  {
    s << indent << "force_kill: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.force_kill);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_MECHANISM_MSGS_MESSAGE_RELOADCONTROLLERLIBRARIESREQUEST_H
