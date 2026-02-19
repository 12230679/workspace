;; Auto-generated. Do not edit!


(when (boundp 'vino_pipeline_srv_msgs::Pipeline)
  (if (not (find-package "VINO_PIPELINE_SRV_MSGS"))
    (make-package "VINO_PIPELINE_SRV_MSGS"))
  (shadow 'Pipeline (find-package "VINO_PIPELINE_SRV_MSGS")))
(unless (find-package "VINO_PIPELINE_SRV_MSGS::PIPELINE")
  (make-package "VINO_PIPELINE_SRV_MSGS::PIPELINE"))

(in-package "ROS")
;;//! \htmlinclude Pipeline.msg.html


(defclass vino_pipeline_srv_msgs::Pipeline
  :super ros::object
  :slots (_input _output ))

(defmethod vino_pipeline_srv_msgs::Pipeline
  (:init
   (&key
    ((:input __input) "")
    ((:output __output) "")
    )
   (send-super :init)
   (setq _input (string __input))
   (setq _output (string __output))
   self)
  (:input
   (&optional __input)
   (if __input (setq _input __input)) _input)
  (:output
   (&optional __output)
   (if __output (setq _output __output)) _output)
  (:serialization-length
   ()
   (+
    ;; string _input
    4 (length _input)
    ;; string _output
    4 (length _output)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _input
       (write-long (length _input) s) (princ _input s)
     ;; string _output
       (write-long (length _output) s) (princ _output s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _input
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _input (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _output
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _output (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get vino_pipeline_srv_msgs::Pipeline :md5sum-) "64b3f45a8c54441324c2fb32649123fc")
(setf (get vino_pipeline_srv_msgs::Pipeline :datatype-) "vino_pipeline_srv_msgs/Pipeline")
(setf (get vino_pipeline_srv_msgs::Pipeline :definition-)
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
                      
string input                        # From
string output                       # To

")



(provide :vino_pipeline_srv_msgs/Pipeline "64b3f45a8c54441324c2fb32649123fc")


