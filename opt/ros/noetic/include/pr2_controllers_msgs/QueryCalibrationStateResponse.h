// Generated by gencpp from file pr2_controllers_msgs/QueryCalibrationStateResponse.msg
// DO NOT EDIT!


#ifndef PR2_CONTROLLERS_MSGS_MESSAGE_QUERYCALIBRATIONSTATERESPONSE_H
#define PR2_CONTROLLERS_MSGS_MESSAGE_QUERYCALIBRATIONSTATERESPONSE_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace pr2_controllers_msgs
{
template <class ContainerAllocator>
struct QueryCalibrationStateResponse_
{
  typedef QueryCalibrationStateResponse_<ContainerAllocator> Type;

  QueryCalibrationStateResponse_()
    : is_calibrated(false)  {
    }
  QueryCalibrationStateResponse_(const ContainerAllocator& _alloc)
    : is_calibrated(false)  {
  (void)_alloc;
    }



   typedef uint8_t _is_calibrated_type;
  _is_calibrated_type is_calibrated;





  typedef boost::shared_ptr< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> const> ConstPtr;

}; // struct QueryCalibrationStateResponse_

typedef ::pr2_controllers_msgs::QueryCalibrationStateResponse_<std::allocator<void> > QueryCalibrationStateResponse;

typedef boost::shared_ptr< ::pr2_controllers_msgs::QueryCalibrationStateResponse > QueryCalibrationStateResponsePtr;
typedef boost::shared_ptr< ::pr2_controllers_msgs::QueryCalibrationStateResponse const> QueryCalibrationStateResponseConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator1> & lhs, const ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator2> & rhs)
{
  return lhs.is_calibrated == rhs.is_calibrated;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator1> & lhs, const ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr2_controllers_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "28af3beedcb84986b8e470dc5470507d";
  }

  static const char* value(const ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x28af3beedcb84986ULL;
  static const uint64_t static_value2 = 0xb8e470dc5470507dULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_controllers_msgs/QueryCalibrationStateResponse";
  }

  static const char* value(const ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> >
{
  static const char* value()
  {
    return "bool is_calibrated\n"
;
  }

  static const char* value(const ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.is_calibrated);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct QueryCalibrationStateResponse_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_controllers_msgs::QueryCalibrationStateResponse_<ContainerAllocator>& v)
  {
    s << indent << "is_calibrated: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_calibrated);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_CONTROLLERS_MSGS_MESSAGE_QUERYCALIBRATIONSTATERESPONSE_H
