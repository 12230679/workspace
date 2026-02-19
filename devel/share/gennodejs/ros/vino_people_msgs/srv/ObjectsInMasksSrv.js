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

let ObjectsInMasks = require('../msg/ObjectsInMasks.js');

//-----------------------------------------------------------

class ObjectsInMasksSrvRequest {
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
    // Serializes a message object of type ObjectsInMasksSrvRequest
    // Serialize message field [image_path]
    bufferOffset = _serializer.string(obj.image_path, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectsInMasksSrvRequest
    let len;
    let data = new ObjectsInMasksSrvRequest(null);
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
    return 'vino_people_msgs/ObjectsInMasksSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '65568c775bfbc96c6265c3d13d7e1a07';
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
    
    # This message can represent objects detected and their bounding-boxes in a frame
    
    string image_path       # input: an image
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ObjectsInMasksSrvRequest(null);
    if (msg.image_path !== undefined) {
      resolved.image_path = msg.image_path;
    }
    else {
      resolved.image_path = ''
    }

    return resolved;
    }
};

class ObjectsInMasksSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.segmentation = null;
    }
    else {
      if (initObj.hasOwnProperty('segmentation')) {
        this.segmentation = initObj.segmentation
      }
      else {
        this.segmentation = new ObjectsInMasks();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ObjectsInMasksSrvResponse
    // Serialize message field [segmentation]
    bufferOffset = ObjectsInMasks.serialize(obj.segmentation, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ObjectsInMasksSrvResponse
    let len;
    let data = new ObjectsInMasksSrvResponse(null);
    // Deserialize message field [segmentation]
    data.segmentation = ObjectsInMasks.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += ObjectsInMasks.getMessageSize(object.segmentation);
    return length;
  }

  static datatype() {
    // Returns string type for a service object
    return 'vino_people_msgs/ObjectsInMasksSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '8924069283ccaca38dfc1b5e686d7b0d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    ObjectsInMasks segmentation   # ObjectInBox array
    
    
    ================================================================================
    MSG: vino_people_msgs/ObjectsInMasks
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
    const resolved = new ObjectsInMasksSrvResponse(null);
    if (msg.segmentation !== undefined) {
      resolved.segmentation = ObjectsInMasks.Resolve(msg.segmentation)
    }
    else {
      resolved.segmentation = new ObjectsInMasks()
    }

    return resolved;
    }
};

module.exports = {
  Request: ObjectsInMasksSrvRequest,
  Response: ObjectsInMasksSrvResponse,
  md5sum() { return '2eb0e72b76147af62838f5a194b1b59d'; },
  datatype() { return 'vino_people_msgs/ObjectsInMasksSrv'; }
};
