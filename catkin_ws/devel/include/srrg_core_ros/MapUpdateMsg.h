// Generated by gencpp from file srrg_core_ros/MapUpdateMsg.msg
// DO NOT EDIT!


#ifndef SRRG_CORE_ROS_MESSAGE_MAPUPDATEMSG_H
#define SRRG_CORE_ROS_MESSAGE_MAPUPDATEMSG_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>

#include <srrg_core_ros/MapNodeUpdateMsg.h>

namespace srrg_core_ros
{
template <class ContainerAllocator>
struct MapUpdateMsg_
{
  typedef MapUpdateMsg_<ContainerAllocator> Type;

  MapUpdateMsg_()
    : seq(0)
    , updates()  {
    }
  MapUpdateMsg_(const ContainerAllocator& _alloc)
    : seq(0)
    , updates(_alloc)  {
  (void)_alloc;
    }



   typedef int32_t _seq_type;
  _seq_type seq;

   typedef std::vector< ::srrg_core_ros::MapNodeUpdateMsg_<ContainerAllocator> , typename ContainerAllocator::template rebind< ::srrg_core_ros::MapNodeUpdateMsg_<ContainerAllocator> >::other >  _updates_type;
  _updates_type updates;




  typedef boost::shared_ptr< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> const> ConstPtr;

}; // struct MapUpdateMsg_

typedef ::srrg_core_ros::MapUpdateMsg_<std::allocator<void> > MapUpdateMsg;

typedef boost::shared_ptr< ::srrg_core_ros::MapUpdateMsg > MapUpdateMsgPtr;
typedef boost::shared_ptr< ::srrg_core_ros::MapUpdateMsg const> MapUpdateMsgConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace srrg_core_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': False, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'srrg_core_ros': ['/home/serena/catkin_ws/src/srrg_core_ros/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> const>
  : FalseType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "9e0d375602fbc50cf3d9837f15efb92a";
  }

  static const char* value(const ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0x9e0d375602fbc50cULL;
  static const uint64_t static_value2 = 0xf3d9837f15efb92aULL;
};

template<class ContainerAllocator>
struct DataType< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "srrg_core_ros/MapUpdateMsg";
  }

  static const char* value(const ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 seq\n\
MapNodeUpdateMsg[] updates\n\
================================================================================\n\
MSG: srrg_core_ros/MapNodeUpdateMsg\n\
int32 node_id\n\
geometry_msgs/Pose transform\n\
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
";
  }

  static const char* value(const ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.seq);
      stream.next(m.updates);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct MapUpdateMsg_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::srrg_core_ros::MapUpdateMsg_<ContainerAllocator>& v)
  {
    s << indent << "seq: ";
    Printer<int32_t>::stream(s, indent + "  ", v.seq);
    s << indent << "updates[]" << std::endl;
    for (size_t i = 0; i < v.updates.size(); ++i)
    {
      s << indent << "  updates[" << i << "]: ";
      s << std::endl;
      s << indent;
      Printer< ::srrg_core_ros::MapNodeUpdateMsg_<ContainerAllocator> >::stream(s, indent + "    ", v.updates[i]);
    }
  }
};

} // namespace message_operations
} // namespace ros

#endif // SRRG_CORE_ROS_MESSAGE_MAPUPDATEMSG_H