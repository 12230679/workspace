// Auto-generated. Do not edit!

// (in-package vino_people_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let Emotion = require('./Emotion.js');
let AgeGender = require('./AgeGender.js');
let HeadPose = require('./HeadPose.js');
let std_msgs = _finder('std_msgs');
let object_msgs = _finder('object_msgs');

//-----------------------------------------------------------

class PersonsStamped {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.faces = null;
      this.emotions = null;
      this.agegenders = null;
      this.headposes = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('faces')) {
        this.faces = initObj.faces
      }
      else {
        this.faces = [];
      }
      if (initObj.hasOwnProperty('emotions')) {
        this.emotions = initObj.emotions
      }
      else {
        this.emotions = [];
      }
      if (initObj.hasOwnProperty('agegenders')) {
        this.agegenders = initObj.agegenders
      }
      else {
        this.agegenders = [];
      }
      if (initObj.hasOwnProperty('headposes')) {
        this.headposes = initObj.headposes
      }
      else {
        this.headposes = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type PersonsStamped
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [faces]
    // Serialize the length for message field [faces]
    bufferOffset = _serializer.uint32(obj.faces.length, buffer, bufferOffset);
    obj.faces.forEach((val) => {
      bufferOffset = object_msgs.msg.ObjectInBox.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [emotions]
    // Serialize the length for message field [emotions]
    bufferOffset = _serializer.uint32(obj.emotions.length, buffer, bufferOffset);
    obj.emotions.forEach((val) => {
      bufferOffset = Emotion.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [agegenders]
    // Serialize the length for message field [agegenders]
    bufferOffset = _serializer.uint32(obj.agegenders.length, buffer, bufferOffset);
    obj.agegenders.forEach((val) => {
      bufferOffset = AgeGender.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [headposes]
    // Serialize the length for message field [headposes]
    bufferOffset = _serializer.uint32(obj.headposes.length, buffer, bufferOffset);
    obj.headposes.forEach((val) => {
      bufferOffset = HeadPose.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type PersonsStamped
    let len;
    let data = new PersonsStamped(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [faces]
    // Deserialize array length for message field [faces]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.faces = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.faces[i] = object_msgs.msg.ObjectInBox.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [emotions]
    // Deserialize array length for message field [emotions]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.emotions = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.emotions[i] = Emotion.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [agegenders]
    // Deserialize array length for message field [agegenders]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.agegenders = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.agegenders[i] = AgeGender.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [headposes]
    // Deserialize array length for message field [headposes]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.headposes = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.headposes[i] = HeadPose.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    object.faces.forEach((val) => {
      length += object_msgs.msg.ObjectInBox.getMessageSize(val);
    });
    object.emotions.forEach((val) => {
      length += Emotion.getMessageSize(val);
    });
    object.agegenders.forEach((val) => {
      length += AgeGender.getMessageSize(val);
    });
    length += 29 * object.headposes.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'vino_people_msgs/PersonsStamped';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '23f905e00203e47a379428484b51ca3e';
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
    
    std_msgs/Header header
    object_msgs/ObjectInBox[] faces
    vino_people_msgs/Emotion[] emotions
    vino_people_msgs/AgeGender[] agegenders
    vino_people_msgs/HeadPose[] headposes
    
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
    MSG: object_msgs/ObjectInBox
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
    
    # This message can represent a detected object and its region of interest
    Object object                     # detected object
    sensor_msgs/RegionOfInterest roi  # region of interest
    
    ================================================================================
    MSG: object_msgs/Object
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
    
    # This message define the property of detected object
    string object_name  # object name
    float32 probability # probability of detected object
    
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
    
    ================================================================================
    MSG: vino_people_msgs/Emotion
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
    
    string emotion                     # The emotion for the detected face in roi
    sensor_msgs/RegionOfInterest roi   # region of interest for a person's face
    
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
    MSG: vino_people_msgs/HeadPose
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
    
    float32 yaw							# yaw
    float32 pitch						# pitch
    float32 roll						# roll
    sensor_msgs/RegionOfInterest roi 	# region of interest for a person's face
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new PersonsStamped(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.faces !== undefined) {
      resolved.faces = new Array(msg.faces.length);
      for (let i = 0; i < resolved.faces.length; ++i) {
        resolved.faces[i] = object_msgs.msg.ObjectInBox.Resolve(msg.faces[i]);
      }
    }
    else {
      resolved.faces = []
    }

    if (msg.emotions !== undefined) {
      resolved.emotions = new Array(msg.emotions.length);
      for (let i = 0; i < resolved.emotions.length; ++i) {
        resolved.emotions[i] = Emotion.Resolve(msg.emotions[i]);
      }
    }
    else {
      resolved.emotions = []
    }

    if (msg.agegenders !== undefined) {
      resolved.agegenders = new Array(msg.agegenders.length);
      for (let i = 0; i < resolved.agegenders.length; ++i) {
        resolved.agegenders[i] = AgeGender.Resolve(msg.agegenders[i]);
      }
    }
    else {
      resolved.agegenders = []
    }

    if (msg.headposes !== undefined) {
      resolved.headposes = new Array(msg.headposes.length);
      for (let i = 0; i < resolved.headposes.length; ++i) {
        resolved.headposes[i] = HeadPose.Resolve(msg.headposes[i]);
      }
    }
    else {
      resolved.headposes = []
    }

    return resolved;
    }
};

module.exports = PersonsStamped;
