; Auto-generated. Do not edit!


(cl:in-package vino_pipeline_srv_msgs-msg)


;//! \htmlinclude Pipelines.msg.html

(cl:defclass <Pipelines> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (connections
    :reader connections
    :initarg :connections
    :type (cl:vector vino_pipeline_srv_msgs-msg:Pipeline)
   :initform (cl:make-array 0 :element-type 'vino_pipeline_srv_msgs-msg:Pipeline :initial-element (cl:make-instance 'vino_pipeline_srv_msgs-msg:Pipeline)))
   (running_status
    :reader running_status
    :initarg :running_status
    :type cl:string
    :initform ""))
)

(cl:defclass Pipelines (<Pipelines>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pipelines>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pipelines)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_pipeline_srv_msgs-msg:<Pipelines> is deprecated: use vino_pipeline_srv_msgs-msg:Pipelines instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <Pipelines>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_pipeline_srv_msgs-msg:header-val is deprecated.  Use vino_pipeline_srv_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <Pipelines>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_pipeline_srv_msgs-msg:name-val is deprecated.  Use vino_pipeline_srv_msgs-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'connections-val :lambda-list '(m))
(cl:defmethod connections-val ((m <Pipelines>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_pipeline_srv_msgs-msg:connections-val is deprecated.  Use vino_pipeline_srv_msgs-msg:connections instead.")
  (connections m))

(cl:ensure-generic-function 'running_status-val :lambda-list '(m))
(cl:defmethod running_status-val ((m <Pipelines>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_pipeline_srv_msgs-msg:running_status-val is deprecated.  Use vino_pipeline_srv_msgs-msg:running_status instead.")
  (running_status m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pipelines>) ostream)
  "Serializes a message object of type '<Pipelines>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'connections))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'connections))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'running_status))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'running_status))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pipelines>) istream)
  "Deserializes a message object of type '<Pipelines>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'connections) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'connections)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vino_pipeline_srv_msgs-msg:Pipeline))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'running_status) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'running_status) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pipelines>)))
  "Returns string type for a message object of type '<Pipelines>"
  "vino_pipeline_srv_msgs/Pipelines")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pipelines)))
  "Returns string type for a message object of type 'Pipelines"
  "vino_pipeline_srv_msgs/Pipelines")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pipelines>)))
  "Returns md5sum for a message object of type '<Pipelines>"
  "a4c160876f63dd62c02cb0f61f036ec3")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pipelines)))
  "Returns md5sum for a message object of type 'Pipelines"
  "a4c160876f63dd62c02cb0f61f036ec3")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pipelines>)))
  "Returns full string definition for message of type '<Pipelines>"
  (cl:format cl:nil "# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%std_msgs/Header header             # Header~%string name                        # Name of pipeline~%Pipeline[] connections             # connection map of a pipeline~%string running_status              # Pipeline running state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_pipeline_srv_msgs/Pipeline~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%string input                        # From~%string output                       # To~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pipelines)))
  "Returns full string definition for message of type 'Pipelines"
  (cl:format cl:nil "# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%std_msgs/Header header             # Header~%string name                        # Name of pipeline~%Pipeline[] connections             # connection map of a pipeline~%string running_status              # Pipeline running state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_pipeline_srv_msgs/Pipeline~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%string input                        # From~%string output                       # To~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pipelines>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'connections) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:length (cl:slot-value msg 'running_status))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pipelines>))
  "Converts a ROS message object to a list"
  (cl:list 'Pipelines
    (cl:cons ':header (header msg))
    (cl:cons ':name (name msg))
    (cl:cons ':connections (connections msg))
    (cl:cons ':running_status (running_status msg))
))
