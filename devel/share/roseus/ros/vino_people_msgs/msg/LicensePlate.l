;; Auto-generated. Do not edit!


(when (boundp 'vino_people_msgs::LicensePlate)
  (if (not (find-package "VINO_PEOPLE_MSGS"))
    (make-package "VINO_PEOPLE_MSGS"))
  (shadow 'LicensePlate (find-package "VINO_PEOPLE_MSGS")))
(unless (find-package "VINO_PEOPLE_MSGS::LICENSEPLATE")
  (make-package "VINO_PEOPLE_MSGS::LICENSEPLATE"))

(in-package "ROS")
;;//! \htmlinclude LicensePlate.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass vino_people_msgs::LicensePlate
  :super ros::object
  :slots (_license _roi ))

(defmethod vino_people_msgs::LicensePlate
  (:init
   (&key
    ((:license __license) "")
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    )
   (send-super :init)
   (setq _license (string __license))
   (setq _roi __roi)
   self)
  (:license
   (&optional __license)
   (if __license (setq _license __license)) _license)
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
    ;; string _license
    4 (length _license)
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _license
       (write-long (length _license) s) (princ _license s)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _license
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _license (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;;
   self)
  )

(setf (get vino_people_msgs::LicensePlate :md5sum-) "9f2ce3fb55119e4895bc306c2c2007a3")
(setf (get vino_people_msgs::LicensePlate :datatype-) "vino_people_msgs/LicensePlate")
(setf (get vino_people_msgs::LicensePlate :definition-)
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

string license                     # The license for the detected vehicle in roi
sensor_msgs/RegionOfInterest roi   # region of interest for a vehicle license
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



(provide :vino_people_msgs/LicensePlate "9f2ce3fb55119e4895bc306c2c2007a3")


