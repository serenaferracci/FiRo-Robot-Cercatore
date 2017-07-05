# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "navig_robot: 7 messages, 0 services")

set(MSG_I_FLAGS "-Inavig_robot:/home/serena/catkin_ws/devel/share/navig_robot/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(navig_robot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg" NAME_WE)
add_custom_target(_navig_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_robot" "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:navig_robot/navigFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg" NAME_WE)
add_custom_target(_navig_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_robot" "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg" "geometry_msgs/Pose:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:navig_robot/navigResult:geometry_msgs/TwistWithCovariance:geometry_msgs/PoseWithCovariance:actionlib_msgs/GoalID:nav_msgs/Odometry:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg" NAME_WE)
add_custom_target(_navig_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_robot" "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg" ""
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg" NAME_WE)
add_custom_target(_navig_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_robot" "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg" ""
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg" NAME_WE)
add_custom_target(_navig_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_robot" "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/TwistWithCovariance:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:nav_msgs/Odometry"
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg" NAME_WE)
add_custom_target(_navig_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_robot" "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg" "geometry_msgs/Pose:geometry_msgs/Twist:navig_robot/navigActionResult:navig_robot/navigGoal:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:navig_robot/navigResult:geometry_msgs/TwistWithCovariance:navig_robot/navigFeedback:navig_robot/navigActionFeedback:geometry_msgs/PoseWithCovariance:actionlib_msgs/GoalStatus:actionlib_msgs/GoalID:nav_msgs/Odometry:navig_robot/navigActionGoal:std_msgs/Header"
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg" NAME_WE)
add_custom_target(_navig_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "navig_robot" "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:navig_robot/navigGoal"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_robot
)
_generate_msg_cpp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_robot
)
_generate_msg_cpp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_robot
)
_generate_msg_cpp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_robot
)
_generate_msg_cpp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_robot
)
_generate_msg_cpp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_robot
)
_generate_msg_cpp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_robot
)

### Generating Services

### Generating Module File
_generate_module_cpp(navig_robot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_robot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(navig_robot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(navig_robot_generate_messages navig_robot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_cpp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_cpp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_cpp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_cpp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_cpp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_cpp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_cpp _navig_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navig_robot_gencpp)
add_dependencies(navig_robot_gencpp navig_robot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navig_robot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_robot
)
_generate_msg_eus(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_robot
)
_generate_msg_eus(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_robot
)
_generate_msg_eus(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_robot
)
_generate_msg_eus(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_robot
)
_generate_msg_eus(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_robot
)
_generate_msg_eus(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_robot
)

### Generating Services

### Generating Module File
_generate_module_eus(navig_robot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_robot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(navig_robot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(navig_robot_generate_messages navig_robot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_eus _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_eus _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_eus _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_eus _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_eus _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_eus _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_eus _navig_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navig_robot_geneus)
add_dependencies(navig_robot_geneus navig_robot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navig_robot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_robot
)
_generate_msg_lisp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_robot
)
_generate_msg_lisp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_robot
)
_generate_msg_lisp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_robot
)
_generate_msg_lisp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_robot
)
_generate_msg_lisp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_robot
)
_generate_msg_lisp(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_robot
)

### Generating Services

### Generating Module File
_generate_module_lisp(navig_robot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_robot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(navig_robot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(navig_robot_generate_messages navig_robot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_lisp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_lisp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_lisp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_lisp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_lisp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_lisp _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_lisp _navig_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navig_robot_genlisp)
add_dependencies(navig_robot_genlisp navig_robot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navig_robot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_robot
)
_generate_msg_nodejs(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_robot
)
_generate_msg_nodejs(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_robot
)
_generate_msg_nodejs(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_robot
)
_generate_msg_nodejs(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_robot
)
_generate_msg_nodejs(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_robot
)
_generate_msg_nodejs(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_robot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(navig_robot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_robot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(navig_robot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(navig_robot_generate_messages navig_robot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_nodejs _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_nodejs _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_nodejs _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_nodejs _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_nodejs _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_nodejs _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_nodejs _navig_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navig_robot_gennodejs)
add_dependencies(navig_robot_gennodejs navig_robot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navig_robot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot
)
_generate_msg_py(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot
)
_generate_msg_py(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot
)
_generate_msg_py(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot
)
_generate_msg_py(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot
)
_generate_msg_py(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot
)
_generate_msg_py(navig_robot
  "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot
)

### Generating Services

### Generating Module File
_generate_module_py(navig_robot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(navig_robot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(navig_robot_generate_messages navig_robot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionFeedback.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_py _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionResult.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_py _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigGoal.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_py _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigFeedback.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_py _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigResult.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_py _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigAction.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_py _navig_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/navig_robot/msg/navigActionGoal.msg" NAME_WE)
add_dependencies(navig_robot_generate_messages_py _navig_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(navig_robot_genpy)
add_dependencies(navig_robot_genpy navig_robot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS navig_robot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/navig_robot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(navig_robot_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(navig_robot_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(navig_robot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/navig_robot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(navig_robot_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(navig_robot_generate_messages_eus nav_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(navig_robot_generate_messages_eus std_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/navig_robot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(navig_robot_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(navig_robot_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(navig_robot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/navig_robot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(navig_robot_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(navig_robot_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(navig_robot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/navig_robot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(navig_robot_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(navig_robot_generate_messages_py nav_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(navig_robot_generate_messages_py std_msgs_generate_messages_py)
endif()
