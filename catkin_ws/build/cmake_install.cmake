# Install script for directory: /home/serena/catkin_ws/src

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/serena/catkin_ws/install")
endif()
string(REGEX REPLACE "/$" "" CMAKE_INSTALL_PREFIX "${CMAKE_INSTALL_PREFIX}")

# Set the install configuration name.
if(NOT DEFINED CMAKE_INSTALL_CONFIG_NAME)
  if(BUILD_TYPE)
    string(REGEX REPLACE "^[^A-Za-z0-9_]+" ""
           CMAKE_INSTALL_CONFIG_NAME "${BUILD_TYPE}")
  else()
    set(CMAKE_INSTALL_CONFIG_NAME "")
  endif()
  message(STATUS "Install configuration: \"${CMAKE_INSTALL_CONFIG_NAME}\"")
endif()

# Set the component getting installed.
if(NOT CMAKE_INSTALL_COMPONENT)
  if(COMPONENT)
    message(STATUS "Install component: \"${COMPONENT}\"")
    set(CMAKE_INSTALL_COMPONENT "${COMPONENT}")
  else()
    set(CMAKE_INSTALL_COMPONENT)
  endif()
endif()

# Install shared libraries without execute permission?
if(NOT DEFINED CMAKE_INSTALL_SO_NO_EXE)
  set(CMAKE_INSTALL_SO_NO_EXE "1")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
        file(MAKE_DIRECTORY "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}")
      endif()
      if (NOT EXISTS "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin")
        file(WRITE "$ENV{DESTDIR}${CMAKE_INSTALL_PREFIX}/.catkin" "")
      endif()
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/serena/catkin_ws/install/_setup_util.py")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/serena/catkin_ws/install" TYPE PROGRAM FILES "/home/serena/catkin_ws/build/catkin_generated/installspace/_setup_util.py")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/serena/catkin_ws/install/env.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/serena/catkin_ws/install" TYPE PROGRAM FILES "/home/serena/catkin_ws/build/catkin_generated/installspace/env.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/serena/catkin_ws/install/setup.bash")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/serena/catkin_ws/install" TYPE FILE FILES "/home/serena/catkin_ws/build/catkin_generated/installspace/setup.bash")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/serena/catkin_ws/install/setup.sh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/serena/catkin_ws/install" TYPE FILE FILES "/home/serena/catkin_ws/build/catkin_generated/installspace/setup.sh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/serena/catkin_ws/install/setup.zsh")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/serena/catkin_ws/install" TYPE FILE FILES "/home/serena/catkin_ws/build/catkin_generated/installspace/setup.zsh")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  list(APPEND CMAKE_ABSOLUTE_DESTINATION_FILES
   "/home/serena/catkin_ws/install/.rosinstall")
  if(CMAKE_WARN_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(WARNING "ABSOLUTE path INSTALL DESTINATION : ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
  if(CMAKE_ERROR_ON_ABSOLUTE_INSTALL_DESTINATION)
    message(FATAL_ERROR "ABSOLUTE path INSTALL DESTINATION forbidden (by caller): ${CMAKE_ABSOLUTE_DESTINATION_FILES}")
  endif()
file(INSTALL DESTINATION "/home/serena/catkin_ws/install" TYPE FILE FILES "/home/serena/catkin_ws/build/catkin_generated/installspace/.rosinstall")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/serena/catkin_ws/build/gtest/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/navigation/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation_tutorials/navigation_stage/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation_tutorials/navigation_tutorials/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation_tutorials/roomba_stage/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/srrg_cmake_modules/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/srrg_boss/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/srrg_core/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/srrg_orazio_core/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/beginner_tutorials/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/kinect/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/laser/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation_tutorials/laser_scan_publisher_tutorial/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation_tutorials/point_cloud_publisher_tutorial/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/kinect_visualizer/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/openni_launch/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_bluebattery/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_capybara/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_hokuyo/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_joystick_teleop/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_kinect/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_msgs/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/arduino_robot/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_temphum/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_visensor/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_xsens/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_xtion/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/depthimage_to_laserscan/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/move_robot/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/simple_navigation_goals/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/fake_localization/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/find_object_2d/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/learning_tf/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/map_server/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/amcl/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation_tutorials/odometry_publisher_tutorial/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/robot_pose_ekf/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation_tutorials/robot_setup_tf_tutorial/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/srrg_core_ros/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/srrg_orazio_ros/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_kobuki/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_state_publisher/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/thin_drivers/thin_calibrator/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/usb_cam/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/find_iphone/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/voxel_grid/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/costmap_2d/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/nav_core/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/base_local_planner/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/carrot_planner/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/clear_costmap_recovery/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/dwa_local_planner/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/move_slow_and_clear/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/navfn/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/global_planner/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/rotate_recovery/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/navigation/move_base/cmake_install.cmake")
  include("/home/serena/catkin_ws/build/robottino_2dnav/cmake_install.cmake")

endif()

if(CMAKE_INSTALL_COMPONENT)
  set(CMAKE_INSTALL_MANIFEST "install_manifest_${CMAKE_INSTALL_COMPONENT}.txt")
else()
  set(CMAKE_INSTALL_MANIFEST "install_manifest.txt")
endif()

string(REPLACE ";" "\n" CMAKE_INSTALL_MANIFEST_CONTENT
       "${CMAKE_INSTALL_MANIFEST_FILES}")
file(WRITE "/home/serena/catkin_ws/build/${CMAKE_INSTALL_MANIFEST}"
     "${CMAKE_INSTALL_MANIFEST_CONTENT}")
