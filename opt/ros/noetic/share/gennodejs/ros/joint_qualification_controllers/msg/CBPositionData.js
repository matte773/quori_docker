// Auto-generated. Do not edit!

// (in-package joint_qualification_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointPositionData = require('./JointPositionData.js');

//-----------------------------------------------------------

class CBPositionData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flex_position = null;
      this.lift_hold = null;
      this.flex_hold = null;
    }
    else {
      if (initObj.hasOwnProperty('flex_position')) {
        this.flex_position = initObj.flex_position
      }
      else {
        this.flex_position = 0.0;
      }
      if (initObj.hasOwnProperty('lift_hold')) {
        this.lift_hold = initObj.lift_hold
      }
      else {
        this.lift_hold = new JointPositionData();
      }
      if (initObj.hasOwnProperty('flex_hold')) {
        this.flex_hold = initObj.flex_hold
      }
      else {
        this.flex_hold = new JointPositionData();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CBPositionData
    // Serialize message field [flex_position]
    bufferOffset = _serializer.float32(obj.flex_position, buffer, bufferOffset);
    // Serialize message field [lift_hold]
    bufferOffset = JointPositionData.serialize(obj.lift_hold, buffer, bufferOffset);
    // Serialize message field [flex_hold]
    bufferOffset = JointPositionData.serialize(obj.flex_hold, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CBPositionData
    let len;
    let data = new CBPositionData(null);
    // Deserialize message field [flex_position]
    data.flex_position = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [lift_hold]
    data.lift_hold = JointPositionData.deserialize(buffer, bufferOffset);
    // Deserialize message field [flex_hold]
    data.flex_hold = JointPositionData.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += JointPositionData.getMessageSize(object.lift_hold);
    length += JointPositionData.getMessageSize(object.flex_hold);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joint_qualification_controllers/CBPositionData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e7b62743b80e10dde08aea881b6ccf7b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new CBPositionData(null);
    if (msg.flex_position !== undefined) {
      resolved.flex_position = msg.flex_position;
    }
    else {
      resolved.flex_position = 0.0
    }

    if (msg.lift_hold !== undefined) {
      resolved.lift_hold = JointPositionData.Resolve(msg.lift_hold)
    }
    else {
      resolved.lift_hold = new JointPositionData()
    }

    if (msg.flex_hold !== undefined) {
      resolved.flex_hold = JointPositionData.Resolve(msg.flex_hold)
    }
    else {
      resolved.flex_hold = new JointPositionData()
    }

    return resolved;
    }
};

module.exports = CBPositionData;
