;; Auto-generated. Do not edit!


(when (boundp 'vino_pipeline_srv_msgs::Pipelines)
  (if (not (find-package "VINO_PIPELINE_SRV_MSGS"))
    (make-package "VINO_PIPELINE_SRV_MSGS"))
  (shadow 'Pipelines (find-package "VINO_PIPELINE_SRV_MSGS")))
(unless (find-package "VINO_PIPELINE_SRV_MSGS::PIPELINES")
  (make-package "VINO_PIPELINE_SRV_MSGS::PIPELINES"))

(in-package "ROS")
;;//! \htmlinclude Pipelines.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass vino_pipeline_srv_msgs::Pipelines
  :super ros::object
  :slots (_header _name _connections _running_status ))

(defmethod vino_pipeline_srv_msgs::Pipelines
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:name __name) "")
    ((:connections __connections) ())
    ((:running_status __running_status) "")
    )
   (send-super :init)
   (setq _header __header)
   (setq _name (string __name))
   (setq _connections __connections)
   (setq _running_status (string __running_status))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:connections
   (&rest __connections)
   (if (keywordp (car __connections))
       (send* _connections __connections)
     (progn
       (if __connections (setq _connections (car __connections)))
       _connections)))
  (:running_status
   (&optional __running_status)
   (if __running_status (setq _running_status __running_status)) _running_status)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _name
    4 (length _name)
    ;; vino_pipeline_srv_msgs/Pipeline[] _connections
    (apply #'+ (send-all _connections :serialization-length)) 4
    ;; string _running_status
    4 (length _running_status)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; vino_pipeline_srv_msgs/Pipeline[] _connections
     (write-long (length _connections) s)
     (dolist (elem _connections)
       (send elem :serialize s)
       )
     ;; string _running_status
       (write-long (length _running_status) s) (princ _running_status s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; vino_pipeline_srv_msgs/Pipeline[] _connections
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _connections (let (r) (dotimes (i n) (push (instance vino_pipeline_srv_msgs::Pipeline :init) r)) r))
     (dolist (elem- _connections)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; string _running_status
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _running_status (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get vino_pipeline_srv_msgs::Pipelines :md5sum-) "a4c160876f63dd62c02cb0f61f036ec3")
(setf (get vino_pipeline_srv_msgs::Pipelines :datatype-) "vino_pipeline_srv_msgs/Pipelines")
(setf (get vino_pipeline_srv_msgs::Pipelines :definition-)
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
                      
std_msgs/Header header             # Header
string name                        # Name of pipeline
Pipeline[] connections             # connection map of a pipeline
string running_status              # Pipeline running state
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
MSG: vino_pipeline_srv_msgs/Pipeline
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
                      
string input                        # From
string output                       # To

")



(provide :vino_pipeline_srv_msgs/Pipelines "a4c160876f63dd62c02cb0f61f036ec3")


