// Generated by gencpp from file calibration_msgs/DenseLaserSnapshot.msg
// DO NOT EDIT!


#ifndef CALIBRATION_MSGS_MESSAGE_DENSELASERSNAPSHOT_H
#define CALIBRATION_MSGS_MESSAGE_DENSELASERSNAPSHOT_H


#include <string>
#include <vector>
#include <memory>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <std_msgs/Header.h>

namespace calibration_msgs
{
template <class ContainerAllocator>
struct DenseLaserSnapshot_
{
  typedef DenseLaserSnapshot_<ContainerAllocator> Type;

  DenseLaserSnapshot_()
    : header()
    , angle_min(0.0)
    , angle_max(0.0)
    , angle_increment(0.0)
    , time_increment(0.0)
    , range_min(0.0)
    , range_max(0.0)
    , readings_per_scan(0)
    , num_scans(0)
    , ranges()
    , intensities()
    , scan_start()  {
    }
  DenseLaserSnapshot_(const ContainerAllocator& _alloc)
    : header(_alloc)
    , angle_min(0.0)
    , angle_max(0.0)
    , angle_increment(0.0)
    , time_increment(0.0)
    , range_min(0.0)
    , range_max(0.0)
    , readings_per_scan(0)
    , num_scans(0)
    , ranges(_alloc)
    , intensities(_alloc)
    , scan_start(_alloc)  {
  (void)_alloc;
    }



   typedef  ::std_msgs::Header_<ContainerAllocator>  _header_type;
  _header_type header;

   typedef float _angle_min_type;
  _angle_min_type angle_min;

   typedef float _angle_max_type;
  _angle_max_type angle_max;

   typedef float _angle_increment_type;
  _angle_increment_type angle_increment;

   typedef float _time_increment_type;
  _time_increment_type time_increment;

   typedef float _range_min_type;
  _range_min_type range_min;

   typedef float _range_max_type;
  _range_max_type range_max;

   typedef uint32_t _readings_per_scan_type;
  _readings_per_scan_type readings_per_scan;

   typedef uint32_t _num_scans_type;
  _num_scans_type num_scans;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _ranges_type;
  _ranges_type ranges;

   typedef std::vector<float, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<float>> _intensities_type;
  _intensities_type intensities;

   typedef std::vector<ros::Time, typename std::allocator_traits<ContainerAllocator>::template rebind_alloc<ros::Time>> _scan_start_type;
  _scan_start_type scan_start;





  typedef boost::shared_ptr< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> const> ConstPtr;

}; // struct DenseLaserSnapshot_

typedef ::calibration_msgs::DenseLaserSnapshot_<std::allocator<void> > DenseLaserSnapshot;

typedef boost::shared_ptr< ::calibration_msgs::DenseLaserSnapshot > DenseLaserSnapshotPtr;
typedef boost::shared_ptr< ::calibration_msgs::DenseLaserSnapshot const> DenseLaserSnapshotConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> >::stream(s, "", v);
return s;
}


template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator==(const ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator1> & lhs, const ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator2> & rhs)
{
  return lhs.header == rhs.header &&
    lhs.angle_min == rhs.angle_min &&
    lhs.angle_max == rhs.angle_max &&
    lhs.angle_increment == rhs.angle_increment &&
    lhs.time_increment == rhs.time_increment &&
    lhs.range_min == rhs.range_min &&
    lhs.range_max == rhs.range_max &&
    lhs.readings_per_scan == rhs.readings_per_scan &&
    lhs.num_scans == rhs.num_scans &&
    lhs.ranges == rhs.ranges &&
    lhs.intensities == rhs.intensities &&
    lhs.scan_start == rhs.scan_start;
}

template<typename ContainerAllocator1, typename ContainerAllocator2>
bool operator!=(const ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator1> & lhs, const ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator2> & rhs)
{
  return !(lhs == rhs);
}


} // namespace calibration_msgs

