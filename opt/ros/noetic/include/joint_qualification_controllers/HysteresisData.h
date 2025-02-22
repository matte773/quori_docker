// Generated by gencpp from file joint_qualification_controllers/HysteresisData.msg
// DO NOT EDIT!


#ifndef JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_HYSTERESISDATA_H
#define JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_HYSTERESISDATA_H


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
struct HysteresisData_
{
  typedef HysteresisData_<ContainerAllocator> Type;

  HysteresisData_()
    : joint_name()
    , time_up()
    , effort_up()
    , position_up()
    , velocity_up()
    , time_down()
    , effort_down()
    , position_down()
    , velocity_down()
    , arg_name()
    , arg_value()  {
    }
  HysteresisData_(const ContainerAllocator& _alloc)
    : joint_name(_alloc)
    , time_up(_alloc)
    , effort_up(_alloc)
    , position_up(_alloc)
    , velocity_up(_alloc)
    , time_down(_alloc)
    , effort_down(_alloc)
    , position_down(_alloc)
    , velocity_down(_alloc)
    , arg_name(_alloc)
    , arg_value(_alloc)  {
  (void)_alloc;
    }



   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _joint_name_type;
  _joint_name_type joint_name;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _time_up_type;
  _time_up_type time_up;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _effort_up_type;
  _effort_up_type effort_up;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _position_up_type;
  _position_up_type position_up;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _velocity_up_type;
  _velocity_up_type velocity_up;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _time_down_type;
  _time_down_type time_down;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _effort_down_type;
  _effort_down_type effort_down;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _position_down_type;
  _position_down_type position_down;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _velocity_down_type;
  _velocity_down_type velocity_down;

   typedef std::vector<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>> _arg_name_type;
  _arg_name_type arg_name;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _arg_value_type;
  _arg_value_type arg_value;





  typedef boost::shared_ptr< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> const> ConstPtr;

}; // struct HysteresisData_

typedef ::joint_qualification_controllers::HysteresisData_<std::allocator<void> > HysteresisData;

typedef boost::shared_ptr< ::joint_qualification_controllers::HysteresisData > HysteresisDataPtr;
typedef boost::shared_ptr< ::joint_qualification_controllers::HysteresisData const> HysteresisDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::joint_qualification_controllers::HysteresisData_<ContainerAllocator1> & lhs, const ::joint_qualification_controllers::HysteresisData_<ContainerAllocator2> & rhs)
{
  return lhs.joint_name == rhs.joint_name &&
    lhs.time_up == rhs.time_up &&
    lhs.effort_up == rhs.effort_up &&
    lhs.position_up == rhs.position_up &&
    lhs.velocity_up == rhs.velocity_up &&
    lhs.time_down == rhs.time_down &&
    lhs.effort_down == rhs.effort_down &&
    lhs.position_down == rhs.position_down &&
    lhs.velocity_down == rhs.velocity_down &&
    lhs.arg_name == rhs.arg_name &&
    lhs.arg_value == rhs.arg_value;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::joint_qualification_controllers::HysteresisData_<ContainerAllocator1> & lhs, const ::joint_qualification_controllers::HysteresisData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace joint_qualification_controllers

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "55018edece2f193bc97f016db04a871b";
  }

  static const char* value(const ::joint_qualification_controllers::HysteresisData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x55018edece2f193bULL;
  static const uint64_t static_value2 = 0xc97f016db04a871bULL;
};

template<class ContainerAllocator>
struct DataType< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "joint_qualification_controllers/HysteresisData";
  }

  static const char* value(const ::joint_qualification_controllers::HysteresisData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "string joint_name\n"
"\n"
"float32[] time_up\n"
"float32[] effort_up\n"
"float32[] position_up\n"
"float32[] velocity_up\n"
"\n"
"float32[] time_down\n"
"float32[] effort_down\n"
"float32[] position_down\n"
"float32[] velocity_down\n"
"\n"
"string[] arg_name\n"
"float32[] arg_value\n"
;
  }

  static const char* value(const ::joint_qualification_controllers::HysteresisData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.joint_name);
      stream.next(m.time_up);
      stream.next(m.effort_up);
      stream.next(m.position_up);
      stream.next(m.velocity_up);
      stream.next(m.time_down);
      stream.next(m.effort_down);
      stream.next(m.position_down);
      stream.next(m.velocity_down);
      stream.next(m.arg_name);
      stream.next(m.arg_value);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct HysteresisData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::joint_qualification_controllers::HysteresisData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::joint_qualification_controllers::HysteresisData_<ContainerAllocator>& v)
  {
    s << indent << "joint_name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.joint_name);
    s << indent << "time_up[]" << std::endl;
    for (size_t i = 0; i < v.time_up.size(); ++i)
    {
      s << indent << "  time_up[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.time_up[i]);
    }
    s << indent << "effort_up[]" << std::endl;
    for (size_t i = 0; i < v.effort_up.size(); ++i)
    {
      s << indent << "  effort_up[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.effort_up[i]);
    }
    s << indent << "position_up[]" << std::endl;
    for (size_t i = 0; i < v.position_up.size(); ++i)
    {
      s << indent << "  position_up[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.position_up[i]);
    }
    s << indent << "velocity_up[]" << std::endl;
    for (size_t i = 0; i < v.velocity_up.size(); ++i)
    {
      s << indent << "  velocity_up[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.velocity_up[i]);
    }
    s << indent << "time_down[]" << std::endl;
    for (size_t i = 0; i < v.time_down.size(); ++i)
    {
      s << indent << "  time_down[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.time_down[i]);
    }
    s << indent << "effort_down[]" << std::endl;
    for (size_t i = 0; i < v.effort_down.size(); ++i)
    {
      s << indent << "  effort_down[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.effort_down[i]);
    }
    s << indent << "position_down[]" << std::endl;
    for (size_t i = 0; i < v.position_down.size(); ++i)
    {
      s << indent << "  position_down[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.position_down[i]);
    }
    s << indent << "velocity_down[]" << std::endl;
    for (size_t i = 0; i < v.velocity_down.size(); ++i)
    {
      s << indent << "  velocity_down[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.velocity_down[i]);
    }
    s << indent << "arg_name[]" << std::endl;
    for (size_t i = 0; i < v.arg_name.size(); ++i)
    {
      s << indent << "  arg_name[" << i << "]: ";
      Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.arg_name[i]);
    }
    s << indent << "arg_value[]" << std::endl;
    for (size_t i = 0; i < v.arg_value.size(); ++i)
    {
      s << indent << "  arg_value[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.arg_value[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_HYSTERESISDATA_H
