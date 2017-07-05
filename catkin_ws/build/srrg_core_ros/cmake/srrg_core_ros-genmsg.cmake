# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "srrg_core_ros: 17 messages, 2 services")

set(MSG_I_FLAGS "-Isrrg_core_ros:/home/serena/catkin_ws/src/srrg_core_ros/msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/kinetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(srrg_core_ros_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv" ""
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point:srrg_core_ros/MapNodeUpdateMsg"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv" "srrg_core_ros/TrajectoryNodeMsg:geometry_msgs/Quaternion:geometry_msgs/Point32:geometry_msgs/Point:srrg_core_ros/RichPointMsg:geometry_msgs/Pose:srrg_core_ros/LocalMapMsg:srrg_core_ros/CloudMsg"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg" "srrg_core_ros/TrajectoryNodeMsg:geometry_msgs/Quaternion:geometry_msgs/Point32:geometry_msgs/Point:srrg_core_ros/RichPointMsg:geometry_msgs/Pose:srrg_core_ros/CloudMsg"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg" "srrg_core_ros/RichPointMsg:geometry_msgs/Point32:std_msgs/Header:srrg_core_ros/CloudMsg"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg" "geometry_msgs/Point32"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg" "srrg_core_ros/RichPointMsg:geometry_msgs/Point32"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg" "geometry_msgs/Quaternion:geometry_msgs/Pose:geometry_msgs/Point"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg" NAME_WE)
add_custom_target(_srrg_core_ros_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "srrg_core_ros" "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg" "sensor_msgs/Image:std_msgs/Header"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)

### Generating Services
_generate_srv_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)
_generate_srv_cpp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
)

### Generating Module File
_generate_module_cpp(srrg_core_ros
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(srrg_core_ros_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(srrg_core_ros_generate_messages srrg_core_ros_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_cpp _srrg_core_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srrg_core_ros_gencpp)
add_dependencies(srrg_core_ros_gencpp srrg_core_ros_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srrg_core_ros_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)

### Generating Services
_generate_srv_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)
_generate_srv_eus(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
)

### Generating Module File
_generate_module_eus(srrg_core_ros
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(srrg_core_ros_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(srrg_core_ros_generate_messages srrg_core_ros_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_eus _srrg_core_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srrg_core_ros_geneus)
add_dependencies(srrg_core_ros_geneus srrg_core_ros_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srrg_core_ros_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)

### Generating Services
_generate_srv_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)
_generate_srv_lisp(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
)

### Generating Module File
_generate_module_lisp(srrg_core_ros
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(srrg_core_ros_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(srrg_core_ros_generate_messages srrg_core_ros_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_lisp _srrg_core_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srrg_core_ros_genlisp)
add_dependencies(srrg_core_ros_genlisp srrg_core_ros_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srrg_core_ros_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)

### Generating Services
_generate_srv_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)
_generate_srv_nodejs(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
)

### Generating Module File
_generate_module_nodejs(srrg_core_ros
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(srrg_core_ros_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(srrg_core_ros_generate_messages srrg_core_ros_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_nodejs _srrg_core_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srrg_core_ros_gennodejs)
add_dependencies(srrg_core_ros_gennodejs srrg_core_ros_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srrg_core_ros_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/sensor_msgs/cmake/../msg/Image.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_msg_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)

### Generating Services
_generate_srv_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point32.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg;/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)
_generate_srv_py(srrg_core_ros
  "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
)

### Generating Module File
_generate_module_py(srrg_core_ros
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(srrg_core_ros_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(srrg_core_ros_generate_messages srrg_core_ros_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg" NAME_WE)
add_dependencies(srrg_core_ros_generate_messages_py _srrg_core_ros_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(srrg_core_ros_genpy)
add_dependencies(srrg_core_ros_genpy srrg_core_ros_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS srrg_core_ros_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/srrg_core_ros
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(srrg_core_ros_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(srrg_core_ros_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/srrg_core_ros
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(srrg_core_ros_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(srrg_core_ros_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/srrg_core_ros
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(srrg_core_ros_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(srrg_core_ros_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/srrg_core_ros
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(srrg_core_ros_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(srrg_core_ros_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/srrg_core_ros
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(srrg_core_ros_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(srrg_core_ros_generate_messages_py sensor_msgs_generate_messages_py)
endif()
