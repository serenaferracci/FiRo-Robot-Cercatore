# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "move_robot: 7 messages, 0 services")

set(MSG_I_FLAGS "-Imove_robot:/home/serena/catkin_ws/devel/share/move_robot/msg;-Iactionlib_msgs:/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg;-Istd_msgs:/opt/ros/kinetic/share/std_msgs/cmake/../msg;-Inav_msgs:/opt/ros/kinetic/share/nav_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/kinetic/share/geometry_msgs/cmake/../msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(move_robot_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg" NAME_WE)
add_custom_target(_move_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "move_robot" "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg" "actionlib_msgs/GoalID:std_msgs/Header:move_robot/moveFeedback:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg" NAME_WE)
add_custom_target(_move_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "move_robot" "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg" "geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:geometry_msgs/TwistWithCovariance:geometry_msgs/PoseWithCovariance:geometry_msgs/Pose:nav_msgs/Odometry"
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg" NAME_WE)
add_custom_target(_move_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "move_robot" "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg" ""
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg" NAME_WE)
add_custom_target(_move_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "move_robot" "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg" "actionlib_msgs/GoalID:std_msgs/Header:move_robot/moveGoal"
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg" NAME_WE)
add_custom_target(_move_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "move_robot" "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg" "geometry_msgs/Pose:geometry_msgs/Twist:std_msgs/Header:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:move_robot/moveResult:geometry_msgs/TwistWithCovariance:geometry_msgs/PoseWithCovariance:actionlib_msgs/GoalID:nav_msgs/Odometry:actionlib_msgs/GoalStatus"
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg" NAME_WE)
add_custom_target(_move_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "move_robot" "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg" ""
)

get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg" NAME_WE)
add_custom_target(_move_robot_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "move_robot" "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg" "move_robot/moveFeedback:geometry_msgs/Pose:geometry_msgs/Twist:std_msgs/Header:move_robot/moveGoal:geometry_msgs/Quaternion:geometry_msgs/Vector3:geometry_msgs/Point:move_robot/moveResult:geometry_msgs/TwistWithCovariance:move_robot/moveActionFeedback:move_robot/moveActionGoal:geometry_msgs/PoseWithCovariance:actionlib_msgs/GoalID:nav_msgs/Odometry:move_robot/moveActionResult:actionlib_msgs/GoalStatus"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_robot
)
_generate_msg_cpp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_robot
)
_generate_msg_cpp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_robot
)
_generate_msg_cpp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_robot
)
_generate_msg_cpp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_robot
)
_generate_msg_cpp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_robot
)
_generate_msg_cpp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_robot
)

### Generating Services

### Generating Module File
_generate_module_cpp(move_robot
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_robot
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(move_robot_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(move_robot_generate_messages move_robot_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_cpp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_cpp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_cpp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_cpp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_cpp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_cpp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_cpp _move_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_robot_gencpp)
add_dependencies(move_robot_gencpp move_robot_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_robot_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_robot
)
_generate_msg_eus(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_robot
)
_generate_msg_eus(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_robot
)
_generate_msg_eus(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_robot
)
_generate_msg_eus(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_robot
)
_generate_msg_eus(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_robot
)
_generate_msg_eus(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_robot
)

### Generating Services

### Generating Module File
_generate_module_eus(move_robot
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_robot
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(move_robot_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(move_robot_generate_messages move_robot_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_eus _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_eus _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_eus _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_eus _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_eus _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_eus _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_eus _move_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_robot_geneus)
add_dependencies(move_robot_geneus move_robot_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_robot_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_robot
)
_generate_msg_lisp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_robot
)
_generate_msg_lisp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_robot
)
_generate_msg_lisp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_robot
)
_generate_msg_lisp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_robot
)
_generate_msg_lisp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_robot
)
_generate_msg_lisp(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_robot
)

### Generating Services

### Generating Module File
_generate_module_lisp(move_robot
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_robot
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(move_robot_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(move_robot_generate_messages move_robot_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_lisp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_lisp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_lisp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_lisp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_lisp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_lisp _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_lisp _move_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_robot_genlisp)
add_dependencies(move_robot_genlisp move_robot_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_robot_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_robot
)
_generate_msg_nodejs(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_robot
)
_generate_msg_nodejs(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_robot
)
_generate_msg_nodejs(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_robot
)
_generate_msg_nodejs(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_robot
)
_generate_msg_nodejs(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_robot
)
_generate_msg_nodejs(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_robot
)

### Generating Services

### Generating Module File
_generate_module_nodejs(move_robot
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_robot
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(move_robot_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(move_robot_generate_messages move_robot_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_nodejs _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_nodejs _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_nodejs _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_nodejs _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_nodejs _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_nodejs _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_nodejs _move_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_robot_gennodejs)
add_dependencies(move_robot_gennodejs move_robot_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_robot_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot
)
_generate_msg_py(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot
)
_generate_msg_py(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot
)
_generate_msg_py(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot
)
_generate_msg_py(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot
)
_generate_msg_py(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot
)
_generate_msg_py(move_robot
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg"
  "${MSG_I_FLAGS}"
  "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Pose.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Twist.msg;/opt/ros/kinetic/share/std_msgs/cmake/../msg/Header.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Quaternion.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Vector3.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/Point.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/TwistWithCovariance.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg;/opt/ros/kinetic/share/geometry_msgs/cmake/../msg/PoseWithCovariance.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalID.msg;/opt/ros/kinetic/share/nav_msgs/cmake/../msg/Odometry.msg;/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg;/opt/ros/kinetic/share/actionlib_msgs/cmake/../msg/GoalStatus.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot
)

### Generating Services

### Generating Module File
_generate_module_py(move_robot
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(move_robot_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(move_robot_generate_messages move_robot_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionFeedback.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_py _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveResult.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_py _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveFeedback.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_py _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionGoal.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_py _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveActionResult.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_py _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveGoal.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_py _move_robot_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/serena/catkin_ws/devel/share/move_robot/msg/moveAction.msg" NAME_WE)
add_dependencies(move_robot_generate_messages_py _move_robot_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(move_robot_genpy)
add_dependencies(move_robot_genpy move_robot_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS move_robot_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/move_robot
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_cpp)
  add_dependencies(move_robot_generate_messages_cpp actionlib_msgs_generate_messages_cpp)
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(move_robot_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET nav_msgs_generate_messages_cpp)
  add_dependencies(move_robot_generate_messages_cpp nav_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/move_robot
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_eus)
  add_dependencies(move_robot_generate_messages_eus actionlib_msgs_generate_messages_eus)
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(move_robot_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET nav_msgs_generate_messages_eus)
  add_dependencies(move_robot_generate_messages_eus nav_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/move_robot
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_lisp)
  add_dependencies(move_robot_generate_messages_lisp actionlib_msgs_generate_messages_lisp)
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(move_robot_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET nav_msgs_generate_messages_lisp)
  add_dependencies(move_robot_generate_messages_lisp nav_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_robot)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/move_robot
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_nodejs)
  add_dependencies(move_robot_generate_messages_nodejs actionlib_msgs_generate_messages_nodejs)
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(move_robot_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET nav_msgs_generate_messages_nodejs)
  add_dependencies(move_robot_generate_messages_nodejs nav_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot)
  install(CODE "execute_process(COMMAND \"/usr/bin/python\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/move_robot
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET actionlib_msgs_generate_messages_py)
  add_dependencies(move_robot_generate_messages_py actionlib_msgs_generate_messages_py)
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(move_robot_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET nav_msgs_generate_messages_py)
  add_dependencies(move_robot_generate_messages_py nav_msgs_generate_messages_py)
endif()
