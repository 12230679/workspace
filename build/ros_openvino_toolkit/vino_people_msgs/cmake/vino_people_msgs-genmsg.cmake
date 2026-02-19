# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vino_people_msgs: 19 messages, 6 services")

set(MSG_I_FLAGS "-Ivino_people_msgs:/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iobject_msgs:/home/hyobeen/catkin_ws/src/object_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vino_people_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg" "std_msgs/Header:sensor_msgs/RegionOfInterest:vino_people_msgs/AgeGender"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg" "std_msgs/Header:sensor_msgs/RegionOfInterest:vino_people_msgs/Emotion"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg" "vino_people_msgs/HeadPose:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg" "vino_people_msgs/HeadPose:vino_people_msgs/Emotion:vino_people_msgs/AgeGender:object_msgs/ObjectInBox:object_msgs/Object:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg" "std_msgs/Header:vino_people_msgs/ObjectInMask:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg" "std_msgs/Header:sensor_msgs/RegionOfInterest:vino_people_msgs/Reidentification"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg" "std_msgs/Header:vino_people_msgs/PersonAttribute:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg" "vino_people_msgs/LicensePlate:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg" "sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg" "vino_people_msgs/VehicleAttribs:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg" "geometry_msgs/Point:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg" "vino_people_msgs/Landmark:geometry_msgs/Point:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv" "std_msgs/Header:sensor_msgs/RegionOfInterest:vino_people_msgs/AgeGender:vino_people_msgs/AgeGenderStamped"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv" "std_msgs/Header:sensor_msgs/RegionOfInterest:vino_people_msgs/Emotion:vino_people_msgs/EmotionsStamped"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv" "vino_people_msgs/HeadPose:vino_people_msgs/HeadPoseStamped:sensor_msgs/RegionOfInterest:std_msgs/Header"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv" "vino_people_msgs/HeadPose:vino_people_msgs/PersonsStamped:vino_people_msgs/Emotion:vino_people_msgs/AgeGender:object_msgs/ObjectInBox:object_msgs/Object:std_msgs/Header:sensor_msgs/RegionOfInterest"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv" "vino_people_msgs/ReidentificationStamped:std_msgs/Header:sensor_msgs/RegionOfInterest:vino_people_msgs/Reidentification"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv" NAME_WE)
add_custom_target(_vino_people_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_people_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv" "sensor_msgs/RegionOfInterest:std_msgs/Header:vino_people_msgs/ObjectInMask:vino_people_msgs/ObjectsInMasks"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/ObjectInBox.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/Object.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)

### Generating Services
_generate_srv_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/ObjectInBox.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/Object.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_cpp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
)

### Generating Module File
_generate_module_cpp(vino_people_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vino_people_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vino_people_msgs_generate_messages vino_people_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_cpp _vino_people_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vino_people_msgs_gencpp)
add_dependencies(vino_people_msgs_gencpp vino_people_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vino_people_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/ObjectInBox.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/Object.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)

### Generating Services
_generate_srv_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/ObjectInBox.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/Object.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_eus(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
)

### Generating Module File
_generate_module_eus(vino_people_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vino_people_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vino_people_msgs_generate_messages vino_people_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_eus _vino_people_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vino_people_msgs_geneus)
add_dependencies(vino_people_msgs_geneus vino_people_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vino_people_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/ObjectInBox.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/Object.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)

### Generating Services
_generate_srv_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/ObjectInBox.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/Object.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_lisp(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
)

### Generating Module File
_generate_module_lisp(vino_people_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vino_people_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vino_people_msgs_generate_messages vino_people_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_lisp _vino_people_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vino_people_msgs_genlisp)
add_dependencies(vino_people_msgs_genlisp vino_people_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vino_people_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/ObjectInBox.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/Object.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)

### Generating Services
_generate_srv_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/ObjectInBox.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/Object.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_nodejs(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
)

### Generating Module File
_generate_module_nodejs(vino_people_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vino_people_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vino_people_msgs_generate_messages vino_people_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_nodejs _vino_people_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vino_people_msgs_gennodejs)
add_dependencies(vino_people_msgs_gennodejs vino_people_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vino_people_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/ObjectInBox.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/Object.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_msg_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg;/opt/ros/noetic/share/geometry_msgs/cmake/../msg/Point.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)

### Generating Services
_generate_srv_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/ObjectInBox.msg;/home/hyobeen/catkin_ws/src/object_msgs/msg/Object.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)
_generate_srv_py(vino_people_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/sensor_msgs/cmake/../msg/RegionOfInterest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
)

### Generating Module File
_generate_module_py(vino_people_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vino_people_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vino_people_msgs_generate_messages vino_people_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGender.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/AgeGenderStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Emotion.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/EmotionsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPose.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/HeadPoseStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectInMask.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ObjectsInMasks.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Reidentification.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/ReidentificationStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttribute.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/PersonAttributeStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlate.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LicensePlateStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribs.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/VehicleAttribsStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/Landmark.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/msg/LandmarkStamped.msg" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/AgeGenderSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/EmotionSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/HeadPoseSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/PeopleSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ReidentificationSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_people_msgs/srv/ObjectsInMasksSrv.srv" NAME_WE)
add_dependencies(vino_people_msgs_generate_messages_py _vino_people_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vino_people_msgs_genpy)
add_dependencies(vino_people_msgs_genpy vino_people_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vino_people_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_people_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vino_people_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(vino_people_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(vino_people_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET object_msgs_generate_messages_cpp)
  add_dependencies(vino_people_msgs_generate_messages_cpp object_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_people_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vino_people_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(vino_people_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(vino_people_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET object_msgs_generate_messages_eus)
  add_dependencies(vino_people_msgs_generate_messages_eus object_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_people_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vino_people_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(vino_people_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(vino_people_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET object_msgs_generate_messages_lisp)
  add_dependencies(vino_people_msgs_generate_messages_lisp object_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_people_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vino_people_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(vino_people_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(vino_people_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET object_msgs_generate_messages_nodejs)
  add_dependencies(vino_people_msgs_generate_messages_nodejs object_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_people_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vino_people_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(vino_people_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(vino_people_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET object_msgs_generate_messages_py)
  add_dependencies(vino_people_msgs_generate_messages_py object_msgs_generate_messages_py)
endif()
