// Generated by gencpp from file joint_qualification_controllers/CBPositionData.msg
// DO NOT EDIT!


#ifndef JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_CBPOSITIONDATA_H
#define JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_CBPOSITIONDATA_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <joint_qualification_controllers/JointPositionData.h>
#include <joint_qualification_controllers/JointPositionData.h>

namespace joint_qualification_controllers
{
template <class ContainerAllocator>
struct CBPositionData_
{
  typedef CBPositionData_<ContainerAllocator> Type;

  CBPositionData_()
    : flex_position(0.0)
    , lift_hold()
    , flex_hold()  {
    }
  CBPositionData_(const ContainerAllocator& _alloc)
    : flex_position(0.0)
    , lift_hold(_alloc)
    , flex_hold(_alloc)  {
  (void)_alloc;
    }



   typedef float _flex_position_type;
  _flex_position_type flex_position;

   typedef  ::joint_qualification_controllers::JointPositionData_<ContainerAllocator>  _lift_hold_type;
  _lift_hold_type lift_hold;

   typedef  ::joint_qualification_controllers::JointPositionData_<ContainerAllocator>  _flex_hold_type;
  _flex_hold_type flex_hold;





  typedef boost::shared_ptr< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> const> ConstPtr;

}; // struct CBPositionData_

typedef ::joint_qualification_controllers::CBPositionData_<std::allocator<void> > CBPositionData;

typedef boost::shared_ptr< ::joint_qualification_controllers::CBPositionData > CBPositionDataPtr;
typedef boost::shared_ptr< ::joint_qualification_controllers::CBPositionData const> CBPositionDataConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::joint_qualification_controllers::CBPositionData_<ContainerAllocator1> & lhs, const ::joint_qualification_controllers::CBPositionData_<ContainerAllocator2> & rhs)
{
  return lhs.flex_position == rhs.flex_position &&
    lhs.lift_hold == rhs.lift_hold &&
    lhs.flex_hold == rhs.flex_hold;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::joint_qualification_controllers::CBPositionData_<ContainerAllocator1> & lhs, const ::joint_qualification_controllers::CBPositionData_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace joint_qualification_controllers

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "e7b62743b80e10dde08aea881b6ccf7b";
  }

  static const char* value(const ::joint_qualification_controllers::CBPositionData_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xe7b62743b80e10ddULL;
  static const uint64_t static_value2 = 0xe08aea881b6ccf7bULL;
};

template<class ContainerAllocator>
struct DataType< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "joint_qualification_controllers/CBPositionData";
  }

  static const char* value(const ::joint_qualification_controllers::CBPositionData_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> >
{
  static const char* value()
  {
    return "float32 flex_position\n"
"JointPositionData lift_hold\n"
"JointPositionData flex_hold\n"
"\n"
"================================================================================\n"
"MSG: joint_qualification_controllers/JointPositionData\n"
"float32[] time\n"
"float32[] position\n"
"float32[] velocity\n"
"float32[] effort\n"
;
  }

  static const char* value(const ::joint_qualification_controllers::CBPositionData_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.flex_position);
      stream.next(m.lift_hold);
      stream.next(m.flex_hold);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct CBPositionData_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::joint_qualification_controllers::CBPositionData_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::joint_qualification_controllers::CBPositionData_<ContainerAllocator>& v)
  {
    s << indent << "flex_position: ";
    Printer<float>::stream(s, indent + "  ", v.flex_position);
    s << indent << "lift_hold: ";
    s << std::endl;
    Printer< ::joint_qualification_controllers::JointPositionData_<ContainerAllocator> >::stream(s, indent + "  ", v.lift_hold);
    s << indent << "flex_hold: ";
    s << std::endl;
    Printer< ::joint_qualification_controllers::JointPositionData_<ContainerAllocator> >::stream(s, indent + "  ", v.flex_hold);
  }
};

} // namespace message_operations
} // namespace ros

#endif // JOINT_QUALIFICATION_CONTROLLERS_MESSAGE_CBPOSITIONDATA_H