# Install script for directory: /home/serena/catkin_ws/src/srrg_core_ros

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
    set(CMAKE_INSTALL_CONFIG_NAME "Release")
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
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/srrg_core_ros/msg" TYPE FILE FILES
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/BaseCameraInfoMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/BinaryNodeRelationMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/CloudMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/ImageMapNodeMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/LocalMapMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapNodeUpdateMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/MapUpdateMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiCameraInfoMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/MultiImageMapNodeMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/PinholeCameraInfoMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/RichPointMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthCameraInfo.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/SphericalDepthImage.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/StampedCloudMsg.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/Ticks.msg"
    "/home/serena/catkin_ws/src/srrg_core_ros/msg/TrajectoryNodeMsg.msg"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/srrg_core_ros/srv" TYPE FILE FILES
    "/home/serena/catkin_ws/src/srrg_core_ros/srv/IdsSrv.srv"
    "/home/serena/catkin_ws/src/srrg_core_ros/srv/LocalMapByIdSrv.srv"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/srrg_core_ros/cmake" TYPE FILE FILES "/home/serena/catkin_ws/build/srrg_core_ros/catkin_generated/installspace/srrg_core_ros-msg-paths.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/serena/catkin_ws/devel/include/srrg_core_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/serena/catkin_ws/devel/share/roseus/ros/srrg_core_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/serena/catkin_ws/devel/share/common-lisp/ros/srrg_core_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/serena/catkin_ws/devel/share/gennodejs/ros/srrg_core_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  execute_process(COMMAND "/usr/bin/python" -m compileall "/home/serena/catkin_ws/devel/lib/python2.7/dist-packages/srrg_core_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python2.7/dist-packages" TYPE DIRECTORY FILES "/home/serena/catkin_ws/devel/lib/python2.7/dist-packages/srrg_core_ros")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/serena/catkin_ws/build/srrg_core_ros/catkin_generated/installspace/srrg_core_ros.pc")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/srrg_core_ros/cmake" TYPE FILE FILES "/home/serena/catkin_ws/build/srrg_core_ros/catkin_generated/installspace/srrg_core_ros-msg-extras.cmake")
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/srrg_core_ros/cmake" TYPE FILE FILES
    "/home/serena/catkin_ws/build/srrg_core_ros/catkin_generated/installspace/srrg_core_rosConfig.cmake"
    "/home/serena/catkin_ws/build/srrg_core_ros/catkin_generated/installspace/srrg_core_rosConfig-version.cmake"
    )
endif()

if(NOT CMAKE_INSTALL_COMPONENT OR "${CMAKE_INSTALL_COMPONENT}" STREQUAL "Unspecified")
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/srrg_core_ros" TYPE FILE FILES "/home/serena/catkin_ws/src/srrg_core_ros/package.xml")
endif()

if(NOT CMAKE_INSTALL_LOCAL_ONLY)
  # Include the install script for each subdirectory.
  include("/home/serena/catkin_ws/build/srrg_core_ros/src/cmake_install.cmake")

endif()

