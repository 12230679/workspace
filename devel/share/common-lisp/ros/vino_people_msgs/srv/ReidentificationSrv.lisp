; Auto-generated. Do not edit!


(cl:in-package vino_people_msgs-srv)


;//! \htmlinclude ReidentificationSrv-request.msg.html

(cl:defclass <ReidentificationSrv-request> (roslisp-msg-protocol:ros-message)
  ((image_path
    :reader image_path
    :initarg :image_path
    :type cl:string
    :initform ""))
)

(cl:defclass ReidentificationSrv-request (<ReidentificationSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReidentificationSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReidentificationSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-srv:<ReidentificationSrv-request> is deprecated: use vino_people_msgs-srv:ReidentificationSrv-request instead.")))

(cl:ensure-generic-function 'image_path-val :lambda-list '(m))
(cl:defmethod image_path-val ((m <ReidentificationSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-srv:image_path-val is deprecated.  Use vino_people_msgs-srv:image_path instead.")
  (image_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReidentificationSrv-request>) ostream)
  "Serializes a message object of type '<ReidentificationSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReidentificationSrv-request>) istream)
  "Deserializes a message object of type '<ReidentificationSrv-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReidentificationSrv-request>)))
  "Returns string type for a service object of type '<ReidentificationSrv-request>"
  "vino_people_msgs/ReidentificationSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReidentificationSrv-request)))
  "Returns string type for a service object of type 'ReidentificationSrv-request"
  "vino_people_msgs/ReidentificationSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReidentificationSrv-request>)))
  "Returns md5sum for a message object of type '<ReidentificationSrv-request>"
  "c4b89cb3f0835a54ae60f03c4fb36dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReidentificationSrv-request)))
  "Returns md5sum for a message object of type 'ReidentificationSrv-request"
  "c4b89cb3f0835a54ae60f03c4fb36dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReidentificationSrv-request>)))
  "Returns full string definition for message of type '<ReidentificationSrv-request>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string image_path       # input: an image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReidentificationSrv-request)))
  "Returns full string definition for message of type 'ReidentificationSrv-request"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string image_path       # input: an image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReidentificationSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReidentificationSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ReidentificationSrv-request
    (cl:cons ':image_path (image_path msg))
))
;//! \htmlinclude ReidentificationSrv-response.msg.html

(cl:defclass <ReidentificationSrv-response> (roslisp-msg-protocol:ros-message)
  ((reidentification
    :reader reidentification
    :initarg :reidentification
    :type vino_people_msgs-msg:ReidentificationStamped
    :initform (cl:make-instance 'vino_people_msgs-msg:ReidentificationStamped)))
)

(cl:defclass ReidentificationSrv-response (<ReidentificationSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReidentificationSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReidentificationSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-srv:<ReidentificationSrv-response> is deprecated: use vino_people_msgs-srv:ReidentificationSrv-response instead.")))

(cl:ensure-generic-function 'reidentification-val :lambda-list '(m))
(cl:defmethod reidentification-val ((m <ReidentificationSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-srv:reidentification-val is deprecated.  Use vino_people_msgs-srv:reidentification instead.")
  (reidentification m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReidentificationSrv-response>) ostream)
  "Serializes a message object of type '<ReidentificationSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'reidentification) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReidentificationSrv-response>) istream)
  "Deserializes a message object of type '<ReidentificationSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'reidentification) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReidentificationSrv-response>)))
  "Returns string type for a service object of type '<ReidentificationSrv-response>"
  "vino_people_msgs/ReidentificationSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReidentificationSrv-response)))
  "Returns string type for a service object of type 'ReidentificationSrv-response"
  "vino_people_msgs/ReidentificationSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReidentificationSrv-response>)))
  "Returns md5sum for a message object of type '<ReidentificationSrv-response>"
  "c4b89cb3f0835a54ae60f03c4fb36dc7")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReidentificationSrv-response)))
  "Returns md5sum for a message object of type 'ReidentificationSrv-response"
  "c4b89cb3f0835a54ae60f03c4fb36dc7")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReidentificationSrv-response>)))
  "Returns full string definition for message of type '<ReidentificationSrv-response>"
  (cl:format cl:nil "ReidentificationStamped reidentification  # ObjectInBox array~%~%~%================================================================================~%MSG: vino_people_msgs/ReidentificationStamped~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent reidentified persons and its IDs~%std_msgs/Header header        			# timestamp in header is the time the sensor captured the raw data~%Reidentification[] reidentified_vector  # ObjectInBox array~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/Reidentification~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent a reidentified person and its ID~%string identity  					# person ID~%sensor_msgs/RegionOfInterest roi    # region of interest~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReidentificationSrv-response)))
  "Returns full string definition for message of type 'ReidentificationSrv-response"
  (cl:format cl:nil "ReidentificationStamped reidentification  # ObjectInBox array~%~%~%================================================================================~%MSG: vino_people_msgs/ReidentificationStamped~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent reidentified persons and its IDs~%std_msgs/Header header        			# timestamp in header is the time the sensor captured the raw data~%Reidentification[] reidentified_vector  # ObjectInBox array~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/Reidentification~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent a reidentified person and its ID~%string identity  					# person ID~%sensor_msgs/RegionOfInterest roi    # region of interest~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReidentificationSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'reidentification))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReidentificationSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ReidentificationSrv-response
    (cl:cons ':reidentification (reidentification msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ReidentificationSrv)))
  'ReidentificationSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ReidentificationSrv)))
  'ReidentificationSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReidentificationSrv)))
  "Returns string type for a service object of type '<ReidentificationSrv>"
  "vino_people_msgs/ReidentificationSrv")