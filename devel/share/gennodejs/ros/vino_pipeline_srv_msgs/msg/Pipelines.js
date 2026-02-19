// Auto-generated. Do not edit!

// (in-package vino_pipeline_srv_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Pipeline = require('./Pipeline.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class Pipelines {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.name = null;
      this.connections = null;
      this.running_status = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('connections')) {
        this.connections = initObj.connections
      }
      else {
        this.connections = [];
      }
      if (initObj.hasOwnProperty('running_status')) {
        this.running_status = initObj.running_status
      }
      else {
        this.running_status = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Pipelines
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [connections]
    // Serialize the length for message field [connections]
    bufferOffset = _serializer.uint32(obj.connections.length, buffer, bufferOffset);
    obj.connections.forEach((val) => {
      bufferOffset = Pipeline.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [running_status]
    bufferOffset = _serializer.string(obj.running_status, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Pipelines
    let len;
    let data = new Pipelines(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [connections]
    // Deserialize array length for message field [connections]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.connections = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.connections[i] = Pipeline.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [running_status]
    data.running_status = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.name);
    object.connections.forEach((val) => {
      length += Pipeline.getMessageSize(val);
    });
    length += _getByteLength(object.running_status);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vino_pipeline_srv_msgs/Pipelines';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a4c160876f63dd62c02cb0f61f036ec3';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new Pipelines(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.connections !== undefined) {
      resolved.connections = new Array(msg.connections.length);
      for (let i = 0; i < resolved.connections.length; ++i) {
        resolved.connections[i] = Pipeline.Resolve(msg.connections[i]);
      }
    }
    else {
      resolved.connections = []
    }

    if (msg.running_status !== undefined) {
      resolved.running_status = msg.running_status;
    }
    else {
      resolved.running_status = ''
    }

    return resolved;
    }
};

module.exports = Pipelines;
