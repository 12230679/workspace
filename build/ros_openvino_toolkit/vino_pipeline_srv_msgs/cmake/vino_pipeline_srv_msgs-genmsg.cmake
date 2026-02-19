# generated from genmsg/cmake/pkg-genmsg.cmake.em

message(STATUS "vino_pipeline_srv_msgs: 3 messages, 1 services")

set(MSG_I_FLAGS "-Ivino_pipeline_srv_msgs:/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg;-Istd_msgs:/opt/ros/noetic/share/std_msgs/cmake/../msg;-Isensor_msgs:/opt/ros/noetic/share/sensor_msgs/cmake/../msg;-Igeometry_msgs:/opt/ros/noetic/share/geometry_msgs/cmake/../msg;-Iobject_msgs:/home/hyobeen/catkin_ws/src/object_msgs/msg")

# Find all generators
find_package(gencpp REQUIRED)
find_package(geneus REQUIRED)
find_package(genlisp REQUIRED)
find_package(gennodejs REQUIRED)
find_package(genpy REQUIRED)

add_custom_target(vino_pipeline_srv_msgs_generate_messages ALL)

# verify that message/service dependencies have not changed since configure



get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg" NAME_WE)
add_custom_target(_vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_pipeline_srv_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg" "std_msgs/Header"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg" NAME_WE)
add_custom_target(_vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_pipeline_srv_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg" ""
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg" NAME_WE)
add_custom_target(_vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_pipeline_srv_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg" "vino_pipeline_srv_msgs/Pipeline:std_msgs/Header"
)

get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv" NAME_WE)
add_custom_target(_vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename}
  COMMAND ${CATKIN_ENV} ${PYTHON_EXECUTABLE} ${GENMSG_CHECK_DEPS_SCRIPT} "vino_pipeline_srv_msgs" "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv" "vino_pipeline_srv_msgs/Pipeline:vino_pipeline_srv_msgs/PipelineRequest:std_msgs/Header:vino_pipeline_srv_msgs/Pipelines"
)

#
#  langs = gencpp;geneus;genlisp;gennodejs;genpy
#

### Section generating for lang: gencpp
### Generating Messages
_generate_msg_cpp(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_pipeline_srv_msgs
)
_generate_msg_cpp(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_pipeline_srv_msgs
)
_generate_msg_cpp(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_pipeline_srv_msgs
)

### Generating Services
_generate_srv_cpp(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_pipeline_srv_msgs
)

### Generating Module File
_generate_module_cpp(vino_pipeline_srv_msgs
  ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_pipeline_srv_msgs
  "${ALL_GEN_OUTPUT_FILES_cpp}"
)

add_custom_target(vino_pipeline_srv_msgs_generate_messages_cpp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_cpp}
)
add_dependencies(vino_pipeline_srv_msgs_generate_messages vino_pipeline_srv_msgs_generate_messages_cpp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_cpp _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_cpp _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_cpp _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_cpp _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vino_pipeline_srv_msgs_gencpp)
add_dependencies(vino_pipeline_srv_msgs_gencpp vino_pipeline_srv_msgs_generate_messages_cpp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vino_pipeline_srv_msgs_generate_messages_cpp)

### Section generating for lang: geneus
### Generating Messages
_generate_msg_eus(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_pipeline_srv_msgs
)
_generate_msg_eus(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_pipeline_srv_msgs
)
_generate_msg_eus(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_pipeline_srv_msgs
)

### Generating Services
_generate_srv_eus(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_pipeline_srv_msgs
)

### Generating Module File
_generate_module_eus(vino_pipeline_srv_msgs
  ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_pipeline_srv_msgs
  "${ALL_GEN_OUTPUT_FILES_eus}"
)

add_custom_target(vino_pipeline_srv_msgs_generate_messages_eus
  DEPENDS ${ALL_GEN_OUTPUT_FILES_eus}
)
add_dependencies(vino_pipeline_srv_msgs_generate_messages vino_pipeline_srv_msgs_generate_messages_eus)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_eus _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_eus _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_eus _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_eus _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vino_pipeline_srv_msgs_geneus)
add_dependencies(vino_pipeline_srv_msgs_geneus vino_pipeline_srv_msgs_generate_messages_eus)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vino_pipeline_srv_msgs_generate_messages_eus)

