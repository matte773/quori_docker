// Generated by gencpp from file joint_qualification_controllers/WristRollTurn.msg
// DO NOT EDIT!


#ifndef JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_WRISTROLLTURN_H
#define JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_WRISTROLLTURN_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace joint_qualification_controllers
{
template <class ContainerAllocator>
struct WristRollTurn_
{
  typedef WristRollTurn_<ContainerAllocator> Type;

  WristRollTurn_()
    : time()
    , flex_position()
    , flex_effort()
    , flex_cmd()
    , roll_position()
    , roll_effort()
    , roll_cmd()
    , roll_velocity()  {
    }
  WristRollTurn_(const ContainerAllocator& _alloc)
    : time(_alloc)
    , flex_position(_alloc)
    , flex_effort(_alloc)
    , flex_cmd(_alloc)
    , roll_position(_alloc)
    , roll_effort(_alloc)
    , roll_cmd(_alloc)
    , roll_velocity(_alloc)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _time_type;
  _time_type time;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _flex_position_type;
  _flex_position_type flex_position;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _flex_effort_type;
  _flex_effort_type flex_effort;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _flex_cmd_type;
  _flex_cmd_type flex_cmd;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _roll_position_type;
  _roll_position_type roll_position;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _roll_effort_type;
  _roll_effort_type roll_effort;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _roll_cmd_type;
  _roll_cmd_type roll_cmd;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _roll_velocity_type;
  _roll_velocity_type roll_velocity;





  typedef boost::shared_ptr< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> const> ConstPtr;

}; // struct WristRollTurn_

typedef ::joint_qualification_controllers::WristRollTurn_<std::allocator<void> > WristRollTurn;

typedef boost::shared_ptr< ::joint_qualification_controllers::WristRollTurn > WristRollTurnPtr;
typedef boost::shared_ptr< ::joint_qualification_controllers::WristRollTurn const> WristRollTurnConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator1> & lhs, const ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator2> & rhs)
{
  return lhs.time == rhs.time &&
    lhs.flex_position == rhs.flex_position &&
    lhs.flex_effort == rhs.flex_effort &&
    lhs.flex_cmd == rhs.flex_cmd &&
    lhs.roll_position == rhs.roll_position &&
    lhs.roll_effort == rhs.roll_effort &&
    lhs.roll_cmd == rhs.roll_cmd &&
    lhs.roll_velocity == rhs.roll_velocity;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator1> & lhs, const ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace joint_qualification_controllers

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "27db8c0ca950f1334a70a45b5bc8427f";
  }

  static const char* value(const ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x27db8c0ca950f133ULL;
  static const uint64_t static_value2 = 0x4a70a45b5bc8427fULL;
};

template<class ContainerAllocator>
struct DataType< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "joint_qualification_controllers/WristRollTurn";
  }

  static const char* value(const ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] time\n"
"float32[] flex_position\n"
"float32[] flex_effort\n"
"float32[] flex_cmd\n"
"float32[] roll_position\n"
"float32[] roll_effort\n"
"float32[] roll_cmd\n"
"float32[] roll_velocity\n"
;
  }

  static const char* value(const ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time);
      stream.next(m.flex_position);
      stream.next(m.flex_effort);
      stream.next(m.flex_cmd);
      stream.next(m.roll_position);
      stream.next(m.roll_effort);
      stream.next(m.roll_cmd);
      stream.next(m.roll_velocity);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct WristRollTurn_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::joint_qualification_controllers::WristRollTurn_<ContainerAllocator>& v)
  {
    s << indent << "time[]" << std::endl;
    for (size_t i = 0; i < v.time.size(); ++i)
    {
      s << indent << "  time[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.time[i]);
    }
    s << indent << "flex_position[]" << std::endl;
    for (size_t i = 0; i < v.flex_position.size(); ++i)
    {
      s << indent << "  flex_position[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.flex_position[i]);
    }
    s << indent << "flex_effort[]" << std::endl;
    for (size_t i = 0; i < v.flex_effort.size(); ++i)
    {
      s << indent << "  flex_effort[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.flex_effort[i]);
    }
    s << indent << "flex_cmd[]" << std::endl;
    for (size_t i = 0; i < v.flex_cmd.size(); ++i)
    {
      s << indent << "  flex_cmd[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.flex_cmd[i]);
    }
    s << indent << "roll_position[]" << std::endl;
    for (size_t i = 0; i < v.roll_position.size(); ++i)
    {
      s << indent << "  roll_position[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.roll_position[i]);
    }
    s << indent << "roll_effort[]" << std::endl;
    for (size_t i = 0; i < v.roll_effort.size(); ++i)
    {
      s << indent << "  roll_effort[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.roll_effort[i]);
    }
    s << indent << "roll_cmd[]" << std::endl;
    for (size_t i = 0; i < v.roll_cmd.size(); ++i)
    {
      s << indent << "  roll_cmd[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.roll_cmd[i]);
    }
    s << indent << "roll_velocity[]" << std::endl;
    for (size_t i = 0; i < v.roll_velocity.size(); ++i)
    {
      s << indent << "  roll_velocity[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.roll_velocity[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_WRISTROLLTURN_H