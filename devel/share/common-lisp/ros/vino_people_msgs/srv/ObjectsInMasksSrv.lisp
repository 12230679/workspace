; Auto-generated. Do not edit!


(cl:in-package vino_people_msgs-srv)


;//! \htmlinclude ObjectsInMasksSrv-request.msg.html

(cl:defclass <ObjectsInMasksSrv-request> (roslisp-msg-protocol:ros-message)
  ((image_path
    :reader image_path
    :initarg :image_path
    :type cl:string
    :initform ""))
)

(cl:defclass ObjectsInMasksSrv-request (<ObjectsInMasksSrv-request>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectsInMasksSrv-request>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectsInMasksSrv-request)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-srv:<ObjectsInMasksSrv-request> is deprecated: use vino_people_msgs-srv:ObjectsInMasksSrv-request instead.")))

(cl:ensure-generic-function 'image_path-val :lambda-list '(m))
(cl:defmethod image_path-val ((m <ObjectsInMasksSrv-request>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-srv:image_path-val is deprecated.  Use vino_people_msgs-srv:image_path instead.")
  (image_path m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectsInMasksSrv-request>) ostream)
  "Serializes a message object of type '<ObjectsInMasksSrv-request>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'image_path))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'image_path))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectsInMasksSrv-request>) istream)
  "Deserializes a message object of type '<ObjectsInMasksSrv-request>"
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
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectsInMasksSrv-request>)))
  "Returns string type for a service object of type '<ObjectsInMasksSrv-request>"
  "vino_people_msgs/ObjectsInMasksSrvRequest")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectsInMasksSrv-request)))
  "Returns string type for a service object of type 'ObjectsInMasksSrv-request"
  "vino_people_msgs/ObjectsInMasksSrvRequest")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectsInMasksSrv-request>)))
  "Returns md5sum for a message object of type '<ObjectsInMasksSrv-request>"
  "2eb0e72b76147af62838f5a194b1b59d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectsInMasksSrv-request)))
  "Returns md5sum for a message object of type 'ObjectsInMasksSrv-request"
  "2eb0e72b76147af62838f5a194b1b59d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectsInMasksSrv-request>)))
  "Returns full string definition for message of type '<ObjectsInMasksSrv-request>"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent objects detected and their bounding-boxes in a frame~%~%string image_path       # input: an image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectsInMasksSrv-request)))
  "Returns full string definition for message of type 'ObjectsInMasksSrv-request"
  (cl:format cl:nil "# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent objects detected and their bounding-boxes in a frame~%~%string image_path       # input: an image~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectsInMasksSrv-request>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'image_path))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectsInMasksSrv-request>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectsInMasksSrv-request
    (cl:cons ':image_path (image_path msg))
))
;//! \htmlinclude ObjectsInMasksSrv-response.msg.html

