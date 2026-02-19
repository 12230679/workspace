; Auto-generated. Do not edit!


(cl:in-package vino_pipeline_srv_msgs-msg)


;//! \htmlinclude Pipeline.msg.html

(cl:defclass <Pipeline> (roslisp-msg-protocol:ros-message)
  ((input
    :reader input
    :initarg :input
    :type cl:string
    :initform "")
   (output
    :reader output
    :initarg :output
    :type cl:string
    :initform ""))
)

(cl:defclass Pipeline (<Pipeline>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <Pipeline>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'Pipeline)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name vino_pipeline_srv_msgs-msg:<Pipeline> is deprecated: use vino_pipeline_srv_msgs-msg:Pipeline instead.")))

(cl:ensure-generic-function 'input-val :lambda-list '(m))
(cl:defmethod input-val ((m <Pipeline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_pipeline_srv_msgs-msg:input-val is deprecated.  Use vino_pipeline_srv_msgs-msg:input instead.")
  (input m))

(cl:ensure-generic-function 'output-val :lambda-list '(m))
(cl:defmethod output-val ((m <Pipeline>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader vino_pipeline_srv_msgs-msg:output-val is deprecated.  Use vino_pipeline_srv_msgs-msg:output instead.")
  (output m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <Pipeline>) ostream)
  "Serializes a message object of type '<Pipeline>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'input))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'input))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'output))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'output))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <Pipeline>) istream)
  "Deserializes a message object of type '<Pipeline>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'input) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'input) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'output) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'output) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<Pipeline>)))
  "Returns string type for a message object of type '<Pipeline>"
  "vino_pipeline_srv_msgs/Pipeline")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'Pipeline)))
  "Returns string type for a message object of type 'Pipeline"
  "vino_pipeline_srv_msgs/Pipeline")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<Pipeline>)))
  "Returns md5sum for a message object of type '<Pipeline>"
  "64b3f45a8c54441324c2fb32649123fc")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'Pipeline)))
  "Returns md5sum for a message object of type 'Pipeline"
  "64b3f45a8c54441324c2fb32649123fc")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<Pipeline>)))
  "Returns full string definition for message of type '<Pipeline>"
  (cl:format cl:nil "# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%string input                        # From~%string output                       # To~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'Pipeline)))
  "Returns full string definition for message of type 'Pipeline"
  (cl:format cl:nil "# Copyright (c) 2018 Intel Corporation~%#~%# Licensed under the Apache License, Version 2.0 (the \"License\");~%# you may not use this file except in compliance with the License.~%# You may obtain a copy of the License at~%#~%#      http://www.apache.org/licenses/LICENSE-2.0~%#~%# Unless required by applicable law or agreed to in writing, software~%# distributed under the License is distributed on an \"AS IS\" BASIS,~%# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.~%# See the License for the specific language governing permissions and~%# limitations under the License.~%                      ~%string input                        # From~%string output                       # To~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <Pipeline>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'input))
     4 (cl:length (cl:slot-value msg 'output))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <Pipeline>))
  "Converts a ROS message object to a list"
  (cl:list 'Pipeline
    (cl:cons ':input (input msg))
    (cl:cons ':output (output msg))
))
