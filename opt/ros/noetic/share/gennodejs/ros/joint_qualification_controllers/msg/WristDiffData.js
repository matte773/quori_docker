// Auto-generated. Do not edit!

// (in-package joint_qualification_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let WristRollTurn = require('./WristRollTurn.js');

//-----------------------------------------------------------

class WristDiffData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.flex_joint = null;
      this.roll_joint = null;
      this.flex_pid = null;
      this.roll_pid = null;
      this.arg_name = null;
      this.arg_value = null;
      this.left_turn = null;
      this.right_turn = null;
      this.timeout = null;
    }
    else {
      if (initObj.hasOwnProperty('flex_joint')) {
        this.flex_joint = initObj.flex_joint
      }
      else {
        this.flex_joint = '';
      }
      if (initObj.hasOwnProperty('roll_joint')) {
        this.roll_joint = initObj.roll_joint
      }
      else {
        this.roll_joint = '';
      }
      if (initObj.hasOwnProperty('flex_pid')) {
        this.flex_pid = initObj.flex_pid
      }
      else {
        this.flex_pid = [];
      }
      if (initObj.hasOwnProperty('roll_pid')) {
        this.roll_pid = initObj.roll_pid
      }
      else {
        this.roll_pid = [];
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
      if (initObj.hasOwnProperty('left_turn')) {
        this.left_turn = initObj.left_turn
      }
      else {
        this.left_turn = new WristRollTurn();
      }
      if (initObj.hasOwnProperty('right_turn')) {
        this.right_turn = initObj.right_turn
      }
      else {
        this.right_turn = new WristRollTurn();
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = false;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type WristDiffData
    // Serialize message field [flex_joint]
    bufferOffset = _serializer.string(obj.flex_joint, buffer, bufferOffset);
    // Serialize message field [roll_joint]
    bufferOffset = _serializer.string(obj.roll_joint, buffer, bufferOffset);
    // Serialize message field [flex_pid]
    bufferOffset = _arraySerializer.float32(obj.flex_pid, buffer, bufferOffset, null);
    // Serialize message field [roll_pid]
    bufferOffset = _arraySerializer.float32(obj.roll_pid, buffer, bufferOffset, null);
    // Serialize message field [arg_name]
    bufferOffset = _arraySerializer.string(obj.arg_name, buffer, bufferOffset, null);
    // Serialize message field [arg_value]
    bufferOffset = _arraySerializer.float32(obj.arg_value, buffer, bufferOffset, null);
    // Serialize message field [left_turn]
    bufferOffset = WristRollTurn.serialize(obj.left_turn, buffer, bufferOffset);
    // Serialize message field [right_turn]
    bufferOffset = WristRollTurn.serialize(obj.right_turn, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.bool(obj.timeout, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type WristDiffData
    let len;
    let data = new WristDiffData(null);
    // Deserialize message field [flex_joint]
    data.flex_joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [roll_joint]
    data.roll_joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [flex_pid]
    data.flex_pid = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [roll_pid]
    data.roll_pid = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [arg_name]
    data.arg_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [arg_value]
    data.arg_value = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [left_turn]
    data.left_turn = WristRollTurn.deserialize(buffer, bufferOffset);
    // Deserialize message field [right_turn]
    data.right_turn = WristRollTurn.deserialize(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.bool(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.flex_joint);
    length += _getByteLength(object.roll_joint);
    length += 4 * object.flex_pid.length;
    length += 4 * object.roll_pid.length;
    object.arg_name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.arg_value.length;
    length += WristRollTurn.getMessageSize(object.left_turn);
    length += WristRollTurn.getMessageSize(object.right_turn);
    return length + 25;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joint_qualification_controllers/WristDiffData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b5450bf7a09b17c68a893b9c02e710f1';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string flex_joint
    string roll_joint
    float32[] flex_pid
    float32[] roll_pid
    string[] arg_name
    float32[] arg_value
    WristRollTurn left_turn
    WristRollTurn right_turn
    bool timeout
    
    ================================================================================
    MSG: joint_qualification_controllers/WristRollTurn
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
    const resolved = new WristDiffData(null);
    if (msg.flex_joint !== undefined) {
      resolved.flex_joint = msg.flex_joint;
    }
    else {
      resolved.flex_joint = ''
    }

    if (msg.roll_joint !== undefined) {
      resolved.roll_joint = msg.roll_joint;
    }
    else {
      resolved.roll_joint = ''
    }

    if (msg.flex_pid !== undefined) {
      resolved.flex_pid = msg.flex_pid;
    }
    else {
      resolved.flex_pid = []
    }

    if (msg.roll_pid !== undefined) {
      resolved.roll_pid = msg.roll_pid;
    }
    else {
      resolved.roll_pid = []
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

    if (msg.left_turn !== undefined) {
      resolved.left_turn = WristRollTurn.Resolve(msg.left_turn)
    }
    else {
      resolved.left_turn = new WristRollTurn()
    }

    if (msg.right_turn !== undefined) {
      resolved.right_turn = WristRollTurn.Resolve(msg.right_turn)
    }
    else {
      resolved.right_turn = new WristRollTurn()
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = false
    }

    return resolved;
    }
};

module.exports = WristDiffData;
