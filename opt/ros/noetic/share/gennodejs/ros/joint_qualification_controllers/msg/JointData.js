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

class JointData {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.index = null;
      this.name = null;
      this.is_cal = null;
      this.has_safety = null;
      this.type = null;
    }
    else {
      if (initObj.hasOwnProperty('index')) {
        this.index = initObj.index
      }
      else {
        this.index = 0;
      }
      if (initObj.hasOwnProperty('name')) {
        this.name = initObj.name
      }
      else {
        this.name = '';
      }
      if (initObj.hasOwnProperty('is_cal')) {
        this.is_cal = initObj.is_cal
      }
      else {
        this.is_cal = 0;
      }
      if (initObj.hasOwnProperty('has_safety')) {
        this.has_safety = initObj.has_safety
      }
      else {
        this.has_safety = 0;
      }
      if (initObj.hasOwnProperty('type')) {
        this.type = initObj.type
      }
      else {
        this.type = '';
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointData
    // Serialize message field [index]
    bufferOffset = _serializer.int16(obj.index, buffer, bufferOffset);
    // Serialize message field [name]
    bufferOffset = _serializer.string(obj.name, buffer, bufferOffset);
    // Serialize message field [is_cal]
    bufferOffset = _serializer.byte(obj.is_cal, buffer, bufferOffset);
    // Serialize message field [has_safety]
    bufferOffset = _serializer.byte(obj.has_safety, buffer, bufferOffset);
    // Serialize message field [type]
    bufferOffset = _serializer.string(obj.type, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointData
    let len;
    let data = new JointData(null);
    // Deserialize message field [index]
    data.index = _deserializer.int16(buffer, bufferOffset);
    // Deserialize message field [name]
    data.name = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [is_cal]
    data.is_cal = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [has_safety]
    data.has_safety = _deserializer.byte(buffer, bufferOffset);
    // Deserialize message field [type]
    data.type = _deserializer.string(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.name);
    length += _getByteLength(object.type);
    return length + 12;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joint_qualification_controllers/JointData';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '191610564bf935172c9424c803ed6939';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int16 index
    string name
    byte is_cal
    byte has_safety
    string type
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointData(null);
    if (msg.index !== undefined) {
      resolved.index = msg.index;
    }
    else {
      resolved.index = 0
    }

    if (msg.name !== undefined) {
      resolved.name = msg.name;
    }
    else {
      resolved.name = ''
    }

    if (msg.is_cal !== undefined) {
      resolved.is_cal = msg.is_cal;
    }
    else {
      resolved.is_cal = 0
    }

    if (msg.has_safety !== undefined) {
      resolved.has_safety = msg.has_safety;
    }
    else {
      resolved.has_safety = 0
    }

    if (msg.type !== undefined) {
      resolved.type = msg.type;
    }
    else {
      resolved.type = ''
    }

    return resolved;
    }
};

module.exports = JointData;
