;; Auto-generated. Do not edit!


(when (boundp 'vino_people_msgs::ObjectsInMasks)
  (if (not (find-package "VINO_PEOPLE_MSGS"))
    (make-package "VINO_PEOPLE_MSGS"))
  (shadow 'ObjectsInMasks (find-package "VINO_PEOPLE_MSGS")))
(unless (find-package "VINO_PEOPLE_MSGS::OBJECTSINMASKS")
  (make-package "VINO_PEOPLE_MSGS::OBJECTSINMASKS"))

(in-package "ROS")
;;//! \htmlinclude ObjectsInMasks.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vino_people_msgs::ObjectsInMasks
  :super ros::object
  :slots (_header _objects_vector ))

(defmethod vino_people_msgs::ObjectsInMasks
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:objects_vector __objects_vector) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _objects_vector __objects_vector)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:objects_vector
   (&rest __objects_vector)
   (if (keywordp (car __objects_vector))
       (send* _objects_vector __objects_vector)
     (progn
       (if __objects_vector (setq _objects_vector (car __objects_vector)))
       _objects_vector)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; vino_people_msgs/ObjectInMask[] _objects_vector
    (apply #'+ (send-all _objects_vector :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; vino_people_msgs/ObjectInMask[] _objects_vector
     (write-long (length _objects_vector) s)
     (dolist (elem _objects_vector)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; vino_people_msgs/ObjectInMask[] _objects_vector
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _objects_vector (let (r) (dotimes (i n) (push (instance vino_people_msgs::ObjectInMask :init) r)) r))
     (dolist (elem- _objects_vector)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get vino_people_msgs::ObjectsInMasks :md5sum-) "7c8f10593ff5c0e4919e7a9252d7fd8d")
(setf (get vino_people_msgs::ObjectsInMasks :datatype-) "vino_people_msgs/ObjectsInMasks")
(setf (get vino_people_msgs::ObjectsInMasks :definition-)
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



(provide :vino_people_msgs/ObjectsInMasks "7c8f10593ff5c0e4919e7a9252d7fd8d")


