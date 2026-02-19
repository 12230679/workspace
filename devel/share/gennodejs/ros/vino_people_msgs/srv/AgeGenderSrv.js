// Auto-generated. Do not edit!

// (in-package vino_people_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let AgeGenderStamped = require('../msg/AgeGenderStamped.js');

//-----------------------------------------------------------

class AgeGenderSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.image_path = null;
    }
    else {
      if (initObj.hasOwnProperty('image_path')) {
        this.image_path = initObj.image_path
      }
      else {
        this.image_path = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgeGenderSrvRequest
    // Serialize message field [image_path]
    bufferOffset = _serializer.string(obj.image_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgeGenderSrvRequest
    let len;
    let data = new AgeGenderSrvRequest(null);
    // Deserialize message field [image_path]
    data.image_path = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.image_path);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vino_people_msgs/AgeGenderSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65568c775bfbc96c6265c3d13d7e1a07';
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
    
    string image_path            # input: an image
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgeGenderSrvRequest(null);
    if (msg.image_path !== undefined) {
      resolved.image_path = msg.image_path;
    }
    else {
      resolved.image_path = ''
    }

    return resolved;
    }
};

class AgeGenderSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.age_gender = null;
    }
    else {
      if (initObj.hasOwnProperty('age_gender')) {
        this.age_gender = initObj.age_gender
      }
      else {
        this.age_gender = new AgeGenderStamped();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type AgeGenderSrvResponse
    // Serialize message field [age_gender]
    bufferOffset = AgeGenderStamped.serialize(obj.age_gender, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type AgeGenderSrvResponse
    let len;
    let data = new AgeGenderSrvResponse(null);
    // Deserialize message field [age_gender]
    data.age_gender = AgeGenderStamped.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += AgeGenderStamped.getMessageSize(object.age_gender);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vino_people_msgs/AgeGenderSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7812b69932617aa95c8437f5cd688b15';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    AgeGenderStamped age_gender  # output: age and gender result
    
    
    
    ================================================================================
    MSG: vino_people_msgs/AgeGenderStamped
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
    
    std_msgs/Header header
    vino_people_msgs/AgeGender[] objects
    
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
    MSG: vino_people_msgs/AgeGender
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
    
    float32 age                        # age: 0~100
    string gender                      # "Male" or "Female"
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
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new AgeGenderSrvResponse(null);
    if (msg.age_gender !== undefined) {
      resolved.age_gender = AgeGenderStamped.Resolve(msg.age_gender)
    }
    else {
      resolved.age_gender = new AgeGenderStamped()
    }

    return resolved;
    }
};

module.exports = {
  Request: AgeGenderSrvRequest,
  Response: AgeGenderSrvResponse,
  md5sum() { return 'cb3ae0f4f6ae2edd84d46ae3ce84e382'; },
  datatype() { return 'vino_people_msgs/AgeGenderSrv'; }
};