namespace ros
{
namespace message_traits
{





template <class ContainerAllocator>
struct IsMessage< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> const>
  : TrueType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> >
{
  static const char* value()
  {
    return "deb2810d3530db3484f886a81243195d";
  }

  static const char* value(const ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xdeb2810d3530db34ULL;
  static const uint64_t static_value2 = 0x84f886a81243195dULL;
};

template<class ContainerAllocator>
struct DataType< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> >
{
  static const char* value()
  {
    return "calibration_msgs/DenseLaserSnapshot";
  }

  static const char* value(const ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# Provides all the state & sensor information for\n"
"# a single sweep of laser attached to some mechanism.\n"
"# Most likely, this will be used with PR2's tilting laser mechanism\n"
"Header header\n"
"\n"
"# Store the laser intrinsics. This is very similar to the\n"
"# intrinsics commonly stored in \n"
"float32 angle_min        # start angle of the scan [rad]\n"
"float32 angle_max        # end angle of the scan [rad]\n"
"float32 angle_increment  # angular distance between measurements [rad]\n"
"float32 time_increment   # time between measurements [seconds]\n"
"float32 range_min        # minimum range value [m]\n"
"float32 range_max        # maximum range value [m]\n"
"\n"
"# Define the size of the binary data\n"
"uint32 readings_per_scan    # (Width)\n"
"uint32 num_scans            # (Height)\n"
"\n"
"# 2D Arrays storing laser data.\n"
"# We can think of each type data as being a single channel image.\n"
"# Each row of the image has data from a single scan, and scans are\n"
"# concatenated to form the entire 'image'.\n"
"float32[] ranges            # (Image data)\n"
"float32[] intensities       # (Image data)\n"
"\n"
"# Store the start time of each scan\n"
"time[] scan_start\n"
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
;
  }

  static const char* value(const ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.header);
      stream.next(m.angle_min);
      stream.next(m.angle_max);
      stream.next(m.angle_increment);
      stream.next(m.time_increment);
      stream.next(m.range_min);
      stream.next(m.range_max);
      stream.next(m.readings_per_scan);
      stream.next(m.num_scans);
      stream.next(m.ranges);
      stream.next(m.intensities);
      stream.next(m.scan_start);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct DenseLaserSnapshot_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::calibration_msgs::DenseLaserSnapshot_<ContainerAllocator>& v)
  {
    s << indent << "header: ";
    s << std::endl;
    Printer< ::std_msgs::Header_<ContainerAllocator> >::stream(s, indent + "  ", v.header);
    s << indent << "angle_min: ";
    Printer<float>::stream(s, indent + "  ", v.angle_min);
    s << indent << "angle_max: ";
    Printer<float>::stream(s, indent + "  ", v.angle_max);
    s << indent << "angle_increment: ";
    Printer<float>::stream(s, indent + "  ", v.angle_increment);
    s << indent << "time_increment: ";
    Printer<float>::stream(s, indent + "  ", v.time_increment);
    s << indent << "range_min: ";
    Printer<float>::stream(s, indent + "  ", v.range_min);
    s << indent << "range_max: ";
    Printer<float>::stream(s, indent + "  ", v.range_max);
    s << indent << "readings_per_scan: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.readings_per_scan);
    s << indent << "num_scans: ";
    Printer<uint32_t>::stream(s, indent + "  ", v.num_scans);
    s << indent << "ranges[]" << std::endl;
    for (size_t i = 0; i < v.ranges.size(); ++i)
    {
      s << indent << "  ranges[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.ranges[i]);
    }
    s << indent << "intensities[]" << std::endl;
    for (size_t i = 0; i < v.intensities.size(); ++i)
    {
      s << indent << "  intensities[" << i << "]: ";
      Printer<float>::stream(s, indent + "  ", v.intensities[i]);
    }
    s << indent << "scan_start[]" << std::endl;
    for (size_t i = 0; i < v.scan_start.size(); ++i)
    {
      s << indent << "  scan_start[" << i << "]: ";
      Printer<ros::Time>::stream(s, indent + "  ", v.scan_start[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // CALIBRATION_MSGS_MESSAGE_DENSELASERSNAPSHOT_H