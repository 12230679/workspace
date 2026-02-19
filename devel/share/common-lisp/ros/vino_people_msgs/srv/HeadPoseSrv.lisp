; Auto-generated. Do not edit!


(cl:in-package vino_people_msgs-srv)


;//! \htmlinclude HeadPoseSrv-request.msg.html

(cl:defclass <HeadPoseSrv-request> (roslisp-msg-protocol:ros-message)
  ((image_path
    :reader image_path
    :initarg :image_path
    :type cl:string
    :initform ""))
)

(cl:defclass HeadPoseSrv-request (<HeadPoseSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadPoseSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadPoseSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-srv:<HeadPoseSrv-request> is deprecated: use vino_people_msgs-srv:HeadPoseSrv-request instead.")))

(cl:ensure-generic-function 'image_path-val :lambda-list '(m))
(cl:defmethod image_path-val ((m <HeadPoseSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-srv:image_path-val is deprecated.  Use vino_people_msgs-srv:image_path instead.")
  (image_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadPoseSrv-request>) ostream)
  "Serializes a message object of type '<HeadPoseSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadPoseSrv-request>) istream)
  "Deserializes a message object of type '<HeadPoseSrv-request>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'image_path) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'image_path) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadPoseSrv-request>)))
  "Returns string type for a service object of type '<HeadPoseSrv-request>"
  "vino_people_msgs/HeadPoseSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadPoseSrv-request)))
  "Returns string type for a service object of type 'HeadPoseSrv-request"
  "vino_people_msgs/HeadPoseSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadPoseSrv-request>)))
  "Returns md5sum for a message object of type '<HeadPoseSrv-request>"
  "00dace25632d42fd75322a75674e8d37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadPoseSrv-request)))
  "Returns md5sum for a message object of type 'HeadPoseSrv-request"
  "00dace25632d42fd75322a75674e8d37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadPoseSrv-request>)))
  "Returns full string definition for message of type '<HeadPoseSrv-request>"
  (cl:format cl:nil "## Copyright (c) 2018 Intel Corporation~%## Licensed under the Apache License, Version 2.0 (the \"License\");~%## you may not use this file except in compliance with the License.~%## You may obtain a copy of the License at~%##~%##      http://www.apache.org/licenses/LICENSE-2.0~%##~%## Unless required by applicable law or agreed to in writing, software~%## distributed under the License is distributed on an \"AS IS\" BASIS,~%## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%## See the License for the specific language governing permissions and~%## limitations under the License.~%~%string image_path         # input: an image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadPoseSrv-request)))
  "Returns full string definition for message of type 'HeadPoseSrv-request"
  (cl:format cl:nil "## Copyright (c) 2018 Intel Corporation~%## Licensed under the Apache License, Version 2.0 (the \"License\");~%## you may not use this file except in compliance with the License.~%## You may obtain a copy of the License at~%##~%##      http://www.apache.org/licenses/LICENSE-2.0~%##~%## Unless required by applicable law or agreed to in writing, software~%## distributed under the License is distributed on an \"AS IS\" BASIS,~%## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%## See the License for the specific language governing permissions and~%## limitations under the License.~%~%string image_path         # input: an image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadPoseSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadPoseSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadPoseSrv-request
    (cl:cons ':image_path (image_path msg))
))
;//! \htmlinclude HeadPoseSrv-response.msg.html

(cl:defclass <HeadPoseSrv-response> (roslisp-msg-protocol:ros-message)
  ((headpose
    :reader headpose
    :initarg :headpose
    :type vino_people_msgs-msg:HeadPoseStamped
    :initform (cl:make-instance 'vino_people_msgs-msg:HeadPoseStamped)))
)

(cl:defclass HeadPoseSrv-response (<HeadPoseSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HeadPoseSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HeadPoseSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-srv:<HeadPoseSrv-response> is deprecated: use vino_people_msgs-srv:HeadPoseSrv-response instead.")))

(cl:ensure-generic-function 'headpose-val :lambda-list '(m))
(cl:defmethod headpose-val ((m <HeadPoseSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-srv:headpose-val is deprecated.  Use vino_people_msgs-srv:headpose instead.")
  (headpose m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HeadPoseSrv-response>) ostream)
  "Serializes a message object of type '<HeadPoseSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'headpose) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HeadPoseSrv-response>) istream)
  "Deserializes a message object of type '<HeadPoseSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'headpose) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HeadPoseSrv-response>)))
  "Returns string type for a service object of type '<HeadPoseSrv-response>"
  "vino_people_msgs/HeadPoseSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadPoseSrv-response)))
  "Returns string type for a service object of type 'HeadPoseSrv-response"
  "vino_people_msgs/HeadPoseSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HeadPoseSrv-response>)))
  "Returns md5sum for a message object of type '<HeadPoseSrv-response>"
  "00dace25632d42fd75322a75674e8d37")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HeadPoseSrv-response)))
  "Returns md5sum for a message object of type 'HeadPoseSrv-response"
  "00dace25632d42fd75322a75674e8d37")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HeadPoseSrv-response>)))
  "Returns full string definition for message of type '<HeadPoseSrv-response>"
  (cl:format cl:nil "HeadPoseStamped headpose  # output: headpose result~%~%~%================================================================================~%MSG: vino_people_msgs/HeadPoseStamped~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%std_msgs/Header header~%vino_people_msgs/HeadPose[] headposes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/HeadPose~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%float32 yaw							# yaw~%float32 pitch						# pitch~%float32 roll						# roll~%sensor_msgs/RegionOfInterest roi 	# region of interest for a person's face~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HeadPoseSrv-response)))
  "Returns full string definition for message of type 'HeadPoseSrv-response"
  (cl:format cl:nil "HeadPoseStamped headpose  # output: headpose result~%~%~%================================================================================~%MSG: vino_people_msgs/HeadPoseStamped~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%std_msgs/Header header~%vino_people_msgs/HeadPose[] headposes~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/HeadPose~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%float32 yaw							# yaw~%float32 pitch						# pitch~%float32 roll						# roll~%sensor_msgs/RegionOfInterest roi 	# region of interest for a person's face~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HeadPoseSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'headpose))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HeadPoseSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'HeadPoseSrv-response
    (cl:cons ':headpose (headpose msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'HeadPoseSrv)))
  'HeadPoseSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'HeadPoseSrv)))
  'HeadPoseSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HeadPoseSrv)))
  "Returns string type for a service object of type '<HeadPoseSrv>"
  "vino_people_msgs/HeadPoseSrv")