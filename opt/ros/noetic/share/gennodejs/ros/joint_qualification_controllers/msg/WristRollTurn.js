// Auto-generated. Do not edit!

// (in-package joint_qualification_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class WristRollTurn {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.time = null;
      this.flex_position = null;
      this.flex_effort = null;
      this.flex_cmd = null;
      this.roll_position = null;
      this.roll_effort = null;
      this.roll_cmd = null;
      this.roll_velocity = null;
    }
    else {
      if (initObj.hasOwnProperty('time')) {
        this.time = initObj.time
      }
      else {
        this.time = [];
      }
      if (initObj.hasOwnProperty('flex_position')) {
        this.flex_position = initObj.flex_position
      }
      else {
        this.flex_position = [];
      }
      if (initObj.hasOwnProperty('flex_effort')) {
        this.flex_effort = initObj.flex_effort
      }
      else {
        this.flex_effort = [];
      }
      if (initObj.hasOwnProperty('flex_cmd')) {
        this.flex_cmd = initObj.flex_cmd
      }
      else {
        this.flex_cmd = [];
      }
      if (initObj.hasOwnProperty('roll_position')) {
        this.roll_position = initObj.roll_position
      }
      else {
        this.roll_position = [];
      }
      if (initObj.hasOwnProperty('roll_effort')) {
        this.roll_effort = initObj.roll_effort
      }
      else {
        this.roll_effort = [];
      }
      if (initObj.hasOwnProperty('roll_cmd')) {
        this.roll_cmd = initObj.roll_cmd
      }
      else {
        this.roll_cmd = [];
      }
      if (initObj.hasOwnProperty('roll_velocity')) {
        this.roll_velocity = initObj.roll_velocity
      }
      else {
        this.roll_velocity = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WristRollTurn
    // Serialize message field [time]
    bufferOffset = _arraySerializer.float32(obj.time, buffer, bufferOffset, null);
    // Serialize message field [flex_position]
    bufferOffset = _arraySerializer.float32(obj.flex_position, buffer, bufferOffset, null);
    // Serialize message field [flex_effort]
    bufferOffset = _arraySerializer.float32(obj.flex_effort, buffer, bufferOffset, null);
    // Serialize message field [flex_cmd]
    bufferOffset = _arraySerializer.float32(obj.flex_cmd, buffer, bufferOffset, null);
    // Serialize message field [roll_position]
    bufferOffset = _arraySerializer.float32(obj.roll_position, buffer, bufferOffset, null);
    // Serialize message field [roll_effort]
    bufferOffset = _arraySerializer.float32(obj.roll_effort, buffer, bufferOffset, null);
    // Serialize message field [roll_cmd]
    bufferOffset = _arraySerializer.float32(obj.roll_cmd, buffer, bufferOffset, null);
    // Serialize message field [roll_velocity]
    bufferOffset = _arraySerializer.float32(obj.roll_velocity, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WristRollTurn
    let len;
    let data = new WristRollTurn(null);
    // Deserialize message field [time]
    data.time = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [flex_position]
    data.flex_position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [flex_effort]
    data.flex_effort = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [flex_cmd]
    data.flex_cmd = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [roll_position]
    data.roll_position = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [roll_effort]
    data.roll_effort = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [roll_cmd]
    data.roll_cmd = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [roll_velocity]
    data.roll_velocity = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.time.length;
    length += 4 * object.flex_position.length;
    length += 4 * object.flex_effort.length;
    length += 4 * object.flex_cmd.length;
    length += 4 * object.roll_position.length;
    length += 4 * object.roll_effort.length;
    length += 4 * object.roll_cmd.length;
    length += 4 * object.roll_velocity.length;
    return length + 32;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joint_qualification_controllers/WristRollTurn';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '27db8c0ca950f1334a70a45b5bc8427f';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32[] time
    float32[] flex_position
    float32[] flex_effort
    float32[] flex_cmd
    float32[] roll_position
    float32[] roll_effort
    float32[] roll_cmd
    float32[] roll_velocity
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new WristRollTurn(null);
    if (msg.time !== undefined) {
      resolved.time = msg.time;
    }
    else {
      resolved.time = []
    }

    if (msg.flex_position !== undefined) {
      resolved.flex_position = msg.flex_position;
    }
    else {
      resolved.flex_position = []
    }

    if (msg.flex_effort !== undefined) {
      resolved.flex_effort = msg.flex_effort;
    }
    else {
      resolved.flex_effort = []
    }

    if (msg.flex_cmd !== undefined) {
      resolved.flex_cmd = msg.flex_cmd;
    }
    else {
      resolved.flex_cmd = []
    }

    if (msg.roll_position !== undefined) {
      resolved.roll_position = msg.roll_position;
    }
    else {
      resolved.roll_position = []
    }

    if (msg.roll_effort !== undefined) {
      resolved.roll_effort = msg.roll_effort;
    }
    else {
      resolved.roll_effort = []
    }

    if (msg.roll_cmd !== undefined) {
      resolved.roll_cmd = msg.roll_cmd;
    }
    else {
      resolved.roll_cmd = []
    }

    if (msg.roll_velocity !== undefined) {
      resolved.roll_velocity = msg.roll_velocity;
    }
    else {
      resolved.roll_velocity = []
    }

    return resolved;
    }
};

module.exports = WristRollTurn;
