// Generated by gencpp from file navig_robot/navigResult.msg
// DO NOT EDIT!


#ifndef NAVIG_ROBOT_MESSAGE_NAVIGRESULT_H
#define NAVIG_ROBOT_MESSAGE_NAVIGRESULT_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <nav_msgs/Odometry.h>

namespace navig_robot
{
template <class ContainerAllocator>
struct navigResult_
{
  typedef navigResult_<ContainerAllocator> Type;

  navigResult_()
    : odom()  {
    }
  navigResult_(const ContainerAllocator& _alloc)
    : odom(_alloc)  {
  (void)_alloc;
    }



   typedef  ::nav_msgs::Odometry_<ContainerAllocator>  _odom_type;
  _odom_type odom;




  typedef boost::shared_ptr< ::navig_robot::navigResult_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::navig_robot::navigResult_<ContainerAllocator> const> ConstPtr;

}; // struct navigResult_

typedef ::navig_robot::navigResult_<std::allocator<void> > navigResult;

typedef boost::shared_ptr< ::navig_robot::navigResult > navigResultPtr;
typedef boost::shared_ptr< ::navig_robot::navigResult const> navigResultConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::navig_robot::navigResult_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::navig_robot::navigResult_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace navig_robot

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'nav_msgs': ['/opt/ros/kinetic/share/nav_msgs/cmake/../msg'], 'navig_robot': ['/home/serena/catkin_ws/devel/share/navig_robot/msg'], 'actionlib_msgs': ['/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::navig_robot::navigResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::navig_robot::navigResult_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navig_robot::navigResult_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::navig_robot::navigResult_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navig_robot::navigResult_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::navig_robot::navigResult_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::navig_robot::navigResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "75d9701e058ed9a7608ba3dbc16b5b7e";
  }

  static const char* value(const ::navig_robot::navigResult_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x75d9701e058ed9a7ULL;
  static const uint64_t static_value2 = 0x608ba3dbc16b5b7eULL;
};

template<class ContainerAllocator>
struct DataType< ::navig_robot::navigResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "navig_robot/navigResult";
  }

  static const char* value(const ::navig_robot::navigResult_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::navig_robot::navigResult_<ContainerAllocator> >
{
  static const char* value()
  {
    return "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======\n\
#result definition\n\
nav_msgs/Odometry odom\n\
\n\
================================================================================\n\
MSG: nav_msgs/Odometry\n\
# This represents an estimate of a position and velocity in free space.  \n\
# The pose in this message should be specified in the coordinate frame given by header.frame_id.\n\
# The twist in this message should be specified in the coordinate frame given by the child_frame_id\n\
Header header\n\
string child_frame_id\n\
geometry_msgs/PoseWithCovariance pose\n\
geometry_msgs/TwistWithCovariance twist\n\
\n\
================================================================================\n\
MSG: std_msgs/Header\n\
# Standard metadata for higher-level stamped data types.\n\
# This is generally used to communicate timestamped data \n\
# in a particular coordinate frame.\n\
# \n\
# sequence ID: consecutively increasing ID \n\
uint32 seq\n\
#Two-integer timestamp that is expressed as:\n\
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')\n\
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')\n\
# time-handling sugar is provided by the client library\n\
time stamp\n\
#Frame this data is associated with\n\
# 0: no frame\n\
# 1: global frame\n\
string frame_id\n\
\n\
================================================================================\n\
MSG: geometry_msgs/PoseWithCovariance\n\
# This represents a pose in free space with uncertainty.\n\
\n\
Pose pose\n\
\n\
# Row-major representation of the 6x6 covariance matrix\n\
# The orientation parameters use a fixed-axis representation.\n\
# In order, the parameters are:\n\
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n\
float64[36] covariance\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Pose\n\
# A representation of pose in free space, composed of position and orientation. \n\
Point position\n\
Quaternion orientation\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Point\n\
# This contains the position of a point in free space\n\
float64 x\n\
float64 y\n\
float64 z\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Quaternion\n\
# This represents an orientation in free space in quaternion form.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
float64 w\n\
\n\
================================================================================\n\
MSG: geometry_msgs/TwistWithCovariance\n\
# This expresses velocity in free space with uncertainty.\n\
\n\
Twist twist\n\
\n\
# Row-major representation of the 6x6 covariance matrix\n\
# The orientation parameters use a fixed-axis representation.\n\
# In order, the parameters are:\n\
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)\n\
float64[36] covariance\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Twist\n\
# This expresses velocity in free space broken into its linear and angular parts.\n\
Vector3  linear\n\
Vector3  angular\n\
\n\
================================================================================\n\
MSG: geometry_msgs/Vector3\n\
# This represents a vector in free space. \n\
# It is only meant to represent a direction. Therefore, it does not\n\
# make sense to apply a translation to it (e.g., when applying a \n\
# generic rigid transformation to a Vector3, tf2 will only apply the\n\
# rotation). If you want your data to be translatable too, use the\n\
# geometry_msgs/Point message instead.\n\
\n\
float64 x\n\
float64 y\n\
float64 z\n\
";
  }

  static const char* value(const ::navig_robot::navigResult_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::navig_robot::navigResult_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.odom);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct navigResult_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::navig_robot::navigResult_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::navig_robot::navigResult_<ContainerAllocator>& v)
  {
    s << indent << "odom: ";
    s << std::endl;
    Printer< ::nav_msgs::Odometry_<ContainerAllocator> >::stream(s, indent + "  ", v.odom);
  }
};

} // namespace message_operations
} // namespace ros

#endif // NAVIG_ROBOT_MESSAGE_NAVIGRESULT_H
