// Auto-generated. Do not edit!

// (in-package joint_qualification_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CBRunData = require('./CBRunData.js');

//-----------------------------------------------------------

class CounterbalanceTestData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.lift_joint = null;
      this.flex_joint = null;
      this.lift_amplitude = null;
      this.flex_amplitude = null;
      this.timeout_hit = null;
      this.flex_test = null;
      this.arg_name = null;
      this.arg_value = null;
      this.lift_data = null;
    }
    else {
      if (initObj.hasOwnProperty('lift_joint')) {
        this.lift_joint = initObj.lift_joint
      }
      else {
        this.lift_joint = '';
      }
      if (initObj.hasOwnProperty('flex_joint')) {
        this.flex_joint = initObj.flex_joint
      }
      else {
        this.flex_joint = '';
      }
      if (initObj.hasOwnProperty('lift_amplitude')) {
        this.lift_amplitude = initObj.lift_amplitude
      }
      else {
        this.lift_amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('flex_amplitude')) {
        this.flex_amplitude = initObj.flex_amplitude
      }
      else {
        this.flex_amplitude = 0.0;
      }
      if (initObj.hasOwnProperty('timeout_hit')) {
        this.timeout_hit = initObj.timeout_hit
      }
      else {
        this.timeout_hit = false;
      }
      if (initObj.hasOwnProperty('flex_test')) {
        this.flex_test = initObj.flex_test
      }
      else {
        this.flex_test = false;
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
      if (initObj.hasOwnProperty('lift_data')) {
        this.lift_data = initObj.lift_data
      }
      else {
        this.lift_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type CounterbalanceTestData
    // Serialize message field [lift_joint]
    bufferOffset = _serializer.string(obj.lift_joint, buffer, bufferOffset);
    // Serialize message field [flex_joint]
    bufferOffset = _serializer.string(obj.flex_joint, buffer, bufferOffset);
    // Serialize message field [lift_amplitude]
    bufferOffset = _serializer.float32(obj.lift_amplitude, buffer, bufferOffset);
    // Serialize message field [flex_amplitude]
    bufferOffset = _serializer.float32(obj.flex_amplitude, buffer, bufferOffset);
    // Serialize message field [timeout_hit]
    bufferOffset = _serializer.bool(obj.timeout_hit, buffer, bufferOffset);
    // Serialize message field [flex_test]
    bufferOffset = _serializer.bool(obj.flex_test, buffer, bufferOffset);
    // Serialize message field [arg_name]
    bufferOffset = _arraySerializer.string(obj.arg_name, buffer, bufferOffset, null);
    // Serialize message field [arg_value]
    bufferOffset = _arraySerializer.float32(obj.arg_value, buffer, bufferOffset, null);
    // Serialize message field [lift_data]
    // Serialize the length for message field [lift_data]
    bufferOffset = _serializer.uint32(obj.lift_data.length, buffer, bufferOffset);
    obj.lift_data.forEach((val) => {
      bufferOffset = CBRunData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type CounterbalanceTestData
    let len;
    let data = new CounterbalanceTestData(null);
    // Deserialize message field [lift_joint]
    data.lift_joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [flex_joint]
    data.flex_joint = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [lift_amplitude]
    data.lift_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [flex_amplitude]
    data.flex_amplitude = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [timeout_hit]
    data.timeout_hit = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [flex_test]
    data.flex_test = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [arg_name]
    data.arg_name = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [arg_value]
    data.arg_value = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [lift_data]
    // Deserialize array length for message field [lift_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.lift_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.lift_data[i] = CBRunData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.lift_joint);
    length += _getByteLength(object.flex_joint);
    object.arg_name.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 4 * object.arg_value.length;
    object.lift_data.forEach((val) => {
      length += CBRunData.getMessageSize(val);
    });
    return length + 30;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joint_qualification_controllers/CounterbalanceTestData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ab80d40971aa9176fd2c9fb75aeb93cf';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string lift_joint
    string flex_joint
    float32 lift_amplitude
    float32 flex_amplitude
    bool timeout_hit
    bool flex_test
    string[] arg_name
    float32[] arg_value
    CBRunData[] lift_data # Data for each hold
    ================================================================================
    MSG: joint_qualification_controllers/CBRunData
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
    const resolved = new CounterbalanceTestData(null);
    if (msg.lift_joint !== undefined) {
      resolved.lift_joint = msg.lift_joint;
    }
    else {
      resolved.lift_joint = ''
    }

    if (msg.flex_joint !== undefined) {
      resolved.flex_joint = msg.flex_joint;
    }
    else {
      resolved.flex_joint = ''
    }

    if (msg.lift_amplitude !== undefined) {
      resolved.lift_amplitude = msg.lift_amplitude;
    }
    else {
      resolved.lift_amplitude = 0.0
    }

    if (msg.flex_amplitude !== undefined) {
      resolved.flex_amplitude = msg.flex_amplitude;
    }
    else {
      resolved.flex_amplitude = 0.0
    }

    if (msg.timeout_hit !== undefined) {
      resolved.timeout_hit = msg.timeout_hit;
    }
    else {
      resolved.timeout_hit = false
    }

    if (msg.flex_test !== undefined) {
      resolved.flex_test = msg.flex_test;
    }
    else {
      resolved.flex_test = false
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

    if (msg.lift_data !== undefined) {
      resolved.lift_data = new Array(msg.lift_data.length);
      for (let i = 0; i < resolved.lift_data.length; ++i) {
        resolved.lift_data[i] = CBRunData.Resolve(msg.lift_data[i]);
      }
    }
    else {
      resolved.lift_data = []
    }

    return resolved;
    }
};

module.exports = CounterbalanceTestData;
