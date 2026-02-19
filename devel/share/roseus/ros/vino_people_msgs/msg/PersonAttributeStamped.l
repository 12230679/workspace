;; Auto-generated. Do not edit!


(when (boundp 'vino_people_msgs::PersonAttributeStamped)
  (if (not (find-package "VINO_PEOPLE_MSGS"))
    (make-package "VINO_PEOPLE_MSGS"))
  (shadow 'PersonAttributeStamped (find-package "VINO_PEOPLE_MSGS")))
(unless (find-package "VINO_PEOPLE_MSGS::PERSONATTRIBUTESTAMPED")
  (make-package "VINO_PEOPLE_MSGS::PERSONATTRIBUTESTAMPED"))

(in-package "ROS")
;;//! \htmlinclude PersonAttributeStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vino_people_msgs::PersonAttributeStamped
  :super ros::object
  :slots (_header _attributes ))

(defmethod vino_people_msgs::PersonAttributeStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:attributes __attributes) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _attributes __attributes)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:attributes
   (&rest __attributes)
   (if (keywordp (car __attributes))
       (send* _attributes __attributes)
     (progn
       (if __attributes (setq _attributes (car __attributes)))
       _attributes)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vino_people_msgs/PersonAttribute[] _attributes
    (apply #'+ (send-all _attributes :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vino_people_msgs/PersonAttribute[] _attributes
     (write-long (length _attributes) s)
     (dolist (elem _attributes)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vino_people_msgs/PersonAttribute[] _attributes
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _attributes (let (r) (dotimes (i n) (push (instance vino_people_msgs::PersonAttribute :init) r)) r))
     (dolist (elem- _attributes)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vino_people_msgs::PersonAttributeStamped :md5sum-) "6aa29359e9c0c768b60bc56461367107")
(setf (get vino_people_msgs::PersonAttributeStamped :datatype-) "vino_people_msgs/PersonAttributeStamped")
(setf (get vino_people_msgs::PersonAttributeStamped :definition-)
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

# This message can represent identified persons' attributes
std_msgs/Header header        			# timestamp in header is the time the sensor captured the raw data
PersonAttribute[] attributes			# ObjectInBox array
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
MSG: vino_people_msgs/PersonAttribute
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

# This message can represent a peron's attributes
string attribute  					# person attributes
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



(provide :vino_people_msgs/PersonAttributeStamped "6aa29359e9c0c768b60bc56461367107")