(cl:defclass <ObjectsInMasksSrv-response> (roslisp-msg-protocol:ros-message)
  ((segmentation
    :reader segmentation
    :initarg :segmentation
    :type vino_people_msgs-msg:ObjectsInMasks
    :initform (cl:make-instance 'vino_people_msgs-msg:ObjectsInMasks)))
)

(cl:defclass ObjectsInMasksSrv-response (<ObjectsInMasksSrv-response>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ObjectsInMasksSrv-response>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ObjectsInMasksSrv-response)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_people_msgs-srv:<ObjectsInMasksSrv-response> is deprecated: use vino_people_msgs-srv:ObjectsInMasksSrv-response instead.")))

(cl:ensure-generic-function 'segmentation-val :lambda-list '(m))
(cl:defmethod segmentation-val ((m <ObjectsInMasksSrv-response>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_people_msgs-srv:segmentation-val is deprecated.  Use vino_people_msgs-srv:segmentation instead.")
  (segmentation m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ObjectsInMasksSrv-response>) ostream)
  "Serializes a message object of type '<ObjectsInMasksSrv-response>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'segmentation) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ObjectsInMasksSrv-response>) istream)
  "Deserializes a message object of type '<ObjectsInMasksSrv-response>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'segmentation) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ObjectsInMasksSrv-response>)))
  "Returns string type for a service object of type '<ObjectsInMasksSrv-response>"
  "vino_people_msgs/ObjectsInMasksSrvResponse")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectsInMasksSrv-response)))
  "Returns string type for a service object of type 'ObjectsInMasksSrv-response"
  "vino_people_msgs/ObjectsInMasksSrvResponse")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ObjectsInMasksSrv-response>)))
  "Returns md5sum for a message object of type '<ObjectsInMasksSrv-response>"
  "2eb0e72b76147af62838f5a194b1b59d")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ObjectsInMasksSrv-response)))
  "Returns md5sum for a message object of type 'ObjectsInMasksSrv-response"
  "2eb0e72b76147af62838f5a194b1b59d")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ObjectsInMasksSrv-response>)))
  "Returns full string definition for message of type '<ObjectsInMasksSrv-response>"
  (cl:format cl:nil "ObjectsInMasks segmentation   # ObjectInBox array~%~%~%================================================================================~%MSG: vino_people_msgs/ObjectsInMasks~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent objects detected and their bounding-boxes in a frame~%std_msgs/Header header         	# timestamp in header is the time the sensor captured the raw data~%ObjectInMask[] objects_vector   # ObjectInBox array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/ObjectInMask~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent a detected object and its region of interest~%string object_name  				# object name~%float32 probability 				# probability of detected object~%sensor_msgs/RegionOfInterest roi    # region of interest~%float32[] mask_array				# Instance mask as Image~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ObjectsInMasksSrv-response)))
  "Returns full string definition for message of type 'ObjectsInMasksSrv-response"
  (cl:format cl:nil "ObjectsInMasks segmentation   # ObjectInBox array~%~%~%================================================================================~%MSG: vino_people_msgs/ObjectsInMasks~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent objects detected and their bounding-boxes in a frame~%std_msgs/Header header         	# timestamp in header is the time the sensor captured the raw data~%ObjectInMask[] objects_vector   # ObjectInBox array~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: vino_people_msgs/ObjectInMask~%# Copyright (c) 2017 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%~%# This message can represent a detected object and its region of interest~%string object_name  				# object name~%float32 probability 				# probability of detected object~%sensor_msgs/RegionOfInterest roi    # region of interest~%float32[] mask_array				# Instance mask as Image~%================================================================================~%MSG: sensor_msgs/RegionOfInterest~%# This message is used to specify a region of interest within an image.~%#~%# When used to specify the ROI setting of the camera when the image was~%# taken, the height and width fields should either match the height and~%# width fields for the associated image; or height = width = 0~%# indicates that the full resolution image was captured.~%~%uint32 x_offset  # Leftmost pixel of the ROI~%                 # (0 if the ROI includes the left edge of the image)~%uint32 y_offset  # Topmost pixel of the ROI~%                 # (0 if the ROI includes the top edge of the image)~%uint32 height    # Height of ROI~%uint32 width     # Width of ROI~%~%# True if a distinct rectified ROI should be calculated from the \"raw\"~%# ROI in this message. Typically this should be False if the full image~%# is captured (ROI not used), and True if a subwindow is captured (ROI~%# used).~%bool do_rectify~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ObjectsInMasksSrv-response>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'segmentation))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ObjectsInMasksSrv-response>))
  "Converts a ROS message object to a list"
  (cl:list 'ObjectsInMasksSrv-response
    (cl:cons ':segmentation (segmentation msg))
))
(cl:defmethod roslisp-msg-protocol:service-request-type ((msg (cl:eql 'ObjectsInMasksSrv)))
  'ObjectsInMasksSrv-request)
(cl:defmethod roslisp-msg-protocol:service-response-type ((msg (cl:eql 'ObjectsInMasksSrv)))
  'ObjectsInMasksSrv-response)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ObjectsInMasksSrv)))
  "Returns string type for a service object of type '<ObjectsInMasksSrv>"
  "vino_people_msgs/ObjectsInMasksSrv")