### Section generating for lang: genlisp
### Generating Messages
_generate_msg_lisp(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_pipeline_srv_msgs
)
_generate_msg_lisp(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_pipeline_srv_msgs
)
_generate_msg_lisp(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_pipeline_srv_msgs
)

### Generating Services
_generate_srv_lisp(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_pipeline_srv_msgs
)

### Generating Module File
_generate_module_lisp(vino_pipeline_srv_msgs
  ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_pipeline_srv_msgs
  "${ALL_GEN_OUTPUT_FILES_lisp}"
)

add_custom_target(vino_pipeline_srv_msgs_generate_messages_lisp
  DEPENDS ${ALL_GEN_OUTPUT_FILES_lisp}
)
add_dependencies(vino_pipeline_srv_msgs_generate_messages vino_pipeline_srv_msgs_generate_messages_lisp)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_lisp _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_lisp _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_lisp _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_lisp _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vino_pipeline_srv_msgs_genlisp)
add_dependencies(vino_pipeline_srv_msgs_genlisp vino_pipeline_srv_msgs_generate_messages_lisp)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vino_pipeline_srv_msgs_generate_messages_lisp)

### Section generating for lang: gennodejs
### Generating Messages
_generate_msg_nodejs(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_pipeline_srv_msgs
)
_generate_msg_nodejs(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_pipeline_srv_msgs
)
_generate_msg_nodejs(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_pipeline_srv_msgs
)

### Generating Services
_generate_srv_nodejs(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_pipeline_srv_msgs
)

### Generating Module File
_generate_module_nodejs(vino_pipeline_srv_msgs
  ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_pipeline_srv_msgs
  "${ALL_GEN_OUTPUT_FILES_nodejs}"
)

add_custom_target(vino_pipeline_srv_msgs_generate_messages_nodejs
  DEPENDS ${ALL_GEN_OUTPUT_FILES_nodejs}
)
add_dependencies(vino_pipeline_srv_msgs_generate_messages vino_pipeline_srv_msgs_generate_messages_nodejs)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_nodejs _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_nodejs _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_nodejs _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_nodejs _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vino_pipeline_srv_msgs_gennodejs)
add_dependencies(vino_pipeline_srv_msgs_gennodejs vino_pipeline_srv_msgs_generate_messages_nodejs)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vino_pipeline_srv_msgs_generate_messages_nodejs)

### Section generating for lang: genpy
### Generating Messages
_generate_msg_py(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg"
  "${MSG_I_FLAGS}"
  "/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_pipeline_srv_msgs
)
_generate_msg_py(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg"
  "${MSG_I_FLAGS}"
  ""
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_pipeline_srv_msgs
)
_generate_msg_py(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_pipeline_srv_msgs
)

### Generating Services
_generate_srv_py(vino_pipeline_srv_msgs
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv"
  "${MSG_I_FLAGS}"
  "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg;/opt/ros/noetic/share/std_msgs/cmake/../msg/Header.msg;/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg"
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_pipeline_srv_msgs
)

### Generating Module File
_generate_module_py(vino_pipeline_srv_msgs
  ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_pipeline_srv_msgs
  "${ALL_GEN_OUTPUT_FILES_py}"
)

add_custom_target(vino_pipeline_srv_msgs_generate_messages_py
  DEPENDS ${ALL_GEN_OUTPUT_FILES_py}
)
add_dependencies(vino_pipeline_srv_msgs_generate_messages vino_pipeline_srv_msgs_generate_messages_py)

# add dependencies to all check dependencies targets
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/PipelineRequest.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_py _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipeline.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_py _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/msg/Pipelines.msg" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_py _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})
get_filename_component(_filename "/home/hyobeen/catkin_ws/src/ros_openvino_toolkit/vino_pipeline_srv_msgs/srv/PipelineSrv.srv" NAME_WE)
add_dependencies(vino_pipeline_srv_msgs_generate_messages_py _vino_pipeline_srv_msgs_generate_messages_check_deps_${_filename})

