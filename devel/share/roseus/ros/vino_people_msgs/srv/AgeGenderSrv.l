;; Auto-generated. Do not edit!


(when (boundp 'vino_people_msgs::AgeGenderSrv)
  (if (not (find-package "VINO_PEOPLE_MSGS"))
    (make-package "VINO_PEOPLE_MSGS"))
  (shadow 'AgeGenderSrv (find-package "VINO_PEOPLE_MSGS")))
(unless (find-package "VINO_PEOPLE_MSGS::AGEGENDERSRV")
  (make-package "VINO_PEOPLE_MSGS::AGEGENDERSRV"))
(unless (find-package "VINO_PEOPLE_MSGS::AGEGENDERSRVREQUEST")
  (make-package "VINO_PEOPLE_MSGS::AGEGENDERSRVREQUEST"))
(unless (find-package "VINO_PEOPLE_MSGS::AGEGENDERSRVRESPONSE")
  (make-package "VINO_PEOPLE_MSGS::AGEGENDERSRVRESPONSE"))

(in-package "ROS")





(defclass vino_people_msgs::AgeGenderSrvRequest
  :super ros::object
  :slots (_image_path ))

(defmethod vino_people_msgs::AgeGenderSrvRequest
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

(defclass vino_people_msgs::AgeGenderSrvResponse
  :super ros::object
  :slots (_age_gender ))

(defmethod vino_people_msgs::AgeGenderSrvResponse
  (:init
   (&key
    ((:age_gender __age_gender) (instance vino_people_msgs::AgeGenderStamped :init))
    )
   (send-super :init)
   (setq _age_gender __age_gender)
   self)
  (:age_gender
   (&rest __age_gender)
   (if (keywordp (car __age_gender))
       (send* _age_gender __age_gender)
     (progn
       (if __age_gender (setq _age_gender (car __age_gender)))
       _age_gender)))
  (:serialization-length
   ()
   (+
    ;; vino_people_msgs/AgeGenderStamped _age_gender
    (send _age_gender :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vino_people_msgs/AgeGenderStamped _age_gender
       (send _age_gender :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vino_people_msgs/AgeGenderStamped _age_gender
     (send _age_gender :deserialize buf ptr-) (incf ptr- (send _age_gender :serialization-length))
   ;;
   self)
  )

(defclass vino_people_msgs::AgeGenderSrv
  :super ros::object
  :slots ())

(setf (get vino_people_msgs::AgeGenderSrv :md5sum-) "cb3ae0f4f6ae2edd84d46ae3ce84e382")
(setf (get vino_people_msgs::AgeGenderSrv :datatype-) "vino_people_msgs/AgeGenderSrv")
(setf (get vino_people_msgs::AgeGenderSrv :request) vino_people_msgs::AgeGenderSrvRequest)
(setf (get vino_people_msgs::AgeGenderSrv :response) vino_people_msgs::AgeGenderSrvResponse)

(defmethod vino_people_msgs::AgeGenderSrvRequest
  (:response () (instance vino_people_msgs::AgeGenderSrvResponse :init)))

(setf (get vino_people_msgs::AgeGenderSrvRequest :md5sum-) "cb3ae0f4f6ae2edd84d46ae3ce84e382")
(setf (get vino_people_msgs::AgeGenderSrvRequest :datatype-) "vino_people_msgs/AgeGenderSrvRequest")
(setf (get vino_people_msgs::AgeGenderSrvRequest :definition-)
      "# Copyright (c) 2018 Intel Corporation
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

string image_path            # input: an image
---
AgeGenderStamped age_gender  # output: age and gender result



================================================================================
MSG: vino_people_msgs/AgeGenderStamped
# Copyright (c) 2018 Intel Corporation
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

std_msgs/Header header
vino_people_msgs/AgeGender[] objects

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
MSG: vino_people_msgs/AgeGender
# Copyright (c) 2018 Intel Corporation
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

float32 age                        # age: 0~100
string gender                      # \"Male\" or \"Female\"
float32 gender_confidence          # probability of gender
sensor_msgs/RegionOfInterest roi   # region of interest for a person's face

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

(setf (get vino_people_msgs::AgeGenderSrvResponse :md5sum-) "cb3ae0f4f6ae2edd84d46ae3ce84e382")
(setf (get vino_people_msgs::AgeGenderSrvResponse :datatype-) "vino_people_msgs/AgeGenderSrvResponse")
(setf (get vino_people_msgs::AgeGenderSrvResponse :definition-)
      "# Copyright (c) 2018 Intel Corporation
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

string image_path            # input: an image
---
AgeGenderStamped age_gender  # output: age and gender result



================================================================================
MSG: vino_people_msgs/AgeGenderStamped
# Copyright (c) 2018 Intel Corporation
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

std_msgs/Header header
vino_people_msgs/AgeGender[] objects

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
MSG: vino_people_msgs/AgeGender
# Copyright (c) 2018 Intel Corporation
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

float32 age                        # age: 0~100
string gender                      # \"Male\" or \"Female\"
float32 gender_confidence          # probability of gender
sensor_msgs/RegionOfInterest roi   # region of interest for a person's face

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



(provide :vino_people_msgs/AgeGenderSrv "cb3ae0f4f6ae2edd84d46ae3ce84e382")


