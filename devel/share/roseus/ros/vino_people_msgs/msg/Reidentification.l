;; Auto-generated. Do not edit!


(when (boundp 'vino_people_msgs::Reidentification)
  (if (not (find-package "VINO_PEOPLE_MSGS"))
    (make-package "VINO_PEOPLE_MSGS"))
  (shadow 'Reidentification (find-package "VINO_PEOPLE_MSGS")))
(unless (find-package "VINO_PEOPLE_MSGS::REIDENTIFICATION")
  (make-package "VINO_PEOPLE_MSGS::REIDENTIFICATION"))

(in-package "ROS")
;;//! \htmlinclude Reidentification.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass vino_people_msgs::Reidentification
  :super ros::object
  :slots (_identity _roi ))

(defmethod vino_people_msgs::Reidentification
  (:init
   (&key
    ((:identity __identity) "")
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    )
   (send-super :init)
   (setq _identity (string __identity))
   (setq _roi __roi)
   self)
  (:identity
   (&optional __identity)
   (if __identity (setq _identity __identity)) _identity)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:serialization-length
   ()
   (+
    ;; string _identity
    4 (length _identity)
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _identity
       (write-long (length _identity) s) (princ _identity s)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _identity
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _identity (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;;
   self)
  )

(setf (get vino_people_msgs::Reidentification :md5sum-) "9d8c486a548ca6f984d1c7e0c75c85ea")
(setf (get vino_people_msgs::Reidentification :datatype-) "vino_people_msgs/Reidentification")
(setf (get vino_people_msgs::Reidentification :definition-)
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



(provide :vino_people_msgs/Reidentification "9d8c486a548ca6f984d1c7e0c75c85ea")


