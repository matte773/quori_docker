// Generated by gencpp from file joint_qualification_controllers/JointData.msg
// DO NOT EDIT!


#ifndef JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_JOINTDATA_H
#define JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_JOINTDATA_H


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
struct JointData_
{
  typedef JointData_<ContainerAllocator> Type;

  JointData_()
    : index(0)
    , name()
    , is_cal(0)
    , has_safety(0)
    , type()  {
    }
  JointData_(const ContainerAllocator& _alloc)
    : index(0)
    , name(_alloc)
    , is_cal(0)
    , has_safety(0)
    , type(_alloc)  {
  (void)_alloc;
    }



   typedef int16_t _index_type;
  _index_type index;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _name_type;
  _name_type name;

   typedef int8_t _is_cal_type;
  _is_cal_type is_cal;

   typedef int8_t _has_safety_type;
  _has_safety_type has_safety;

   typedef std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>> _type_type;
  _type_type type;





  typedef boost::shared_ptr< ::joint_qualification_controllers::JointData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::joint_qualification_controllers::JointData_<ContainerAllocator> const> ConstPtr;

}; // struct JointData_

typedef ::joint_qualification_controllers::JointData_<std::allocator<void> > JointData;

typedef boost::shared_ptr< ::joint_qualification_controllers::JointData > JointDataPtr;
typedef boost::shared_ptr< ::joint_qualification_controllers::JointData const> JointDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::joint_qualification_controllers::JointData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::joint_qualification_controllers::JointData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::joint_qualification_controllers::JointData_<ContainerAllocator1> & lhs, const ::joint_qualification_controllers::JointData_<ContainerAllocator2> & rhs)
{
  return lhs.index == rhs.index &&
    lhs.name == rhs.name &&
    lhs.is_cal == rhs.is_cal &&
    lhs.has_safety == rhs.has_safety &&
    lhs.type == rhs.type;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::joint_qualification_controllers::JointData_<ContainerAllocator1> & lhs, const ::joint_qualification_controllers::JointData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace joint_qualification_controllers

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::joint_qualification_controllers::JointData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::joint_qualification_controllers::JointData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::joint_qualification_controllers::JointData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::joint_qualification_controllers::JointData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::joint_qualification_controllers::JointData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::joint_qualification_controllers::JointData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::joint_qualification_controllers::JointData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "191610564bf935172c9424c803ed6939";
  }

  static const char* value(const ::joint_qualification_controllers::JointData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x191610564bf93517ULL;
  static const uint64_t static_value2 = 0x2c9424c803ed6939ULL;
};

template<class ContainerAllocator>
struct DataType< ::joint_qualification_controllers::JointData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "joint_qualification_controllers/JointData";
  }

  static const char* value(const ::joint_qualification_controllers::JointData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::joint_qualification_controllers::JointData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int16 index\n"
"string name\n"
"byte is_cal\n"
"byte has_safety\n"
"string type\n"
"\n"
;
  }

  static const char* value(const ::joint_qualification_controllers::JointData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::joint_qualification_controllers::JointData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.index);
      stream.next(m.name);
      stream.next(m.is_cal);
      stream.next(m.has_safety);
      stream.next(m.type);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct JointData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::joint_qualification_controllers::JointData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::joint_qualification_controllers::JointData_<ContainerAllocator>& v)
  {
    s << indent << "index: ";
    Printer<int16_t>::stream(s, indent + "  ", v.index);
    s << indent << "name: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.name);
    s << indent << "is_cal: ";
    Printer<int8_t>::stream(s, indent + "  ", v.is_cal);
    s << indent << "has_safety: ";
    Printer<int8_t>::stream(s, indent + "  ", v.has_safety);
    s << indent << "type: ";
    Printer<std::basic_string<char, std::char_traits<char>, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<char>>>::stream(s, indent + "  ", v.type);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_JOINTDATA_H