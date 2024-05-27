// Auto-generated. Do not edit!

// (in-package joint_qualification_controllers.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let JointData = require('./JointData.js');
let ActuatorData = require('./ActuatorData.js');

//-----------------------------------------------------------

class RobotData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.test_time = null;
      this.timeout = null;
      this.num_joints = null;
      this.num_actuators = null;
      this.joint_data = null;
      this.actuator_data = null;
    }
    else {
      if (initObj.hasOwnProperty('test_time')) {
        this.test_time = initObj.test_time
      }
      else {
        this.test_time = 0.0;
      }
      if (initObj.hasOwnProperty('timeout')) {
        this.timeout = initObj.timeout
      }
      else {
        this.timeout = false;
      }
      if (initObj.hasOwnProperty('num_joints')) {
        this.num_joints = initObj.num_joints
      }
      else {
        this.num_joints = 0;
      }
      if (initObj.hasOwnProperty('num_actuators')) {
        this.num_actuators = initObj.num_actuators
      }
      else {
        this.num_actuators = 0;
      }
      if (initObj.hasOwnProperty('joint_data')) {
        this.joint_data = initObj.joint_data
      }
      else {
        this.joint_data = [];
      }
      if (initObj.hasOwnProperty('actuator_data')) {
        this.actuator_data = initObj.actuator_data
      }
      else {
        this.actuator_data = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotData
    // Serialize message field [test_time]
    bufferOffset = _serializer.float32(obj.test_time, buffer, bufferOffset);
    // Serialize message field [timeout]
    bufferOffset = _serializer.bool(obj.timeout, buffer, bufferOffset);
    // Serialize message field [num_joints]
    bufferOffset = _serializer.int32(obj.num_joints, buffer, bufferOffset);
    // Serialize message field [num_actuators]
    bufferOffset = _serializer.int32(obj.num_actuators, buffer, bufferOffset);
    // Serialize message field [joint_data]
    // Serialize the length for message field [joint_data]
    bufferOffset = _serializer.uint32(obj.joint_data.length, buffer, bufferOffset);
    obj.joint_data.forEach((val) => {
      bufferOffset = JointData.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [actuator_data]
    // Serialize the length for message field [actuator_data]
    bufferOffset = _serializer.uint32(obj.actuator_data.length, buffer, bufferOffset);
    obj.actuator_data.forEach((val) => {
      bufferOffset = ActuatorData.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotData
    let len;
    let data = new RobotData(null);
    // Deserialize message field [test_time]
    data.test_time = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [timeout]
    data.timeout = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [num_joints]
    data.num_joints = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [num_actuators]
    data.num_actuators = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [joint_data]
    // Deserialize array length for message field [joint_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_data[i] = JointData.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [actuator_data]
    // Deserialize array length for message field [actuator_data]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.actuator_data = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.actuator_data[i] = ActuatorData.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_data.forEach((val) => {
      length += JointData.getMessageSize(val);
    });
    object.actuator_data.forEach((val) => {
      length += ActuatorData.getMessageSize(val);
    });
    return length + 21;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joint_qualification_controllers/RobotData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '025931e8023fe22bd8228a980121730a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    float32 test_time
    bool timeout
    int32 num_joints
    int32 num_actuators
    JointData[] joint_data
    ActuatorData[] actuator_data
    
    ================================================================================
    MSG: joint_qualification_controllers/JointData
    int16 index
    string name
    byte is_cal
    byte has_safety
    string type
    
    
    ================================================================================
    MSG: joint_qualification_controllers/ActuatorData
    int16 index
    string name
    int16 id
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotData(null);
    if (msg.test_time !== undefined) {
      resolved.test_time = msg.test_time;
    }
    else {
      resolved.test_time = 0.0
    }

    if (msg.timeout !== undefined) {
      resolved.timeout = msg.timeout;
    }
    else {
      resolved.timeout = false
    }

    if (msg.num_joints !== undefined) {
      resolved.num_joints = msg.num_joints;
    }
    else {
      resolved.num_joints = 0
    }

    if (msg.num_actuators !== undefined) {
      resolved.num_actuators = msg.num_actuators;
    }
    else {
      resolved.num_actuators = 0
    }

    if (msg.joint_data !== undefined) {
      resolved.joint_data = new Array(msg.joint_data.length);
      for (let i = 0; i < resolved.joint_data.length; ++i) {
        resolved.joint_data[i] = JointData.Resolve(msg.joint_data[i]);
      }
    }
    else {
      resolved.joint_data = []
    }

    if (msg.actuator_data !== undefined) {
      resolved.actuator_data = new Array(msg.actuator_data.length);
      for (let i = 0; i < resolved.actuator_data.length; ++i) {
        resolved.actuator_data[i] = ActuatorData.Resolve(msg.actuator_data[i]);
      }
    }
    else {
      resolved.actuator_data = []
    }

    return resolved;
    }
};

module.exports = RobotData;
