# Install script for directory: /home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs

# Set the install prefix
if(NOT DEFINED CMAKE_INSTALL_PREFIX)
  set(CMAKE_INSTALL_PREFIX "/home/hyobeen/catkin_ws/install")
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

# Is this installation the result of a crosscompile?
if(NOT DEFINED CMAKE_CROSSCOMPILING)
  set(CMAKE_CROSSCOMPILING "FALSE")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_people_msgs/msg" TYPE FILE FILES
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_people_msgs/srv" TYPE FILE FILES
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv"
    "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_people_msgs/cmake" TYPE FILE FILES "/home/hyobeen/catkin_ws/build/ros_openvino_toolkit/vino_people_msgs/catkin_generated/installspace/vino_people_msgs-msg-paths.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/include" TYPE DIRECTORY FILES "/home/hyobeen/catkin_ws/devel/include/vino_people_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/roseus/ros" TYPE DIRECTORY FILES "/home/hyobeen/catkin_ws/devel/share/roseus/ros/vino_people_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/common-lisp/ros" TYPE DIRECTORY FILES "/home/hyobeen/catkin_ws/devel/share/common-lisp/ros/vino_people_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/gennodejs/ros" TYPE DIRECTORY FILES "/home/hyobeen/catkin_ws/devel/share/gennodejs/ros/vino_people_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  execute_process(COMMAND "/usr/bin/python3" -m compileall "/home/hyobeen/catkin_ws/devel/lib/python3/dist-packages/vino_people_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/python3/dist-packages" TYPE DIRECTORY FILES "/home/hyobeen/catkin_ws/devel/lib/python3/dist-packages/vino_people_msgs")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/lib/pkgconfig" TYPE FILE FILES "/home/hyobeen/catkin_ws/build/ros_openvino_toolkit/vino_people_msgs/catkin_generated/installspace/vino_people_msgs.pc")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_people_msgs/cmake" TYPE FILE FILES "/home/hyobeen/catkin_ws/build/ros_openvino_toolkit/vino_people_msgs/catkin_generated/installspace/vino_people_msgs-msg-extras.cmake")
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_people_msgs/cmake" TYPE FILE FILES
    "/home/hyobeen/catkin_ws/build/ros_openvino_toolkit/vino_people_msgs/catkin_generated/installspace/vino_people_msgsConfig.cmake"
    "/home/hyobeen/catkin_ws/build/ros_openvino_toolkit/vino_people_msgs/catkin_generated/installspace/vino_people_msgsConfig-version.cmake"
    )
endif()

if("x${CMAKE_INSTALL_COMPONENT}x" STREQUAL "xUnspecifiedx" OR NOT CMAKE_INSTALL_COMPONENT)
  file(INSTALL DESTINATION "${CMAKE_INSTALL_PREFIX}/share/vino_people_msgs" TYPE FILE FILES "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/package.xml")
endif()

