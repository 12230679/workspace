;; Auto-generated. Do not edit!


(when (boundp 'vino_people_msgs::PersonsStamped)
  (if (not (find-package "VINO_PEOPLE_MSGS"))
    (make-package "VINO_PEOPLE_MSGS"))
  (shadow 'PersonsStamped (find-package "VINO_PEOPLE_MSGS")))
(unless (find-package "VINO_PEOPLE_MSGS::PERSONSSTAMPED")
  (make-package "VINO_PEOPLE_MSGS::PERSONSSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PersonsStamped.msg.html
(if (not (find-package "OBJECT_MSGS"))
  (ros::roseus-add-msgs "object_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vino_people_msgs::PersonsStamped
  :super ros::object
  :slots (_header _faces _emotions _agegenders _headposes ))

(defmethod vino_people_msgs::PersonsStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:faces __faces) ())
    ((:emotions __emotions) ())
    ((:agegenders __agegenders) ())
    ((:headposes __headposes) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _faces __faces)
   (setq _emotions __emotions)
   (setq _agegenders __agegenders)
   (setq _headposes __headposes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:faces
   (&rest __faces)
   (if (keywordp (car __faces))
       (send* _faces __faces)
     (progn
       (if __faces (setq _faces (car __faces)))
       _faces)))
  (:emotions
   (&rest __emotions)
   (if (keywordp (car __emotions))
       (send* _emotions __emotions)
     (progn
       (if __emotions (setq _emotions (car __emotions)))
       _emotions)))
  (:agegenders
   (&rest __agegenders)
   (if (keywordp (car __agegenders))
       (send* _agegenders __agegenders)
     (progn
       (if __agegenders (setq _agegenders (car __agegenders)))
       _agegenders)))
  (:headposes
   (&rest __headposes)
   (if (keywordp (car __headposes))
       (send* _headposes __headposes)
     (progn
       (if __headposes (setq _headposes (car __headposes)))
       _headposes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; object_msgs/ObjectInBox[] _faces
    (apply #'+ (send-all _faces :serialization-length)) 4
    ;; vino_people_msgs/Emotion[] _emotions
    (apply #'+ (send-all _emotions :serialization-length)) 4
    ;; vino_people_msgs/AgeGender[] _agegenders
    (apply #'+ (send-all _agegenders :serialization-length)) 4
    ;; vino_people_msgs/HeadPose[] _headposes
    (apply #'+ (send-all _headposes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; object_msgs/ObjectInBox[] _faces
     (write-long (length _faces) s)
     (dolist (elem _faces)
       (send elem :serialize s)
       )
     ;; vino_people_msgs/Emotion[] _emotions
     (write-long (length _emotions) s)
     (dolist (elem _emotions)
       (send elem :serialize s)
       )
     ;; vino_people_msgs/AgeGender[] _agegenders
     (write-long (length _agegenders) s)
     (dolist (elem _agegenders)
       (send elem :serialize s)
       )
     ;; vino_people_msgs/HeadPose[] _headposes
     (write-long (length _headposes) s)
     (dolist (elem _headposes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; object_msgs/ObjectInBox[] _faces
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _faces (let (r) (dotimes (i n) (push (instance object_msgs::ObjectInBox :init) r)) r))
     (dolist (elem- _faces)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; vino_people_msgs/Emotion[] _emotions
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _emotions (let (r) (dotimes (i n) (push (instance vino_people_msgs::Emotion :init) r)) r))
     (dolist (elem- _emotions)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; vino_people_msgs/AgeGender[] _agegenders
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _agegenders (let (r) (dotimes (i n) (push (instance vino_people_msgs::AgeGender :init) r)) r))
     (dolist (elem- _agegenders)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; vino_people_msgs/HeadPose[] _headposes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _headposes (let (r) (dotimes (i n) (push (instance vino_people_msgs::HeadPose :init) r)) r))
     (dolist (elem- _headposes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vino_people_msgs::PersonsStamped :md5sum-) "23f905e00203e47a379428484b51ca3e")
(setf (get vino_people_msgs::PersonsStamped :datatype-) "vino_people_msgs/PersonsStamped")
(setf (get vino_people_msgs::PersonsStamped :definition-)
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

std_msgs/Header header
object_msgs/ObjectInBox[] faces
vino_people_msgs/Emotion[] emotions
vino_people_msgs/AgeGender[] agegenders
vino_people_msgs/HeadPose[] headposes

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
MSG: object_msgs/ObjectInBox
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
Object object                     # detected object
sensor_msgs/RegionOfInterest roi  # region of interest

================================================================================
MSG: object_msgs/Object
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

# This message define the property of detected object
string object_name  # object name
float32 probability # probability of detected object

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

================================================================================
MSG: vino_people_msgs/Emotion
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

string emotion                     # The emotion for the detected face in roi
sensor_msgs/RegionOfInterest roi   # region of interest for a person's face

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
MSG: vino_people_msgs/HeadPose
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

float32 yaw							# yaw
float32 pitch						# pitch
float32 roll						# roll
sensor_msgs/RegionOfInterest roi 	# region of interest for a person's face
")



(provide :vino_people_msgs/PersonsStamped "23f905e00203e47a379428484b51ca3e")


