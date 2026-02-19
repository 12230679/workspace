;; Auto-generated. Do not edit!


(when (boundp 'vino_people_msgs::ReidentificationSrv)
  (if (not (find-package "VINO_PEOPLE_MSGS"))
    (make-package "VINO_PEOPLE_MSGS"))
  (shadow 'ReidentificationSrv (find-package "VINO_PEOPLE_MSGS")))
(unless (find-package "VINO_PEOPLE_MSGS::REIDENTIFICATIONSRV")
  (make-package "VINO_PEOPLE_MSGS::REIDENTIFICATIONSRV"))
(unless (find-package "VINO_PEOPLE_MSGS::REIDENTIFICATIONSRVREQUEST")
  (make-package "VINO_PEOPLE_MSGS::REIDENTIFICATIONSRVREQUEST"))
(unless (find-package "VINO_PEOPLE_MSGS::REIDENTIFICATIONSRVRESPONSE")
  (make-package "VINO_PEOPLE_MSGS::REIDENTIFICATIONSRVRESPONSE"))

(in-package "ROS")





(defclass vino_people_msgs::ReidentificationSrvRequest
  :super ros::object
  :slots (_image_path ))

(defmethod vino_people_msgs::ReidentificationSrvRequest
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

(defclass vino_people_msgs::ReidentificationSrvResponse
  :super ros::object
  :slots (_reidentification ))

(defmethod vino_people_msgs::ReidentificationSrvResponse
  (:init
   (&key
    ((:reidentification __reidentification) (instance vino_people_msgs::ReidentificationStamped :init))
    )
   (send-super :init)
   (setq _reidentification __reidentification)
   self)
  (:reidentification
   (&rest __reidentification)
   (if (keywordp (car __reidentification))
       (send* _reidentification __reidentification)
     (progn
       (if __reidentification (setq _reidentification (car __reidentification)))
       _reidentification)))
  (:serialization-length
   ()
   (+
    ;; vino_people_msgs/ReidentificationStamped _reidentification
    (send _reidentification :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vino_people_msgs/ReidentificationStamped _reidentification
       (send _reidentification :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vino_people_msgs/ReidentificationStamped _reidentification
     (send _reidentification :deserialize buf ptr-) (incf ptr- (send _reidentification :serialization-length))
   ;;
   self)
  )

(defclass vino_people_msgs::ReidentificationSrv
  :super ros::object
  :slots ())

(setf (get vino_people_msgs::ReidentificationSrv :md5sum-) "c4b89cb3f0835a54ae60f03c4fb36dc7")
(setf (get vino_people_msgs::ReidentificationSrv :datatype-) "vino_people_msgs/ReidentificationSrv")
(setf (get vino_people_msgs::ReidentificationSrv :request) vino_people_msgs::ReidentificationSrvRequest)
(setf (get vino_people_msgs::ReidentificationSrv :response) vino_people_msgs::ReidentificationSrvResponse)

(defmethod vino_people_msgs::ReidentificationSrvRequest
  (:response () (instance vino_people_msgs::ReidentificationSrvResponse :init)))

(setf (get vino_people_msgs::ReidentificationSrvRequest :md5sum-) "c4b89cb3f0835a54ae60f03c4fb36dc7")
(setf (get vino_people_msgs::ReidentificationSrvRequest :datatype-) "vino_people_msgs/ReidentificationSrvRequest")
(setf (get vino_people_msgs::ReidentificationSrvRequest :definition-)
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

string image_path       # input: an image
---
ReidentificationStamped reidentification  # ObjectInBox array


================================================================================
MSG: vino_people_msgs/ReidentificationStamped
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

# This message can represent reidentified persons and its IDs
std_msgs/Header header        			# timestamp in header is the time the sensor captured the raw data
Reidentification[] reidentified_vector  # ObjectInBox array
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
MSG: vino_people_msgs/Reidentification
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

# This message can represent a reidentified person and its ID
string identity  					# person ID
sensor_msgs/RegionOfInterest roi    # region of interest
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

(setf (get vino_people_msgs::ReidentificationSrvResponse :md5sum-) "c4b89cb3f0835a54ae60f03c4fb36dc7")
(setf (get vino_people_msgs::ReidentificationSrvResponse :datatype-) "vino_people_msgs/ReidentificationSrvResponse")
(setf (get vino_people_msgs::ReidentificationSrvResponse :definition-)
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

string image_path       # input: an image
---
ReidentificationStamped reidentification  # ObjectInBox array


================================================================================
MSG: vino_people_msgs/ReidentificationStamped
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

# This message can represent reidentified persons and its IDs
std_msgs/Header header        			# timestamp in header is the time the sensor captured the raw data
Reidentification[] reidentified_vector  # ObjectInBox array
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
MSG: vino_people_msgs/Reidentification
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

# This message can represent a reidentified person and its ID
string identity  					# person ID
sensor_msgs/RegionOfInterest roi    # region of interest
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



(provide :vino_people_msgs/ReidentificationSrv "c4b89cb3f0835a54ae60f03c4fb36dc7")


