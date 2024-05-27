// Auto-generated. Do not edit!

// (in-package calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class Interval {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.start = null;
      this.end = null;
    }
    else {
      if (initObj.hasOwnProperty('start')) {
        this.start = initObj.start
      }
      else {
        this.start = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('end')) {
        this.end = initObj.end
      }
      else {
        this.end = {secs: 0, nsecs: 0};
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type Interval
    // Serialize message field [start]
    bufferOffset = _serializer.time(obj.start, buffer, bufferOffset);
    // Serialize message field [end]
    bufferOffset = _serializer.time(obj.end, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type Interval
    let len;
    let data = new Interval(null);
    // Deserialize message field [start]
    data.start = _deserializer.time(buffer, bufferOffset);
    // Deserialize message field [end]
    data.end = _deserializer.time(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/Interval';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'ef8dc98e5cfe048db2cfb689ace74756';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    time start
    time end
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new Interval(null);
    if (msg.start !== undefined) {
      resolved.start = msg.start;
    }
    else {
      resolved.start = {secs: 0, nsecs: 0}
    }

    if (msg.end !== undefined) {
      resolved.end = msg.end;
    }
    else {
      resolved.end = {secs: 0, nsecs: 0}
    }

    return resolved;
    }
};

module.exports = Interval;
