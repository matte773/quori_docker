// Generated by gencpp from file pr2_controllers_msgs/PointHeadActionGoal.msg
// DO NOT EDIT!


#ifndef PR2_CONTROLLERS_MSGS_MESSAGE_POINTHEADACTIONGOAL_H
#define PR2_CONTROLLERS_MSGS_MESSAGE_POINTHEADACTIONGOAL_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>
#include <actionlib_msgs/GoalID.h>
#include <pr2_controllers_msgs/PointHeadGoal.h>

namespace pr2_controllers_msgs
{
template <class ContainerAllocator>
struct PointHeadActionGoal_
{
  typedef PointHeadActionGoal_<ContainerAllocator> Type;

  PointHeadActionGoal_()
    : header()
    , goal_id()
    , goal()  {
    }
  PointHeadActionGoal_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , goal_id(_alloc)
    , goal(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef  ::actionlib_msgs::GoalID_<ContainerAllocator>  _goal_id_type;
  _goal_id_type goal_id;

   typedef  ::pr2_controllers_msgs::PointHeadGoal_<ContainerAllocator>  _goal_type;
  _goal_type goal;





  typedef boost::shared_ptr< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> const> ConstPtr;

}; // struct PointHeadActionGoal_

typedef ::pr2_controllers_msgs::PointHeadActionGoal_<std::allocator<void> > PointHeadActionGoal;

typedef boost::shared_ptr< ::pr2_controllers_msgs::PointHeadActionGoal > PointHeadActionGoalPtr;
typedef boost::shared_ptr< ::pr2_controllers_msgs::PointHeadActionGoal const> PointHeadActionGoalConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator1> & lhs, const ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.goal_id == rhs.goal_id &&
    lhs.goal == rhs.goal;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator1> & lhs, const ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace pr2_controllers_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "b53a8323d0ba7b310ba17a2d3a82a6b8";
  }

  static const char* value(const ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xb53a8323d0ba7b31ULL;
  static const uint64_t static_value2 = 0x0ba17a2d3a82a6b8ULL;
};

template<class ContainerAllocator>
struct DataType< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "pr2_controllers_msgs/PointHeadActionGoal";
  }

  static const char* value(const ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"\n"
"Header header\n"
"actionlib_msgs/GoalID goal_id\n"
"PointHeadGoal goal\n"
"\n"
"================================================================================\n"
"MSG: std_msgs/Header\n"
"# Standard metadata for higher-level stamped data types.\n"
"# This is generally used to communicate timestamped data \n"
"# in a particular coordinate frame.\n"
"# \n"
"# sequence ID: consecutively increasing ID \n"
"uint32 seq\n"
"#Two-integer timestamp that is expressed as:\n"
"# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n"
"# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n"
"# time-handling sugar is provided by the client library\n"
"time stamp\n"
"#Frame this data is associated with\n"
"string frame_id\n"
"\n"
"================================================================================\n"
"MSG: actionlib_msgs/GoalID\n"
"# The stamp should store the time at which this goal was requested.\n"
"# It is used by an action server when it tries to preempt all\n"
"# goals that were requested before a certain time\n"
"time stamp\n"
"\n"
"# The id provides a way to associate feedback and\n"
"# result message with specific goal requests. The id\n"
"# specified must be unique.\n"
"string id\n"
"\n"
"\n"
"================================================================================\n"
"MSG: pr2_controllers_msgs/PointHeadGoal\n"
"# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n"
"geometry_msgs/PointStamped target\n"
"geometry_msgs/Vector3 pointing_axis\n"
"string pointing_frame\n"
"duration min_duration\n"
"float64 max_velocity\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/PointStamped\n"
"# This represents a Point with reference coordinate frame and timestamp\n"
"Header header\n"
"Point point\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Point\n"
"# This contains the position of a point in free space\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
"\n"
"================================================================================\n"
"MSG: geometry_msgs/Vector3\n"
"# This represents a vector in free space. \n"
"# It is only meant to represent a direction. Therefore, it does not\n"
"# make sense to apply a translation to it (e.g., when applying a \n"
"# generic rigid transformation to a Vector3, tf2 will only apply the\n"
"# rotation). If you want your data to be translatable too, use the\n"
"# geometry_msgs/Point message instead.\n"
"\n"
"float64 x\n"
"float64 y\n"
"float64 z\n"
;
  }

  static const char* value(const ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.goal_id);
      stream.next(m.goal);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct PointHeadActionGoal_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::pr2_controllers_msgs::PointHeadActionGoal_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "goal_id: ";
    s << std::endl;
    Printer< ::actionlib_msgs::GoalID_<ContainerAllocator> >::stream(s, indent + "  ", v.goal_id);
    s << indent << "goal: ";
    s << std::endl;
    Printer< ::pr2_controllers_msgs::PointHeadGoal_<ContainerAllocator> >::stream(s, indent + "  ", v.goal);
  }
};

} // namespace message_operations
} // namespace ros

#endif // PR2_CONTROLLERS_MSGS_MESSAGE_POINTHEADACTIONGOAL_H
