; Auto-generated. Do not edit!


(cl:in-package vino_people_msgs-srv)


;//! \htmlinclude EmotionSrv-request.msg.html

(cl:defclass <EmotionSrv-request> (roslisp-msg-protocol:ros-message)
  ((image_path
    :reader image_path
    :initarg :image_path
    :type cl:string
    :initform ""))
)

(cl:defclass EmotionSrv-request (<EmotionSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmotionSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmotionSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-srv:<EmotionSrv-request> is deprecated: use vino_people_msgs-srv:EmotionSrv-request instead.")))

(cl:ensure-generic-function 'image_path-val :lambda-list '(m))
(cl:defmethod image_path-val ((m <EmotionSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-srv:image_path-val is deprecated.  Use vino_people_msgs-srv:image_path instead.")
  (image_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmotionSrv-request>) ostream)
  "Serializes a message object of type '<EmotionSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmotionSrv-request>) istream)
  "Deserializes a message object of type '<EmotionSrv-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmotionSrv-request>)))
  "Returns string type for a service object of type '<EmotionSrv-request>"
  "vino_people_msgs/EmotionSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmotionSrv-request)))
  "Returns string type for a service object of type 'EmotionSrv-request"
  "vino_people_msgs/EmotionSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmotionSrv-request>)))
  "Returns md5sum for a message object of type '<EmotionSrv-request>"
  "f96427de68d8e27dc33882099e92670b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmotionSrv-request)))
  "Returns md5sum for a message object of type 'EmotionSrv-request"
  "f96427de68d8e27dc33882099e92670b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmotionSrv-request>)))
  "Returns full string definition for message of type '<EmotionSrv-request>"
  (cl:format cl:nil "# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string image_path       # input: an image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmotionSrv-request)))
  "Returns full string definition for message of type 'EmotionSrv-request"
  (cl:format cl:nil "# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string image_path       # input: an image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmotionSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmotionSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'EmotionSrv-request
    (cl:cons ':image_path (image_path msg))
))
;//! \htmlinclude EmotionSrv-response.msg.html

(cl:defclass <EmotionSrv-response> (roslisp-msg-protocol:ros-message)
  ((emotion
    :reader emotion
    :initarg :emotion
    :type vino_people_msgs-msg:EmotionsStamped
    :initform (cl:make-instance 'vino_people_msgs-msg:EmotionsStamped)))
)

(cl:defclass EmotionSrv-response (<EmotionSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <EmotionSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'EmotionSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-srv:<EmotionSrv-response> is deprecated: use vino_people_msgs-srv:EmotionSrv-response instead.")))

(cl:ensure-generic-function 'emotion-val :lambda-list '(m))
(cl:defmethod emotion-val ((m <EmotionSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-srv:emotion-val is deprecated.  Use vino_people_msgs-srv:emotion instead.")
  (emotion m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <EmotionSrv-response>) ostream)
  "Serializes a message object of type '<EmotionSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'emotion) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <EmotionSrv-response>) istream)
  "Deserializes a message object of type '<EmotionSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'emotion) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<EmotionSrv-response>)))
  "Returns string type for a service object of type '<EmotionSrv-response>"
  "vino_people_msgs/EmotionSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmotionSrv-response)))
  "Returns string type for a service object of type 'EmotionSrv-response"
  "vino_people_msgs/EmotionSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<EmotionSrv-response>)))
  "Returns md5sum for a message object of type '<EmotionSrv-response>"
  "f96427de68d8e27dc33882099e92670b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'EmotionSrv-response)))
  "Returns md5sum for a message object of type 'EmotionSrv-response"
  "f96427de68d8e27dc33882099e92670b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<EmotionSrv-response>)))
  "Returns full string definition for message of type '<EmotionSrv-response>"
  (cl:format cl:nil "EmotionsStamped emotion  # output: emotion result~%~%~%================================================================================~%MSG: vino_people_msgs/EmotionsStamped~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%std_msgs/Header header~%vino_people_msgs/Emotion[] emotions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/Emotion~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string emotion                     # The emotion for the detected face in roi~%sensor_msgs/RegionOfInterest roi   # region of interest for a person's face~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'EmotionSrv-response)))
  "Returns full string definition for message of type 'EmotionSrv-response"
  (cl:format cl:nil "EmotionsStamped emotion  # output: emotion result~%~%~%================================================================================~%MSG: vino_people_msgs/EmotionsStamped~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%std_msgs/Header header~%vino_people_msgs/Emotion[] emotions~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/Emotion~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string emotion                     # The emotion for the detected face in roi~%sensor_msgs/RegionOfInterest roi   # region of interest for a person's face~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <EmotionSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'emotion))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <EmotionSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'EmotionSrv-response
    (cl:cons ':emotion (emotion msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'EmotionSrv)))
  'EmotionSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'EmotionSrv)))
  'EmotionSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'EmotionSrv)))
  "Returns string type for a service object of type '<EmotionSrv>"
  "vino_people_msgs/EmotionSrv")