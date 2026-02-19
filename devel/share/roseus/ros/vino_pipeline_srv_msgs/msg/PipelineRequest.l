;; Auto-generated. Do not edit!


(when (boundp 'vino_pipeline_srv_msgs::PipelineRequest)
  (if (not (find-package "VINO_PIPELINE_SRV_MSGS"))
    (make-package "VINO_PIPELINE_SRV_MSGS"))
  (shadow 'PipelineRequest (find-package "VINO_PIPELINE_SRV_MSGS")))
(unless (find-package "VINO_PIPELINE_SRV_MSGS::PIPELINEREQUEST")
  (make-package "VINO_PIPELINE_SRV_MSGS::PIPELINEREQUEST"))

(in-package "ROS")
;;//! \htmlinclude PipelineRequest.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vino_pipeline_srv_msgs::PipelineRequest
  :super ros::object
  :slots (_header _cmd _value ))

(defmethod vino_pipeline_srv_msgs::PipelineRequest
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:cmd __cmd) "")
    ((:value __value) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _cmd (string __cmd))
   (setq _value (string __value))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:cmd
   (&optional __cmd)
   (if __cmd (setq _cmd __cmd)) _cmd)
  (:value
   (&optional __value)
   (if __value (setq _value __value)) _value)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _cmd
    4 (length _cmd)
    ;; string _value
    4 (length _value)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _cmd
       (write-long (length _cmd) s) (princ _cmd s)
     ;; string _value
       (write-long (length _value) s) (princ _value s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _cmd
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _cmd (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _value
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _value (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get vino_pipeline_srv_msgs::PipelineRequest :md5sum-) "2a8ecd5cce85d49ac261250a5fd1af7c")
(setf (get vino_pipeline_srv_msgs::PipelineRequest :datatype-) "vino_pipeline_srv_msgs/PipelineRequest")
(setf (get vino_pipeline_srv_msgs::PipelineRequest :definition-)
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
                      
std_msgs/Header header               # Header
string cmd                           # Name of a request action
string value                         # value of an action
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

")



(provide :vino_pipeline_srv_msgs/PipelineRequest "2a8ecd5cce85d49ac261250a5fd1af7c")


