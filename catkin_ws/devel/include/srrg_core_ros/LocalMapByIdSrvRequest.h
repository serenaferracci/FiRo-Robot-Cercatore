// Generated by gencpp from file srrg_core_ros/LocalMapByIdSrvRequest.msg
// DO NOT EDIT!


#ifndef SRRG_CORE_ROS_MESSAGE_LOCALMAPBYIDSRVREQUEST_H
#define SRRG_CORE_ROS_MESSAGE_LOCALMAPBYIDSRVREQUEST_H


#include <string>
#include <vector>
#include <map>

#include <ros/types.h>
#include <ros/serialization.h>
#include <ros/builtin_message_traits.h>
#include <ros/message_operations.h>


namespace srrg_core_ros
{
template <class ContainerAllocator>
struct LocalMapByIdSrvRequest_
{
  typedef LocalMapByIdSrvRequest_<ContainerAllocator> Type;

  LocalMapByIdSrvRequest_()
    : local_map_id(0)  {
    }
  LocalMapByIdSrvRequest_(const ContainerAllocator& _alloc)
    : local_map_id(0)  {
  (void)_alloc;
    }



   typedef int32_t _local_map_id_type;
  _local_map_id_type local_map_id;




  typedef boost::shared_ptr< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> > Ptr;
  typedef boost::shared_ptr< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> const> ConstPtr;

}; // struct LocalMapByIdSrvRequest_

typedef ::srrg_core_ros::LocalMapByIdSrvRequest_<std::allocator<void> > LocalMapByIdSrvRequest;

typedef boost::shared_ptr< ::srrg_core_ros::LocalMapByIdSrvRequest > LocalMapByIdSrvRequestPtr;
typedef boost::shared_ptr< ::srrg_core_ros::LocalMapByIdSrvRequest const> LocalMapByIdSrvRequestConstPtr;

// constants requiring out of line definition



template<typename ContainerAllocator>
std::ostream& operator<<(std::ostream& s, const ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> & v)
{
ros::message_operations::Printer< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> >::stream(s, "", v);
return s;
}

} // namespace srrg_core_ros

namespace ros
{
namespace message_traits
{



// BOOLTRAITS {'IsFixedSize': True, 'IsMessage': True, 'HasHeader': False}
// {'sensor_msgs': ['/opt/ros/kinetic/share/sensor_msgs/cmake/../msg'], 'std_msgs': ['/opt/ros/kinetic/share/std_msgs/cmake/../msg'], 'srrg_core_ros': ['/home/serena/catkin_ws/src/srrg_core_ros/msg'], 'geometry_msgs': ['/opt/ros/kinetic/share/geometry_msgs/cmake/../msg']}

// !!!!!!!!!!! ['__class__', '__delattr__', '__dict__', '__doc__', '__eq__', '__format__', '__getattribute__', '__hash__', '__init__', '__module__', '__ne__', '__new__', '__reduce__', '__reduce_ex__', '__repr__', '__setattr__', '__sizeof__', '__str__', '__subclasshook__', '__weakref__', '_parsed_fields', 'constants', 'fields', 'full_name', 'has_header', 'header_present', 'names', 'package', 'parsed_fields', 'short_name', 'text', 'types']




template <class ContainerAllocator>
struct IsFixedSize< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsFixedSize< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> >
  : TrueType
  { };

template <class ContainerAllocator>
struct IsMessage< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> const>
  : TrueType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> >
  : FalseType
  { };

template <class ContainerAllocator>
struct HasHeader< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> const>
  : FalseType
  { };


template<class ContainerAllocator>
struct MD5Sum< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "a556acb0822fb8ff21c1dcc75d156a71";
  }

  static const char* value(const ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator>&) { return value(); }
  static const uint64_t static_value1 = 0xa556acb0822fb8ffULL;
  static const uint64_t static_value2 = 0x21c1dcc75d156a71ULL;
};

template<class ContainerAllocator>
struct DataType< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "srrg_core_ros/LocalMapByIdSrvRequest";
  }

  static const char* value(const ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator>&) { return value(); }
};

template<class ContainerAllocator>
struct Definition< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> >
{
  static const char* value()
  {
    return "int32 local_map_id\n\
";
  }

  static const char* value(const ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator>&) { return value(); }
};

} // namespace message_traits
} // namespace ros

namespace ros
{
namespace serialization
{

  template<class ContainerAllocator> struct Serializer< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> >
  {
    template<typename Stream, typename T> inline static void allInOne(Stream& stream, T m)
    {
      stream.next(m.local_map_id);
    }

    ROS_DECLARE_ALLINONE_SERIALIZER
  }; // struct LocalMapByIdSrvRequest_

} // namespace serialization
} // namespace ros

namespace ros
{
namespace message_operations
{

template<class ContainerAllocator>
struct Printer< ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator> >
{
  template<typename Stream> static void stream(Stream& s, const std::string& indent, const ::srrg_core_ros::LocalMapByIdSrvRequest_<ContainerAllocator>& v)
  {
    s << indent << "local_map_id: ";
    Printer<int32_t>::stream(s, indent + "  ", v.local_map_id);
  }
};

} // namespace message_operations
} // namespace ros

#endif // SRRG_CORE_ROS_MESSAGE_LOCALMAPBYIDSRVREQUEST_H