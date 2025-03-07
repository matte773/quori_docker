// Generated by gencpp from file pr2_mechanism_msgs/JointStatistics.msg
// DO NOT EDIT!


#ifndef PR2_MECHANISM_MSGS_MESSAGE_JOINTSTATISTICS_H
#define PR2_MECHANISM_MSGS_MESSAGE_JOINTSTATISTICS_H


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
struct JointStatistics_
{
  typedef JointStatistics_<ContainerAllocator> Type;

  JointStatistics_()
    : name()
    , timestamp()
    , position(0.0)
    , velocity(0.0)
    , measured_effort(0.0)
    , commanded_effort(0.0)
    , is_calibrated(false)
    , violated_limits(false)
    , odometer(0.0)
    , min_position(0.0)
    , max_position(0.0)
    , max_abs_velocity(0.0)
    , max_abs_effort(0.0)  {
    }
  JointStatistics_(const ContainerAllocator& _alloc)
    : name(_alloc)
    , timestamp()
    , position(0.0)
    , velocity(0.0)
    , measured_effort(0.0)
    , commanded_effort(0.0)
    , is_calibrated(false)
    , violated_limits(false)
    , odometer(0.0)
    , min_position(0.0)
    , max_position(0.0)
    , max_abs_velocity(0.0)
    , max_abs_effort(0.0)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef ros::Time _timestamp_type;
  _timestamp_type timestamp;

   typedef double _position_type;
  _position_type position;

   typedef double _velocity_type;
  _velocity_type velocity;

   typedef double _measured_effort_type;
  _measured_effort_type measured_effort;

   typedef double _commanded_effort_type;
  _commanded_effort_type commanded_effort;

   typedef uint8_t _is_calibrated_type;
  _is_calibrated_type is_calibrated;

   typedef uint8_t _violated_limits_type;
  _violated_limits_type violated_limits;

   typedef double _odometer_type;
  _odometer_type odometer;

   typedef double _min_position_type;
  _min_position_type min_position;

   typedef double _max_position_type;
  _max_position_type max_position;

   typedef double _max_abs_velocity_type;
  _max_abs_velocity_type max_abs_velocity;

   typedef double _max_abs_effort_type;
  _max_abs_effort_type max_abs_effort;





  typedef boost::shared_ptr< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> const> ConstPtr;

}; // struct JointStatistics_

typedef ::pr2_mechanism_msgs::JointStatistics_<std::allocator<void> > JointStatistics;

typedef boost::shared_ptr< ::pr2_mechanism_msgs::JointStatistics > JointStatisticsPtr;
typedef boost::shared_ptr< ::pr2_mechanism_msgs::JointStatistics const> JointStatisticsConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator1> & lhs, const ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator2> & rhs)
{
  return lhs.name == rhs.name &&
    lhs.timestamp == rhs.timestamp &&
    lhs.position == rhs.position &&
    lhs.velocity == rhs.velocity &&
    lhs.measured_effort == rhs.measured_effort &&
    lhs.commanded_effort == rhs.commanded_effort &&
    lhs.is_calibrated == rhs.is_calibrated &&
    lhs.violated_limits == rhs.violated_limits &&
    lhs.odometer == rhs.odometer &&
    lhs.min_position == rhs.min_position &&
    lhs.max_position == rhs.max_position &&
    lhs.max_abs_velocity == rhs.max_abs_velocity &&
    lhs.max_abs_effort == rhs.max_abs_effort;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator1> & lhs, const ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr2_mechanism_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "90fdc8acbce5bc783d8b4aec49af6590";
  }

  static const char* value(const ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x90fdc8acbce5bc78ULL;
  static const uint64_t static_value2 = 0x3d8b4aec49af6590ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_mechanism_msgs/JointStatistics";
  }

  static const char* value(const ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# This message contains the state of one joint of the pr2 robot.\n"
"# This message is specificly designed for the pr2 robot. \n"
"# A generic joint state message can be found in sensor_msgs::JointState\n"
"\n"
"# the name of the joint\n"
"string name\n"
"\n"
"# the time at which these joint statistics were measured\n"
"time timestamp\n"
"\n"
"# the position of the joint in radians\n"
"float64 position\n"
"\n"
"# the velocity of the joint in radians per second\n"
"float64 velocity\n"
"\n"
"# the measured joint effort \n"
"float64 measured_effort\n"
"\n"
"# the effort that was commanded to the joint.\n"
"# the actual applied effort might be different\n"
"# because the safety code can limit the effort\n"
"# a joint can apply\n"
"float64 commanded_effort\n"
"\n"
"# a flag indicating if the joint is calibrated or not\n"
"bool is_calibrated\n"
"\n"
"# a flag inidcating if the joint violated one of its position/velocity/effort limits\n"
"# in the last publish cycle\n"
"bool violated_limits\n"
"\n"
"# the total distance travelled by the joint, measured in radians.\n"
"float64 odometer\n"
"\n"
"# the lowest position reached by the joint in the last publish cycle\n"
"float64 min_position\n"
"\n"
"# the highest position reached by the joint in the last publish cycle\n"
"float64 max_position\n"
"\n"
"# the maximum absolute velocity reached by the joint in the last publish cycle\n"
"float64 max_abs_velocity\n"
"\n"
"# the maximum absolute effort applied by the joint in the last publish cycle\n"
"float64 max_abs_effort\n"
;
  }

  static const char* value(const ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.name);
      stream.next(m.timestamp);
      stream.next(m.position);
      stream.next(m.velocity);
      stream.next(m.measured_effort);
      stream.next(m.commanded_effort);
      stream.next(m.is_calibrated);
      stream.next(m.violated_limits);
      stream.next(m.odometer);
      stream.next(m.min_position);
      stream.next(m.max_position);
      stream.next(m.max_abs_velocity);
      stream.next(m.max_abs_effort);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointStatistics_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_mechanism_msgs::JointStatistics_<ContainerAllocator>& v)
  {
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "timestamp: ";
    Printer<ros::Time>::stream(s, indent + "  ", v.timestamp);
    s << indent << "position: ";
    Printer<double>::stream(s, indent + "  ", v.position);
    s << indent << "velocity: ";
    Printer<double>::stream(s, indent + "  ", v.velocity);
    s << indent << "measured_effort: ";
    Printer<double>::stream(s, indent + "  ", v.measured_effort);
    s << indent << "commanded_effort: ";
    Printer<double>::stream(s, indent + "  ", v.commanded_effort);
    s << indent << "is_calibrated: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.is_calibrated);
    s << indent << "violated_limits: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.violated_limits);
    s << indent << "odometer: ";
    Printer<double>::stream(s, indent + "  ", v.odometer);
    s << indent << "min_position: ";
    Printer<double>::stream(s, indent + "  ", v.min_position);
    s << indent << "max_position: ";
    Printer<double>::stream(s, indent + "  ", v.max_position);
    s << indent << "max_abs_velocity: ";
    Printer<double>::stream(s, indent + "  ", v.max_abs_velocity);
    s << indent << "max_abs_effort: ";
    Printer<double>::stream(s, indent + "  ", v.max_abs_effort);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_MECHANISM_MSGS_MESSAGE_JOINTSTATISTICS_H
