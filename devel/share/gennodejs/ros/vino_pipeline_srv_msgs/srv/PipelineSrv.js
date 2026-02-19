// Auto-generated. Do not edit!

// (in-package vino_pipeline_srv_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let PipelineRequest = require('../msg/PipelineRequest.js');

//-----------------------------------------------------------

let Pipelines = require('../msg/Pipelines.js');

//-----------------------------------------------------------

class PipelineSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pipeline_request = null;
    }
    else {
      if (initObj.hasOwnProperty('pipeline_request')) {
        this.pipeline_request = initObj.pipeline_request
      }
      else {
        this.pipeline_request = new PipelineRequest();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PipelineSrvRequest
    // Serialize message field [pipeline_request]
    bufferOffset = PipelineRequest.serialize(obj.pipeline_request, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PipelineSrvRequest
    let len;
    let data = new PipelineSrvRequest(null);
    // Deserialize message field [pipeline_request]
    data.pipeline_request = PipelineRequest.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += PipelineRequest.getMessageSize(object.pipeline_request);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vino_pipeline_srv_msgs/PipelineSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7539918e21799979d4c12726d877ad72';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Copyright (c) 2017 Intel Corporation
    #
    # Licensed under the Apache License, Version 2.0 (the "License");
    # you may not use this file except in compliance with the License.
    # You may obtain a copy of the License at
    #
    #      http://www.apache.org/licenses/LICENSE-2.0
    #
    # Unless required by applicable law or agreed to in writing, software
    # distributed under the License is distributed on an "AS IS" BASIS,
    # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    # See the License for the specific language governing permissions and
    # limitations under the License.
    
    PipelineRequest pipeline_request          # request content of pipeline service
    
    ================================================================================
    MSG: vino_pipeline_srv_msgs/PipelineRequest
    # Copyright (c) 2018 Intel Corporation
    #
    # Licensed under the Apache License, Version 2.0 (the "License");
    # you may not use this file except in compliance with the License.
    # You may obtain a copy of the License at
    #
    #      http://www.apache.org/licenses/LICENSE-2.0
    #
    # Unless required by applicable law or agreed to in writing, software
    # distributed under the License is distributed on an "AS IS" BASIS,
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PipelineSrvRequest(null);
    if (msg.pipeline_request !== undefined) {
      resolved.pipeline_request = PipelineRequest.Resolve(msg.pipeline_request)
    }
    else {
      resolved.pipeline_request = new PipelineRequest()
    }

    return resolved;
    }
};

class PipelineSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.pipelines = null;
    }
    else {
      if (initObj.hasOwnProperty('pipelines')) {
        this.pipelines = initObj.pipelines
      }
      else {
        this.pipelines = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PipelineSrvResponse
    // Serialize message field [pipelines]
    // Serialize the length for message field [pipelines]
    bufferOffset = _serializer.uint32(obj.pipelines.length, buffer, bufferOffset);
    obj.pipelines.forEach((val) => {
      bufferOffset = Pipelines.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PipelineSrvResponse
    let len;
    let data = new PipelineSrvResponse(null);
    // Deserialize message field [pipelines]
    // Deserialize array length for message field [pipelines]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.pipelines = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.pipelines[i] = Pipelines.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.pipelines.forEach((val) => {
      length += Pipelines.getMessageSize(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vino_pipeline_srv_msgs/PipelineSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a26671ca8ad9d84c717232b93bbb1720';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Pipelines[] pipelines    # return all pipeline status
    
    
    ================================================================================
    MSG: vino_pipeline_srv_msgs/Pipelines
    # Copyright (c) 2018 Intel Corporation
    #
    # Licensed under the Apache License, Version 2.0 (the "License");
    # you may not use this file except in compliance with the License.
    # You may obtain a copy of the License at
    #
    #      http://www.apache.org/licenses/LICENSE-2.0
    #
    # Unless required by applicable law or agreed to in writing, software
    # distributed under the License is distributed on an "AS IS" BASIS,
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
    # Licensed under the Apache License, Version 2.0 (the "License");
    # you may not use this file except in compliance with the License.
    # You may obtain a copy of the License at
    #
    #      http://www.apache.org/licenses/LICENSE-2.0
    #
    # Unless required by applicable law or agreed to in writing, software
    # distributed under the License is distributed on an "AS IS" BASIS,
    # WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
    # See the License for the specific language governing permissions and
    # limitations under the License.
                          
    string input                        # From
    string output                       # To
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PipelineSrvResponse(null);
    if (msg.pipelines !== undefined) {
      resolved.pipelines = new Array(msg.pipelines.length);
      for (let i = 0; i < resolved.pipelines.length; ++i) {
        resolved.pipelines[i] = Pipelines.Resolve(msg.pipelines[i]);
      }
    }
    else {
      resolved.pipelines = []
    }

    return resolved;
    }
};

module.exports = {
  Request: PipelineSrvRequest,
  Response: PipelineSrvResponse,
  md5sum() { return 'cf091771f8906824a3cec7a8b00e6751'; },
  datatype() { return 'vino_pipeline_srv_msgs/PipelineSrv'; }
};
