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

class HysteresisData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_name = null;
      this.time_up = null;
      this.effort_up = null;
      this.position_up = null;
      this.velocity_up = null;
      this.time_down = null;
      this.effort_down = null;
      this.position_down = null;
      this.velocity_down = null;
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
      if (initObj.hasOwnProperty('time_up')) {
        this.time_up = initObj.time_up
      }
      else {
        this.time_up = [];
      }
      if (initObj.hasOwnProperty('effort_up')) {
        this.effort_up = initObj.effort_up
      }
      else {
        this.effort_up = [];
      }
      if (initObj.hasOwnProperty('position_up')) {
        this.position_up = initObj.position_up
      }
      else {
        this.position_up = [];
      }
      if (initObj.hasOwnProperty('velocity_up')) {
        this.velocity_up = initObj.velocity_up
      }
      else {
        this.velocity_up = [];
      }
      if (initObj.hasOwnProperty('time_down')) {
        this.time_down = initObj.time_down
      }
      else {
        this.time_down = [];
      }
      if (initObj.hasOwnProperty('effort_down')) {
        this.effort_down = initObj.effort_down
      }
      else {
        this.effort_down = [];
      }
      if (initObj.hasOwnProperty('position_down')) {
        this.position_down = initObj.position_down
      }
      else {
        this.position_down = [];
      }
      if (initObj.hasOwnProperty('velocity_down')) {
        this.velocity_down = initObj.velocity_down
      }
      else {
        this.velocity_down = [];
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
    // Serializes a message object of type HysteresisData
    // Serialize message field [joint_name]
    bufferOffset = _serializer.string(obj.joint_name, buffer, bufferOffset);
    // Serialize message field [time_up]
    bufferOffset = _arraySerializer.float32(obj.time_up, buffer, bufferOffset, null);
    // Serialize message field [effort_up]
    bufferOffset = _arraySerializer.float32(obj.effort_up, buffer, bufferOffset, null);
    // Serialize message field [position_up]
    bufferOffset = _arraySerializer.float32(obj.position_up, buffer, bufferOffset, null);
    // Serialize message field [velocity_up]
    bufferOffset = _arraySerializer.float32(obj.velocity_up, buffer, bufferOffset, null);
    // Serialize message field [time_down]
    bufferOffset = _arraySerializer.float32(obj.time_down, buffer, bufferOffset, null);
    // Serialize message field [effort_down]
    bufferOffset = _arraySerializer.float32(obj.effort_down, buffer, bufferOffset, null);
    // Serialize message field [position_down]
    bufferOffset = _arraySerializer.float32(obj.position_down, buffer, bufferOffset, null);
    // Serialize message field [velocity_down]
    bufferOffset = _arraySerializer.float32(obj.velocity_down, buffer, bufferOffset, null);
    // Serialize message field [arg_name]
    bufferOffset = _arraySerializer.string(obj.arg_name, buffer, bufferOffset, null);
    // Serialize message field [arg_value]
    bufferOffset = _arraySerializer.float32(obj.arg_value, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type HysteresisData
    let len;
    let data = new HysteresisData(null);
    // Deserialize message field [joint_name]
    data.joint_name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [time_up]
    data.time_up = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [effort_up]
    data.effort_up = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [position_up]
    data.position_up = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [velocity_up]
    data.velocity_up = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [time_down]
    data.time_down = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [effort_down]
    data.effort_down = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [position_down]
    data.position_down = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [velocity_down]
    data.velocity_down = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [arg_name]
    data.arg_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [arg_value]
    data.arg_value = _arrayDeserializer.float32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.joint_name);
    length += 4 * object.time_up.length;
    length += 4 * object.effort_up.length;
    length += 4 * object.position_up.length;
    length += 4 * object.velocity_up.length;
    length += 4 * object.time_down.length;
    length += 4 * object.effort_down.length;
    length += 4 * object.position_down.length;
    length += 4 * object.velocity_down.length;
    object.arg_name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.arg_value.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joint_qualification_controllers/HysteresisData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '55018edece2f193bc97f016db04a871b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string joint_name
    
    float32[] time_up
    float32[] effort_up
    float32[] position_up
    float32[] velocity_up
    
    float32[] time_down
    float32[] effort_down
    float32[] position_down
    float32[] velocity_down
    
    string[] arg_name
    float32[] arg_value
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new HysteresisData(null);
    if (msg.joint_name !== undefined) {
      resolved.joint_name = msg.joint_name;
    }
    else {
      resolved.joint_name = ''
    }

    if (msg.time_up !== undefined) {
      resolved.time_up = msg.time_up;
    }
    else {
      resolved.time_up = []
    }

    if (msg.effort_up !== undefined) {
      resolved.effort_up = msg.effort_up;
    }
    else {
      resolved.effort_up = []
    }

    if (msg.position_up !== undefined) {
      resolved.position_up = msg.position_up;
    }
    else {
      resolved.position_up = []
    }

    if (msg.velocity_up !== undefined) {
      resolved.velocity_up = msg.velocity_up;
    }
    else {
      resolved.velocity_up = []
    }

    if (msg.time_down !== undefined) {
      resolved.time_down = msg.time_down;
    }
    else {
      resolved.time_down = []
    }

    if (msg.effort_down !== undefined) {
      resolved.effort_down = msg.effort_down;
    }
    else {
      resolved.effort_down = []
    }

    if (msg.position_down !== undefined) {
      resolved.position_down = msg.position_down;
    }
    else {
      resolved.position_down = []
    }

    if (msg.velocity_down !== undefined) {
      resolved.velocity_down = msg.velocity_down;
    }
    else {
      resolved.velocity_down = []
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

module.exports = HysteresisData;
