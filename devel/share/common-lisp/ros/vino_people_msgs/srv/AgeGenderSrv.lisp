; Auto-generated. Do not edit!


(cl:in-package vino_people_msgs-srv)


;//! \htmlinclude AgeGenderSrv-request.msg.html

(cl:defclass <AgeGenderSrv-request> (roslisp-msg-protocol:ros-message)
  ((image_path
    :reader image_path
    :initarg :image_path
    :type cl:string
    :initform ""))
)

(cl:defclass AgeGenderSrv-request (<AgeGenderSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgeGenderSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgeGenderSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-srv:<AgeGenderSrv-request> is deprecated: use vino_people_msgs-srv:AgeGenderSrv-request instead.")))

(cl:ensure-generic-function 'image_path-val :lambda-list '(m))
(cl:defmethod image_path-val ((m <AgeGenderSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-srv:image_path-val is deprecated.  Use vino_people_msgs-srv:image_path instead.")
  (image_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgeGenderSrv-request>) ostream)
  "Serializes a message object of type '<AgeGenderSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgeGenderSrv-request>) istream)
  "Deserializes a message object of type '<AgeGenderSrv-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgeGenderSrv-request>)))
  "Returns string type for a service object of type '<AgeGenderSrv-request>"
  "vino_people_msgs/AgeGenderSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgeGenderSrv-request)))
  "Returns string type for a service object of type 'AgeGenderSrv-request"
  "vino_people_msgs/AgeGenderSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgeGenderSrv-request>)))
  "Returns md5sum for a message object of type '<AgeGenderSrv-request>"
  "cb3ae0f4f6ae2edd84d46ae3ce84e382")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgeGenderSrv-request)))
  "Returns md5sum for a message object of type 'AgeGenderSrv-request"
  "cb3ae0f4f6ae2edd84d46ae3ce84e382")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgeGenderSrv-request>)))
  "Returns full string definition for message of type '<AgeGenderSrv-request>"
  (cl:format cl:nil "# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string image_path            # input: an image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgeGenderSrv-request)))
  "Returns full string definition for message of type 'AgeGenderSrv-request"
  (cl:format cl:nil "# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%string image_path            # input: an image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgeGenderSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgeGenderSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'AgeGenderSrv-request
    (cl:cons ':image_path (image_path msg))
))
;//! \htmlinclude AgeGenderSrv-response.msg.html

(cl:defclass <AgeGenderSrv-response> (roslisp-msg-protocol:ros-message)
  ((age_gender
    :reader age_gender
    :initarg :age_gender
    :type vino_people_msgs-msg:AgeGenderStamped
    :initform (cl:make-instance 'vino_people_msgs-msg:AgeGenderStamped)))
)

(cl:defclass AgeGenderSrv-response (<AgeGenderSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <AgeGenderSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'AgeGenderSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-srv:<AgeGenderSrv-response> is deprecated: use vino_people_msgs-srv:AgeGenderSrv-response instead.")))

(cl:ensure-generic-function 'age_gender-val :lambda-list '(m))
(cl:defmethod age_gender-val ((m <AgeGenderSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-srv:age_gender-val is deprecated.  Use vino_people_msgs-srv:age_gender instead.")
  (age_gender m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <AgeGenderSrv-response>) ostream)
  "Serializes a message object of type '<AgeGenderSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'age_gender) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <AgeGenderSrv-response>) istream)
  "Deserializes a message object of type '<AgeGenderSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'age_gender) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<AgeGenderSrv-response>)))
  "Returns string type for a service object of type '<AgeGenderSrv-response>"
  "vino_people_msgs/AgeGenderSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgeGenderSrv-response)))
  "Returns string type for a service object of type 'AgeGenderSrv-response"
  "vino_people_msgs/AgeGenderSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<AgeGenderSrv-response>)))
  "Returns md5sum for a message object of type '<AgeGenderSrv-response>"
  "cb3ae0f4f6ae2edd84d46ae3ce84e382")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'AgeGenderSrv-response)))
  "Returns md5sum for a message object of type 'AgeGenderSrv-response"
  "cb3ae0f4f6ae2edd84d46ae3ce84e382")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<AgeGenderSrv-response>)))
  "Returns full string definition for message of type '<AgeGenderSrv-response>"
  (cl:format cl:nil "AgeGenderStamped age_gender  # output: age and gender result~%~%~%~%================================================================================~%MSG: vino_people_msgs/AgeGenderStamped~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%std_msgs/Header header~%vino_people_msgs/AgeGender[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/AgeGender~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%float32 age                        # age: 0~~100~%string gender                      # \"Male\" or \"Female\"~%float32 gender_confidence          # probability of gender~%sensor_msgs/RegionOfInterest roi   # region of interest for a person's face~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'AgeGenderSrv-response)))
  "Returns full string definition for message of type 'AgeGenderSrv-response"
  (cl:format cl:nil "AgeGenderStamped age_gender  # output: age and gender result~%~%~%~%================================================================================~%MSG: vino_people_msgs/AgeGenderStamped~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%std_msgs/Header header~%vino_people_msgs/AgeGender[] objects~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/AgeGender~%# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%float32 age                        # age: 0~~100~%string gender                      # \"Male\" or \"Female\"~%float32 gender_confidence          # probability of gender~%sensor_msgs/RegionOfInterest roi   # region of interest for a person's face~%~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <AgeGenderSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'age_gender))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <AgeGenderSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'AgeGenderSrv-response
    (cl:cons ':age_gender (age_gender msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'AgeGenderSrv)))
  'AgeGenderSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'AgeGenderSrv)))
  'AgeGenderSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'AgeGenderSrv)))
  "Returns string type for a service object of type '<AgeGenderSrv>"
  "vino_people_msgs/AgeGenderSrv")