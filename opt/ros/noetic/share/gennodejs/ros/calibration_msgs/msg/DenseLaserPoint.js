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

class DenseLaserPoint {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.scan = null;
      this.ray = null;
    }
    else {
      if (initObj.hasOwnProperty('scan')) {
        this.scan = initObj.scan
      }
      else {
        this.scan = 0.0;
      }
      if (initObj.hasOwnProperty('ray')) {
        this.ray = initObj.ray
      }
      else {
        this.ray = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DenseLaserPoint
    // Serialize message field [scan]
    bufferOffset = _serializer.float64(obj.scan, buffer, bufferOffset);
    // Serialize message field [ray]
    bufferOffset = _serializer.float64(obj.ray, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DenseLaserPoint
    let len;
    let data = new DenseLaserPoint(null);
    // Deserialize message field [scan]
    data.scan = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [ray]
    data.ray = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/DenseLaserPoint';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '12821677bc3daf8fabbb485d5b0cc027';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Stores the xy subpixel location of a point in a DenseLaserSnapshot
    float64 scan  # Which scan line we detected the feature
    float64 ray   # Which ray in the specified scan we detected the feature
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DenseLaserPoint(null);
    if (msg.scan !== undefined) {
      resolved.scan = msg.scan;
    }
    else {
      resolved.scan = 0.0
    }

    if (msg.ray !== undefined) {
      resolved.ray = msg.ray;
    }
    else {
      resolved.ray = 0.0
    }

    return resolved;
    }
};

module.exports = DenseLaserPoint;
