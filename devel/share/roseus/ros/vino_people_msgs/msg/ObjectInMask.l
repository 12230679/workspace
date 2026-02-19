;; Auto-generated. Do not edit!


(when (boundp 'vino_people_msgs::ObjectInMask)
  (if (not (find-package "VINO_PEOPLE_MSGS"))
    (make-package "VINO_PEOPLE_MSGS"))
  (shadow 'ObjectInMask (find-package "VINO_PEOPLE_MSGS")))
(unless (find-package "VINO_PEOPLE_MSGS::OBJECTINMASK")
  (make-package "VINO_PEOPLE_MSGS::OBJECTINMASK"))

(in-package "ROS")
;;//! \htmlinclude ObjectInMask.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))


(defclass vino_people_msgs::ObjectInMask
  :super ros::object
  :slots (_object_name _probability _roi _mask_array ))

(defmethod vino_people_msgs::ObjectInMask
  (:init
   (&key
    ((:object_name __object_name) "")
    ((:probability __probability) 0.0)
    ((:roi __roi) (instance sensor_msgs::RegionOfInterest :init))
    ((:mask_array __mask_array) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _object_name (string __object_name))
   (setq _probability (float __probability))
   (setq _roi __roi)
   (setq _mask_array __mask_array)
   self)
  (:object_name
   (&optional __object_name)
   (if __object_name (setq _object_name __object_name)) _object_name)
  (:probability
   (&optional __probability)
   (if __probability (setq _probability __probability)) _probability)
  (:roi
   (&rest __roi)
   (if (keywordp (car __roi))
       (send* _roi __roi)
     (progn
       (if __roi (setq _roi (car __roi)))
       _roi)))
  (:mask_array
   (&optional __mask_array)
   (if __mask_array (setq _mask_array __mask_array)) _mask_array)
  (:serialization-length
   ()
   (+
    ;; string _object_name
    4 (length _object_name)
    ;; float32 _probability
    4
    ;; sensor_msgs/RegionOfInterest _roi
    (send _roi :serialization-length)
    ;; float32[] _mask_array
    (* 4    (length _mask_array)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _object_name
       (write-long (length _object_name) s) (princ _object_name s)
     ;; float32 _probability
       (sys::poke _probability (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; sensor_msgs/RegionOfInterest _roi
       (send _roi :serialize s)
     ;; float32[] _mask_array
     (write-long (length _mask_array) s)
     (dotimes (i (length _mask_array))
       (sys::poke (elt _mask_array i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _object_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _object_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _probability
     (setq _probability (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; sensor_msgs/RegionOfInterest _roi
     (send _roi :deserialize buf ptr-) (incf ptr- (send _roi :serialization-length))
   ;; float32[] _mask_array
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _mask_array (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _mask_array i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get vino_people_msgs::ObjectInMask :md5sum-) "3e20660197c7e47461dcd1f01d571316")
(setf (get vino_people_msgs::ObjectInMask :datatype-) "vino_people_msgs/ObjectInMask")
(setf (get vino_people_msgs::ObjectInMask :definition-)
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



(provide :vino_people_msgs/ObjectInMask "3e20660197c7e47461dcd1f01d571316")


