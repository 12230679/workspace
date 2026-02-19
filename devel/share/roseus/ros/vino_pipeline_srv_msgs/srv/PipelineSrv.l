;; Auto-generated. Do not edit!


(when (boundp 'vino_pipeline_srv_msgs::PipelineSrv)
  (if (not (find-package "VINO_PIPELINE_SRV_MSGS"))
    (make-package "VINO_PIPELINE_SRV_MSGS"))
  (shadow 'PipelineSrv (find-package "VINO_PIPELINE_SRV_MSGS")))
(unless (find-package "VINO_PIPELINE_SRV_MSGS::PIPELINESRV")
  (make-package "VINO_PIPELINE_SRV_MSGS::PIPELINESRV"))
(unless (find-package "VINO_PIPELINE_SRV_MSGS::PIPELINESRVREQUEST")
  (make-package "VINO_PIPELINE_SRV_MSGS::PIPELINESRVREQUEST"))
(unless (find-package "VINO_PIPELINE_SRV_MSGS::PIPELINESRVRESPONSE")
  (make-package "VINO_PIPELINE_SRV_MSGS::PIPELINESRVRESPONSE"))

(in-package "ROS")





(defclass vino_pipeline_srv_msgs::PipelineSrvRequest
  :super ros::object
  :slots (_pipeline_request ))

(defmethod vino_pipeline_srv_msgs::PipelineSrvRequest
  (:init
   (&key
    ((:pipeline_request __pipeline_request) (instance vino_pipeline_srv_msgs::PipelineRequest :init))
    )
   (send-super :init)
   (setq _pipeline_request __pipeline_request)
   self)
  (:pipeline_request
   (&rest __pipeline_request)
   (if (keywordp (car __pipeline_request))
       (send* _pipeline_request __pipeline_request)
     (progn
       (if __pipeline_request (setq _pipeline_request (car __pipeline_request)))
       _pipeline_request)))
  (:serialization-length
   ()
   (+
    ;; vino_pipeline_srv_msgs/PipelineRequest _pipeline_request
    (send _pipeline_request :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vino_pipeline_srv_msgs/PipelineRequest _pipeline_request
       (send _pipeline_request :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vino_pipeline_srv_msgs/PipelineRequest _pipeline_request
     (send _pipeline_request :deserialize buf ptr-) (incf ptr- (send _pipeline_request :serialization-length))
   ;;
   self)
  )

(defclass vino_pipeline_srv_msgs::PipelineSrvResponse
  :super ros::object
  :slots (_pipelines ))

(defmethod vino_pipeline_srv_msgs::PipelineSrvResponse
  (:init
   (&key
    ((:pipelines __pipelines) ())
    )
   (send-super :init)
   (setq _pipelines __pipelines)
   self)
  (:pipelines
   (&rest __pipelines)
   (if (keywordp (car __pipelines))
       (send* _pipelines __pipelines)
     (progn
       (if __pipelines (setq _pipelines (car __pipelines)))
       _pipelines)))
  (:serialization-length
   ()
   (+
    ;; vino_pipeline_srv_msgs/Pipelines[] _pipelines
    (apply #'+ (send-all _pipelines :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; vino_pipeline_srv_msgs/Pipelines[] _pipelines
     (write-long (length _pipelines) s)
     (dolist (elem _pipelines)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; vino_pipeline_srv_msgs/Pipelines[] _pipelines
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _pipelines (let (r) (dotimes (i n) (push (instance vino_pipeline_srv_msgs::Pipelines :init) r)) r))
     (dolist (elem- _pipelines)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(defclass vino_pipeline_srv_msgs::PipelineSrv
  :super ros::object
  :slots ())

(setf (get vino_pipeline_srv_msgs::PipelineSrv :md5sum-) "cf091771f8906824a3cec7a8b00e6751")
(setf (get vino_pipeline_srv_msgs::PipelineSrv :datatype-) "vino_pipeline_srv_msgs/PipelineSrv")
(setf (get vino_pipeline_srv_msgs::PipelineSrv :request) vino_pipeline_srv_msgs::PipelineSrvRequest)
(setf (get vino_pipeline_srv_msgs::PipelineSrv :response) vino_pipeline_srv_msgs::PipelineSrvResponse)

(defmethod vino_pipeline_srv_msgs::PipelineSrvRequest
  (:response () (instance vino_pipeline_srv_msgs::PipelineSrvResponse :init)))

(setf (get vino_pipeline_srv_msgs::PipelineSrvRequest :md5sum-) "cf091771f8906824a3cec7a8b00e6751")
(setf (get vino_pipeline_srv_msgs::PipelineSrvRequest :datatype-) "vino_pipeline_srv_msgs/PipelineSrvRequest")
(setf (get vino_pipeline_srv_msgs::PipelineSrvRequest :definition-)
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

PipelineRequest pipeline_request          # request content of pipeline service

================================================================================
MSG: vino_pipeline_srv_msgs/PipelineRequest
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
---
Pipelines[] pipelines    # return all pipeline status


================================================================================
MSG: vino_pipeline_srv_msgs/Pipelines
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

(setf (get vino_pipeline_srv_msgs::PipelineSrvResponse :md5sum-) "cf091771f8906824a3cec7a8b00e6751")
(setf (get vino_pipeline_srv_msgs::PipelineSrvResponse :datatype-) "vino_pipeline_srv_msgs/PipelineSrvResponse")
(setf (get vino_pipeline_srv_msgs::PipelineSrvResponse :definition-)
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

PipelineRequest pipeline_request          # request content of pipeline service

================================================================================
MSG: vino_pipeline_srv_msgs/PipelineRequest
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
---
Pipelines[] pipelines    # return all pipeline status


================================================================================
MSG: vino_pipeline_srv_msgs/Pipelines
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



(provide :vino_pipeline_srv_msgs/PipelineSrv "cf091771f8906824a3cec7a8b00e6751")


