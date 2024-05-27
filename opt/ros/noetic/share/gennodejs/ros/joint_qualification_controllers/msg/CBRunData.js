// Auto-generated. Do not edit!

// (in-package joint_qualification_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CBPositionData = require('./CBPositionData.js');

//-----------------------------------------------------------

class CBRunData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lift_position = null;
      this.flex_data = null;
    }
    else {
      if (initObj.hasOwnProperty('lift_position')) {
        this.lift_position = initObj.lift_position
      }
      else {
        this.lift_position = 0.0;
      }
      if (initObj.hasOwnProperty('flex_data')) {
        this.flex_data = initObj.flex_data
      }
      else {
        this.flex_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CBRunData
    // Serialize message field [lift_position]
    bufferOffset = _serializer.float32(obj.lift_position, buffer, bufferOffset);
    // Serialize message field [flex_data]
    // Serialize the length for message field [flex_data]
    bufferOffset = _serializer.uint32(obj.flex_data.length, buffer, bufferOffset);
    obj.flex_data.forEach((val) => {
      bufferOffset = CBPositionData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CBRunData
    let len;
    let data = new CBRunData(null);
    // Deserialize message field [lift_position]
    data.lift_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [flex_data]
    // Deserialize array length for message field [flex_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.flex_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.flex_data[i] = CBPositionData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.flex_data.forEach((val) => {
      length += CBPositionData.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joint_qualification_controllers/CBRunData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '16bad2df24f5cffc934c2d3ae9bb08e6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 lift_position
    CBPositionData[] flex_data # Same lift position, diff flex positions
    ================================================================================
    MSG: joint_qualification_controllers/CBPositionData
    float32 flex_position
    JointPositionData lift_hold
    JointPositionData flex_hold
    
    ================================================================================
    MSG: joint_qualification_controllers/JointPositionData
    float32[] time
    float32[] position
    float32[] velocity
    float32[] effort
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new CBRunData(null);
    if (msg.lift_position !== undefined) {
      resolved.lift_position = msg.lift_position;
    }
    else {
      resolved.lift_position = 0.0
    }

    if (msg.flex_data !== undefined) {
      resolved.flex_data = new Array(msg.flex_data.length);
      for (let i = 0; i < resolved.flex_data.length; ++i) {
        resolved.flex_data[i] = CBPositionData.Resolve(msg.flex_data[i]);
      }
    }
    else {
      resolved.flex_data = []
    }

    return resolved;
    }
};

module.exports = CBRunData;
