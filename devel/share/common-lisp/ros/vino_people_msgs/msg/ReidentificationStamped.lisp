; Auto-generated. Do not edit!


(cl:in-package vino_people_msgs-msg)


;//! \htmlinclude ReidentificationStamped.msg.html

(cl:defclass <ReidentificationStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (reidentified_vector
    :reader reidentified_vector
    :initarg :reidentified_vector
    :type (cl:vector vino_people_msgs-msg:Reidentification)
   :initform (cl:make-array 0 :element-type 'vino_people_msgs-msg:Reidentification :initial-element (cl:make-instance 'vino_people_msgs-msg:Reidentification))))
)

(cl:defclass ReidentificationStamped (<ReidentificationStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ReidentificationStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ReidentificationStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-msg:<ReidentificationStamped> is deprecated: use vino_people_msgs-msg:ReidentificationStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ReidentificationStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-msg:header-val is deprecated.  Use vino_people_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'reidentified_vector-val :lambda-list '(m))
(cl:defmethod reidentified_vector-val ((m <ReidentificationStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-msg:reidentified_vector-val is deprecated.  Use vino_people_msgs-msg:reidentified_vector instead.")
  (reidentified_vector m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ReidentificationStamped>) ostream)
  "Serializes a message object of type '<ReidentificationStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'reidentified_vector))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'reidentified_vector))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ReidentificationStamped>) istream)
  "Deserializes a message object of type '<ReidentificationStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'reidentified_vector) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'reidentified_vector)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'vino_people_msgs-msg:Reidentification))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ReidentificationStamped>)))
  "Returns string type for a message object of type '<ReidentificationStamped>"
  "vino_people_msgs/ReidentificationStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ReidentificationStamped)))
  "Returns string type for a message object of type 'ReidentificationStamped"
  "vino_people_msgs/ReidentificationStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ReidentificationStamped>)))
  "Returns md5sum for a message object of type '<ReidentificationStamped>"
  "64927768b5d6320a4ce2eb08382cacde")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ReidentificationStamped)))
  "Returns md5sum for a message object of type 'ReidentificationStamped"
  "64927768b5d6320a4ce2eb08382cacde")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ReidentificationStamped>)))
  "Returns full string definition for message of type '<ReidentificationStamped>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent reidentified persons and its IDs~%std_msgs/Header header        			# timestamp in header is the time the sensor captured the raw data~%Reidentification[] reidentified_vector  # ObjectInBox array~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/Reidentification~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent a reidentified person and its ID~%string identity  					# person ID~%sensor_msgs/RegionOfInterest roi    # region of interest~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ReidentificationStamped)))
  "Returns full string definition for message of type 'ReidentificationStamped"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent reidentified persons and its IDs~%std_msgs/Header header        			# timestamp in header is the time the sensor captured the raw data~%Reidentification[] reidentified_vector  # ObjectInBox array~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/Reidentification~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent a reidentified person and its ID~%string identity  					# person ID~%sensor_msgs/RegionOfInterest roi    # region of interest~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ReidentificationStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'reidentified_vector) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ReidentificationStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'ReidentificationStamped
    (cl:cons ':header (header msg))
    (cl:cons ':reidentified_vector (reidentified_vector msg))
))
