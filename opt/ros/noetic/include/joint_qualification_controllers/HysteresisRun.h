// Generated by gencpp from file joint_qualification_controllers/HysteresisRun.msg
// DO NOT EDIT!


#ifndef JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_HYSTERESISRUN_H
#define JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_HYSTERESISRUN_H


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
struct HysteresisRun_
{
  typedef HysteresisRun_<ContainerAllocator> Type;

  HysteresisRun_()
    : time()
    , effort()
    , position()
    , velocity()
    , dir(0)  {
    }
  HysteresisRun_(const ContainerAllocator& _alloc)
    : time(_alloc)
    , effort(_alloc)
    , position(_alloc)
    , velocity(_alloc)
    , dir(0)  {
  (void)_alloc;
    }



   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _time_type;
  _time_type time;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _effort_type;
  _effort_type effort;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _position_type;
  _position_type position;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _velocity_type;
  _velocity_type velocity;

   typedef uint8_t _dir_type;
  _dir_type dir;



// reducing the odds to have name collisions with Windows.h 
#if defined(_WIN32) && defined(UP)
  #undef UP
#endif
#if defined(_WIN32) && defined(DOWN)
  #undef DOWN
#endif

  enum {
    UP = 0u,
    DOWN = 1u,
  };


  typedef boost::shared_ptr< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> const> ConstPtr;

}; // struct HysteresisRun_

typedef ::joint_qualification_controllers::HysteresisRun_<std::allocator<void> > HysteresisRun;

typedef boost::shared_ptr< ::joint_qualification_controllers::HysteresisRun > HysteresisRunPtr;
typedef boost::shared_ptr< ::joint_qualification_controllers::HysteresisRun const> HysteresisRunConstPtr;

// constants requiring out of line definition

   

   



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator1> & lhs, const ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator2> & rhs)
{
  return lhs.time == rhs.time &&
    lhs.effort == rhs.effort &&
    lhs.position == rhs.position &&
    lhs.velocity == rhs.velocity &&
    lhs.dir == rhs.dir;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator1> & lhs, const ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace joint_qualification_controllers

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> >
{
  static const char* value()
  {
    return "53b5a9cc98e4aeb9e2e39c07ea2a59f5";
  }

  static const char* value(const ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x53b5a9cc98e4aeb9ULL;
  static const uint64_t static_value2 = 0xe2e39c07ea2a59f5ULL;
};

template<class ContainerAllocator>
struct DataType< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> >
{
  static const char* value()
  {
    return "joint_qualification_controllers/HysteresisRun";
  }

  static const char* value(const ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32[] time\n"
"float32[] effort\n"
"float32[] position\n"
"float32[] velocity\n"
"uint8 dir\n"
"uint8 UP=0\n"
"uint8 DOWN=1\n"
;
  }

  static const char* value(const ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.time);
      stream.next(m.effort);
      stream.next(m.position);
      stream.next(m.velocity);
      stream.next(m.dir);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HysteresisRun_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::joint_qualification_controllers::HysteresisRun_<ContainerAllocator>& v)
  {
    s << indent << "time[]" << std::endl;
    for (size_t i = 0; i < v.time.size(); ++i)
    {
      s << indent << "  time[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.time[i]);
    }
    s << indent << "effort[]" << std::endl;
    for (size_t i = 0; i < v.effort.size(); ++i)
    {
      s << indent << "  effort[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.effort[i]);
    }
    s << indent << "position[]" << std::endl;
    for (size_t i = 0; i < v.position.size(); ++i)
    {
      s << indent << "  position[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.position[i]);
    }
    s << indent << "velocity[]" << std::endl;
    for (size_t i = 0; i < v.velocity.size(); ++i)
    {
      s << indent << "  velocity[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.velocity[i]);
    }
    s << indent << "dir: ";
    Printer<uint8_t>::stream(s, indent + "  ", v.dir);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_HYSTERESISRUN_H