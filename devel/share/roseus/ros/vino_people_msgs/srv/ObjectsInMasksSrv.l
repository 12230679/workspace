;; Auto-generated. Do not edit!


(when (boundp 'vino_people_msgs::ObjectsInMasksSrv)
  (if (not (find-package "VINO_PEOPLE_MSGS"))
    (make-package "VINO_PEOPLE_MSGS"))
  (shadow 'ObjectsInMasksSrv (find-package "VINO_PEOPLE_MSGS")))
(unless (find-package "VINO_PEOPLE_MSGS::OBJECTSINMASKSSRV")
  (make-package "VINO_PEOPLE_MSGS::OBJECTSINMASKSSRV"))
(unless (find-package "VINO_PEOPLE_MSGS::OBJECTSINMASKSSRVREQUEST")
  (make-package "VINO_PEOPLE_MSGS::OBJECTSINMASKSSRVREQUEST"))
(unless (find-package "VINO_PEOPLE_MSGS::OBJECTSINMASKSSRVRESPONSE")
  (make-package "VINO_PEOPLE_MSGS::OBJECTSINMASKSSRVRESPONSE"))

(in-package "ROS")





(defclass vino_people_msgs::ObjectsInMasksSrvRequest
  :super ros::object
  :slots (_image_path ))

(defmethod vino_people_msgs::ObjectsInMasksSrvRequest
  (:init
   (&key
    ((:image_path __image_path) "")
    )
   (send-super :init)
   (setq _image_path (string __image_path))
   self)
  (:image_path
   (&optional __image_path)
   (if __image_path (setq _image_path __image_path)) _image_path)
  (:serialization-length
   ()
   (+
    ;; string _image_path
    4 (length _image_path)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _image_path
       (write-long (length _image_path) s) (princ _image_path s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _image_path
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _image_path (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(defclass vino_people_msgs::ObjectsInMasksSrvResponse
  :super ros::object
  :slots (_segmentation ))

(defmethod vino_people_msgs::ObjectsInMasksSrvResponse
  (:init
   (&key
    ((:segmentation __segmentation) (instance vino_people_msgs::ObjectsInMasks :init))
    )
   (send-super :init)
   (setq _segmentation __segmentation)
   self)
  (:segmentation
   (&rest __segmentation)
   (if (keywordp (car __segmentation))
       (send* _segmentation __segmentation)
     (progn
       (if __segmentation (setq _segmentation (car __segmentation)))
       _segmentation)))
  (:serialization-length
   ()
   (+
    ;; vino_people_msgs/ObjectsInMasks _segmentation
    (send _segmentation :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vino_people_msgs/ObjectsInMasks _segmentation
       (send _segmentation :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vino_people_msgs/ObjectsInMasks _segmentation
     (send _segmentation :deserialize buf ptr-) (incf ptr- (send _segmentation :serialization-length))
   ;;
   self)
  )

(defclass vino_people_msgs::ObjectsInMasksSrv
  :super ros::object
  :slots ())

(setf (get vino_people_msgs::ObjectsInMasksSrv :md5sum-) "2eb0e72b76147af62838f5a194b1b59d")
(setf (get vino_people_msgs::ObjectsInMasksSrv :datatype-) "vino_people_msgs/ObjectsInMasksSrv")
(setf (get vino_people_msgs::ObjectsInMasksSrv :request) vino_people_msgs::ObjectsInMasksSrvRequest)
(setf (get vino_people_msgs::ObjectsInMasksSrv :response) vino_people_msgs::ObjectsInMasksSrvResponse)

(defmethod vino_people_msgs::ObjectsInMasksSrvRequest
  (:response () (instance vino_people_msgs::ObjectsInMasksSrvResponse :init)))

(setf (get vino_people_msgs::ObjectsInMasksSrvRequest :md5sum-) "2eb0e72b76147af62838f5a194b1b59d")
(setf (get vino_people_msgs::ObjectsInMasksSrvRequest :datatype-) "vino_people_msgs/ObjectsInMasksSrvRequest")
(setf (get vino_people_msgs::ObjectsInMasksSrvRequest :definition-)
      "# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This message can represent objects detected and their bounding-boxes in a frame

string image_path       # input: an image
---
ObjectsInMasks segmentation   # ObjectInBox array


================================================================================
MSG: vino_people_msgs/ObjectsInMasks
# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This message can represent objects detected and their bounding-boxes in a frame
std_msgs/Header header         	# timestamp in header is the time the sensor captured the raw data
ObjectInMask[] objects_vector   # ObjectInBox array

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: vino_people_msgs/ObjectInMask
# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This message can represent a detected object and its region of interest
string object_name  				# object name
float32 probability 				# probability of detected object
sensor_msgs/RegionOfInterest roi    # region of interest
float32[] mask_array				# Instance mask as Image
================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
")

(setf (get vino_people_msgs::ObjectsInMasksSrvResponse :md5sum-) "2eb0e72b76147af62838f5a194b1b59d")
(setf (get vino_people_msgs::ObjectsInMasksSrvResponse :datatype-) "vino_people_msgs/ObjectsInMasksSrvResponse")
(setf (get vino_people_msgs::ObjectsInMasksSrvResponse :definition-)
      "# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This message can represent objects detected and their bounding-boxes in a frame

string image_path       # input: an image
---
ObjectsInMasks segmentation   # ObjectInBox array


================================================================================
MSG: vino_people_msgs/ObjectsInMasks
# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This message can represent objects detected and their bounding-boxes in a frame
std_msgs/Header header         	# timestamp in header is the time the sensor captured the raw data
ObjectInMask[] objects_vector   # ObjectInBox array

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: vino_people_msgs/ObjectInMask
# Copyright (c) 2017 Intel Corporation
#
# Licensed under the Apache License, Version 2.0 (the \"License\");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an \"AS IS\" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# This message can represent a detected object and its region of interest
string object_name  				# object name
float32 probability 				# probability of detected object
sensor_msgs/RegionOfInterest roi    # region of interest
float32[] mask_array				# Instance mask as Image
================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the \"raw\"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify
")



(provide :vino_people_msgs/ObjectsInMasksSrv "2eb0e72b76147af62838f5a194b1b59d")