# target for backward compatibility
add_custom_target(vino_pipeline_srv_msgs_genpy)
add_dependencies(vino_pipeline_srv_msgs_genpy vino_pipeline_srv_msgs_generate_messages_py)

# register target for catkin_package(EXPORTED_TARGETS)
list(APPEND ${PROJECT_NAME}_EXPORTED_TARGETS vino_pipeline_srv_msgs_generate_messages_py)



if(gencpp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_pipeline_srv_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gencpp_INSTALL_DIR}/vino_pipeline_srv_msgs
    DESTINATION ${gencpp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_cpp)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_cpp std_msgs_generate_messages_cpp)
endif()
if(TARGET sensor_msgs_generate_messages_cpp)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_cpp sensor_msgs_generate_messages_cpp)
endif()
if(TARGET geometry_msgs_generate_messages_cpp)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_cpp geometry_msgs_generate_messages_cpp)
endif()
if(TARGET object_msgs_generate_messages_cpp)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_cpp object_msgs_generate_messages_cpp)
endif()

if(geneus_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_pipeline_srv_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${geneus_INSTALL_DIR}/vino_pipeline_srv_msgs
    DESTINATION ${geneus_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_eus)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_eus std_msgs_generate_messages_eus)
endif()
if(TARGET sensor_msgs_generate_messages_eus)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_eus sensor_msgs_generate_messages_eus)
endif()
if(TARGET geometry_msgs_generate_messages_eus)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_eus geometry_msgs_generate_messages_eus)
endif()
if(TARGET object_msgs_generate_messages_eus)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_eus object_msgs_generate_messages_eus)
endif()

if(genlisp_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_pipeline_srv_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genlisp_INSTALL_DIR}/vino_pipeline_srv_msgs
    DESTINATION ${genlisp_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_lisp)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_lisp std_msgs_generate_messages_lisp)
endif()
if(TARGET sensor_msgs_generate_messages_lisp)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_lisp sensor_msgs_generate_messages_lisp)
endif()
if(TARGET geometry_msgs_generate_messages_lisp)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_lisp geometry_msgs_generate_messages_lisp)
endif()
if(TARGET object_msgs_generate_messages_lisp)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_lisp object_msgs_generate_messages_lisp)
endif()

if(gennodejs_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_pipeline_srv_msgs)
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${gennodejs_INSTALL_DIR}/vino_pipeline_srv_msgs
    DESTINATION ${gennodejs_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_nodejs)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_nodejs std_msgs_generate_messages_nodejs)
endif()
if(TARGET sensor_msgs_generate_messages_nodejs)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_nodejs sensor_msgs_generate_messages_nodejs)
endif()
if(TARGET geometry_msgs_generate_messages_nodejs)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_nodejs geometry_msgs_generate_messages_nodejs)
endif()
if(TARGET object_msgs_generate_messages_nodejs)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_nodejs object_msgs_generate_messages_nodejs)
endif()

if(genpy_INSTALL_DIR AND EXISTS ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_pipeline_srv_msgs)
  install(CODE "execute_process(COMMAND \"/usr/bin/python3\" -m compileall \"${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_pipeline_srv_msgs\")")
  # install generated code
  install(
    DIRECTORY ${CATKIN_DEVEL_PREFIX}/${genpy_INSTALL_DIR}/vino_pipeline_srv_msgs
    DESTINATION ${genpy_INSTALL_DIR}
  )
endif()
if(TARGET std_msgs_generate_messages_py)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_py std_msgs_generate_messages_py)
endif()
if(TARGET sensor_msgs_generate_messages_py)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_py sensor_msgs_generate_messages_py)
endif()
if(TARGET geometry_msgs_generate_messages_py)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_py geometry_msgs_generate_messages_py)
endif()
if(TARGET object_msgs_generate_messages_py)
  add_dependencies(vino_pipeline_srv_msgs_generate_messages_py object_msgs_generate_messages_py)
endif()
