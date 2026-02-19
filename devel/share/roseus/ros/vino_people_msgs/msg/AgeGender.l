;; Auto-generated. Do not edit!


(when (boundp 'vino_people_msgs::AgeGender)
  (if (not (find-package "VINO_PEOPLE_MSGS"))
    (make-package "VINO_PEOPLE_MSGS"))
  (shadow 'AgeGender (find-package "VINO_PEOPLE_MSGS")))
(unless (find-package "VINO_PEOPLE_MSGS::AGEGENDER")
  (make-package "VINO_PEOPLE_MSGS::AGEGENDER"))

(in-package "ROS")
;;//! \htmlinclude AgeGender.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass vino_people_msgs::AgeGender
  :super ros::object
  :slots (_age _gender _gender_confidence _roi ))

(defmethod vino_people_msgs::AgeGender
  (:init
   (&key
    ((:age __age) 0.0)
    ((:gender __gender) "")
    ((:gender_confidence __gender_confidence) 0.0)
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    )
   (send-super :init)
   (setq _age (float __age))
   (setq _gender (string __gender))
   (setq _gender_confidence (float __gender_confidence))
   (setq _roi __roi)
   self)
  (:age
   (&optional __age)
   (if __age (setq _age __age)) _age)
  (:gender
   (&optional __gender)
   (if __gender (setq _gender __gender)) _gender)
  (:gender_confidence
   (&optional __gender_confidence)
   (if __gender_confidence (setq _gender_confidence __gender_confidence)) _gender_confidence)
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
    ;; float32 _age
    4
    ;; string _gender
    4 (length _gender)
    ;; float32 _gender_confidence
    4
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _age
       (sys::poke _age (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; string _gender
       (write-long (length _gender) s) (princ _gender s)
     ;; float32 _gender_confidence
       (sys::poke _gender_confidence (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _age
     (setq _age (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; string _gender
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _gender (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _gender_confidence
     (setq _gender_confidence (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;;
   self)
  )

(setf (get vino_people_msgs::AgeGender :md5sum-) "25ec0e7174072bb242beb26804c0c4ae")
(setf (get vino_people_msgs::AgeGender :datatype-) "vino_people_msgs/AgeGender")
(setf (get vino_people_msgs::AgeGender :definition-)
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



(provide :vino_people_msgs/AgeGender "25ec0e7174072bb242beb26804c0c4ae")


