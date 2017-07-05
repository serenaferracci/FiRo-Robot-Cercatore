// Generated by gencpp from file srrg_core_ros/IdsSrv.msg
// DO NOT EDIT!


#ifndef SRRG_CORE_ROS_MESSAGE_IDSSRV_H
#define SRRG_CORE_ROS_MESSAGE_IDSSRV_H

#include <ros/service_traits.h>


#include <srrg_core_ros/IdsSrvRequest.h>
#include <srrg_core_ros/IdsSrvResponse.h>


namespace srrg_core_ros
{

struct IdsSrv
{

typedef IdsSrvRequest Request;
typedef IdsSrvResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct IdsSrv
} // namespace srrg_core_ros


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::srrg_core_ros::IdsSrv > {
  static const char* value()
  {
    return "a8cde7006a101b5bad3531b015ef87fb";
  }

  static const char* value(const ::srrg_core_ros::IdsSrv&) { return value(); }
};

template<>
struct DataType< ::srrg_core_ros::IdsSrv > {
  static const char* value()
  {
    return "srrg_core_ros/IdsSrv";
  }

  static const char* value(const ::srrg_core_ros::IdsSrv&) { return value(); }
};


// service_traits::MD5Sum< ::srrg_core_ros::IdsSrvRequest> should match 
// service_traits::MD5Sum< ::srrg_core_ros::IdsSrv > 
template<>
struct MD5Sum< ::srrg_core_ros::IdsSrvRequest>
{
  static const char* value()
  {
    return MD5Sum< ::srrg_core_ros::IdsSrv >::value();
  }
  static const char* value(const ::srrg_core_ros::IdsSrvRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::srrg_core_ros::IdsSrvRequest> should match 
// service_traits::DataType< ::srrg_core_ros::IdsSrv > 
template<>
struct DataType< ::srrg_core_ros::IdsSrvRequest>
{
  static const char* value()
  {
    return DataType< ::srrg_core_ros::IdsSrv >::value();
  }
  static const char* value(const ::srrg_core_ros::IdsSrvRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::srrg_core_ros::IdsSrvResponse> should match 
// service_traits::MD5Sum< ::srrg_core_ros::IdsSrv > 
template<>
struct MD5Sum< ::srrg_core_ros::IdsSrvResponse>
{
  static const char* value()
  {
    return MD5Sum< ::srrg_core_ros::IdsSrv >::value();
  }
  static const char* value(const ::srrg_core_ros::IdsSrvResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::srrg_core_ros::IdsSrvResponse> should match 
// service_traits::DataType< ::srrg_core_ros::IdsSrv > 
template<>
struct DataType< ::srrg_core_ros::IdsSrvResponse>
{
  static const char* value()
  {
    return DataType< ::srrg_core_ros::IdsSrv >::value();
  }
  static const char* value(const ::srrg_core_ros::IdsSrvResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // SRRG_CORE_ROS_MESSAGE_IDSSRV_H
