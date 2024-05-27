// Auto-generated. Do not edit!

// (in-package joint_qualification_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let HysteresisRun = require('./HysteresisRun.js');

//-----------------------------------------------------------

class HysteresisData2 {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_name = null;
      this.runs = null;
      this.arg_name = null;
      this.arg_value = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_name')) {
        this.joint_name = initObj.joint_name
      }
      else {
        this.joint_name = '';
      }
      if (initObj.hasOwnProperty('runs')) {
        this.runs = initObj.runs
      }
      else {
        this.runs = [];
      }
      if (initObj.hasOwnProperty('arg_name')) {
        this.arg_name = initObj.arg_name
      }
      else {
        this.arg_name = [];
      }
      if (initObj.hasOwnProperty('arg_value')) {
        this.arg_value = initObj.arg_value
      }
      else {
        this.arg_value = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type HysteresisData2
    // Serialize message field [joint_name]
    bufferOffset = _serializer.string(obj.joint_name, buffer, bufferOffset);
    // Serialize message field [runs]
    // Serialize the length for message field [runs]
    bufferOffset = _serializer.uint32(obj.runs.length, buffer, bufferOffset);
    obj.runs.forEach((val) => {
      bufferOffset = HysteresisRun.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [arg_name]
    bufferOffset = _arraySerializer.string(obj.arg_name, buffer, bufferOffset, null);
    // Serialize message field [arg_value]
    bufferOffset = _arraySerializer.float32(obj.arg_value, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HysteresisData2
    let len;
    let data = new HysteresisData2(null);
    // Deserialize message field [joint_name]
    data.joint_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [runs]
    // Deserialize array length for message field [runs]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.runs = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.runs[i] = HysteresisRun.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [arg_name]
    data.arg_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [arg_value]
    data.arg_value = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.joint_name);
    object.runs.forEach((val) => {
      length += HysteresisRun.getMessageSize(val);
    });
    object.arg_name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.arg_value.length;
    return length + 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joint_qualification_controllers/HysteresisData2';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e58eacdd7f3ac3c02f9d494da1e59355';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string joint_name
    
    HysteresisRun[] runs
    
    string[] arg_name
    float32[] arg_value
    
    ================================================================================
    MSG: joint_qualification_controllers/HysteresisRun
    float32[] time
    float32[] effort
    float32[] position
    float32[] velocity
    uint8 dir
    uint8 UP=0
    uint8 DOWN=1
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HysteresisData2(null);
    if (msg.joint_name !== undefined) {
      resolved.joint_name = msg.joint_name;
    }
    else {
      resolved.joint_name = ''
    }

    if (msg.runs !== undefined) {
      resolved.runs = new Array(msg.runs.length);
      for (let i = 0; i < resolved.runs.length; ++i) {
        resolved.runs[i] = HysteresisRun.Resolve(msg.runs[i]);
      }
    }
    else {
      resolved.runs = []
    }

    if (msg.arg_name !== undefined) {
      resolved.arg_name = msg.arg_name;
    }
    else {
      resolved.arg_name = []
    }

    if (msg.arg_value !== undefined) {
      resolved.arg_value = msg.arg_value;
    }
    else {
      resolved.arg_value = []
    }

    return resolved;
    }
};

module.exports = HysteresisData2;
