; Auto-generated. Do not edit!


(cl:in-package vino_pipeline_srv_msgs-srv)


;//! \htmlinclude PipelineSrv-request.msg.html

(cl:defclass <PipelineSrv-request> (roslisp-msg-protocol:ros-message)
  ((pipeline_request
    :reader pipeline_request
    :initarg :pipeline_request
    :type vino_pipeline_srv_msgs-msg:PipelineRequest
    :initform (cl:make-instance 'vino_pipeline_srv_msgs-msg:PipelineRequest)))
)

(cl:defclass PipelineSrv-request (<PipelineSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PipelineSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PipelineSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_pipeline_srv_msgs-srv:<PipelineSrv-request> is deprecated: use vino_pipeline_srv_msgs-srv:PipelineSrv-request instead.")))

(cl:ensure-generic-function 'pipeline_request-val :lambda-list '(m))
(cl:defmethod pipeline_request-val ((m <PipelineSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_pipeline_srv_msgs-srv:pipeline_request-val is deprecated.  Use vino_pipeline_srv_msgs-srv:pipeline_request instead.")
  (pipeline_request m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PipelineSrv-request>) ostream)
  "Serializes a message object of type '<PipelineSrv-request>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'pipeline_request) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PipelineSrv-request>) istream)
  "Deserializes a message object of type '<PipelineSrv-request>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'pipeline_request) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PipelineSrv-request>)))
  "Returns string type for a service object of type '<PipelineSrv-request>"
  "vino_pipeline_srv_msgs/PipelineSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PipelineSrv-request)))
  "Returns string type for a service object of type 'PipelineSrv-request"
  "vino_pipeline_srv_msgs/PipelineSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PipelineSrv-request>)))
  "Returns md5sum for a message object of type '<PipelineSrv-request>"
  "cf091771f8906824a3cec7a8b00e6751")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PipelineSrv-request)))
  "Returns md5sum for a message object of type 'PipelineSrv-request"
  "cf091771f8906824a3cec7a8b00e6751")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PipelineSrv-request>)))
  "Returns full string definition for message of type '<PipelineSrv-request>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%PipelineRequest pipeline_request          # request content of pipeline service~%~%================================================================================~%MSG: vino_pipeline_srv_msgs/PipelineRequest~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%std_msgs/Header header               # Header~%string cmd                           # Name of a request action~%string value                         # value of an action~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PipelineSrv-request)))
  "Returns full string definition for message of type 'PipelineSrv-request"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%PipelineRequest pipeline_request          # request content of pipeline service~%~%================================================================================~%MSG: vino_pipeline_srv_msgs/PipelineRequest~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%std_msgs/Header header               # Header~%string cmd                           # Name of a request action~%string value                         # value of an action~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PipelineSrv-request>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'pipeline_request))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PipelineSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'PipelineSrv-request
    (cl:cons ':pipeline_request (pipeline_request msg))
))
;//! \htmlinclude PipelineSrv-response.msg.html

(cl:defclass <PipelineSrv-response> (roslisp-msg-protocol:ros-message)
  ((pipelines
    :reader pipelines
    :initarg :pipelines
    :type (cl:vector vino_pipeline_srv_msgs-msg:Pipelines)
   :initform (cl:make-array 0 :element-type 'vino_pipeline_srv_msgs-msg:Pipelines :initial-element (cl:make-instance 'vino_pipeline_srv_msgs-msg:Pipelines))))
)

(cl:defclass PipelineSrv-response (<PipelineSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <PipelineSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'PipelineSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_pipeline_srv_msgs-srv:<PipelineSrv-response> is deprecated: use vino_pipeline_srv_msgs-srv:PipelineSrv-response instead.")))

(cl:ensure-generic-function 'pipelines-val :lambda-list '(m))
(cl:defmethod pipelines-val ((m <PipelineSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_pipeline_srv_msgs-srv:pipelines-val is deprecated.  Use vino_pipeline_srv_msgs-srv:pipelines instead.")
  (pipelines m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <PipelineSrv-response>) ostream)
  "Serializes a message object of type '<PipelineSrv-response>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'pipelines))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'pipelines))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <PipelineSrv-response>) istream)
  "Deserializes a message object of type '<PipelineSrv-response>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'pipelines) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'pipelines)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vino_pipeline_srv_msgs-msg:Pipelines))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<PipelineSrv-response>)))
  "Returns string type for a service object of type '<PipelineSrv-response>"
  "vino_pipeline_srv_msgs/PipelineSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PipelineSrv-response)))
  "Returns string type for a service object of type 'PipelineSrv-response"
  "vino_pipeline_srv_msgs/PipelineSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<PipelineSrv-response>)))
  "Returns md5sum for a message object of type '<PipelineSrv-response>"
  "cf091771f8906824a3cec7a8b00e6751")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'PipelineSrv-response)))
  "Returns md5sum for a message object of type 'PipelineSrv-response"
  "cf091771f8906824a3cec7a8b00e6751")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<PipelineSrv-response>)))
  "Returns full string definition for message of type '<PipelineSrv-response>"
  (cl:format cl:nil "Pipelines[] pipelines    # return all pipeline status~%~%~%================================================================================~%MSG: vino_pipeline_srv_msgs/Pipelines~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%std_msgs/Header header             # Header~%string name                        # Name of pipeline~%Pipeline[] connections             # connection map of a pipeline~%string running_status              # Pipeline running state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_pipeline_srv_msgs/Pipeline~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%string input                        # From~%string output                       # To~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'PipelineSrv-response)))
  "Returns full string definition for message of type 'PipelineSrv-response"
  (cl:format cl:nil "Pipelines[] pipelines    # return all pipeline status~%~%~%================================================================================~%MSG: vino_pipeline_srv_msgs/Pipelines~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%std_msgs/Header header             # Header~%string name                        # Name of pipeline~%Pipeline[] connections             # connection map of a pipeline~%string running_status              # Pipeline running state~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_pipeline_srv_msgs/Pipeline~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%string input                        # From~%string output                       # To~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <PipelineSrv-response>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'pipelines) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <PipelineSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'PipelineSrv-response
    (cl:cons ':pipelines (pipelines msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'PipelineSrv)))
  'PipelineSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'PipelineSrv)))
  'PipelineSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'PipelineSrv)))
  "Returns string type for a service object of type '<PipelineSrv>"
  "vino_pipeline_srv_msgs/PipelineSrv")