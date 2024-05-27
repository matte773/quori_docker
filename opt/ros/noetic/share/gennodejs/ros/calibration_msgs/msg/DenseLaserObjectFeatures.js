// Auto-generated. Do not edit!

// (in-package calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DenseLaserPoint = require('./DenseLaserPoint.js');
let std_msgs = _finder('std_msgs');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class DenseLaserObjectFeatures {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.dense_laser_points = null;
      this.object_points = null;
      this.success = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('dense_laser_points')) {
        this.dense_laser_points = initObj.dense_laser_points
      }
      else {
        this.dense_laser_points = [];
      }
      if (initObj.hasOwnProperty('object_points')) {
        this.object_points = initObj.object_points
      }
      else {
        this.object_points = [];
      }
      if (initObj.hasOwnProperty('success')) {
        this.success = initObj.success
      }
      else {
        this.success = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DenseLaserObjectFeatures
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [dense_laser_points]
    // Serialize the length for message field [dense_laser_points]
    bufferOffset = _serializer.uint32(obj.dense_laser_points.length, buffer, bufferOffset);
    obj.dense_laser_points.forEach((val) => {
      bufferOffset = DenseLaserPoint.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [object_points]
    // Serialize the length for message field [object_points]
    bufferOffset = _serializer.uint32(obj.object_points.length, buffer, bufferOffset);
    obj.object_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [success]
    bufferOffset = _serializer.uint8(obj.success, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DenseLaserObjectFeatures
    let len;
    let data = new DenseLaserObjectFeatures(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [dense_laser_points]
    // Deserialize array length for message field [dense_laser_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.dense_laser_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.dense_laser_points[i] = DenseLaserPoint.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [object_points]
    // Deserialize array length for message field [object_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.object_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.object_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [success]
    data.success = _deserializer.uint8(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 16 * object.dense_laser_points.length;
    length += 24 * object.object_points.length;
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/DenseLaserObjectFeatures';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b642d46e47d54e00f98a3d98b02b5cc6';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Synchronized with sensor output
    Header header
    
    # Pixel locations of detected features
    DenseLaserPoint[] dense_laser_points
    
    # Defines geometry of detected features in some "object" coordinate frame
    geometry_msgs/Point[] object_points
    
    # False on detection failure or partial detection
    uint8 success
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    string frame_id
    
    ================================================================================
    MSG: calibration_msgs/DenseLaserPoint
    # Stores the xy subpixel location of a point in a DenseLaserSnapshot
    float64 scan  # Which scan line we detected the feature
    float64 ray   # Which ray in the specified scan we detected the feature
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DenseLaserObjectFeatures(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.dense_laser_points !== undefined) {
      resolved.dense_laser_points = new Array(msg.dense_laser_points.length);
      for (let i = 0; i < resolved.dense_laser_points.length; ++i) {
        resolved.dense_laser_points[i] = DenseLaserPoint.Resolve(msg.dense_laser_points[i]);
      }
    }
    else {
      resolved.dense_laser_points = []
    }

    if (msg.object_points !== undefined) {
      resolved.object_points = new Array(msg.object_points.length);
      for (let i = 0; i < resolved.object_points.length; ++i) {
        resolved.object_points[i] = geometry_msgs.msg.Point.Resolve(msg.object_points[i]);
      }
    }
    else {
      resolved.object_points = []
    }

    if (msg.success !== undefined) {
      resolved.success = msg.success;
    }
    else {
      resolved.success = 0
    }

    return resolved;
    }
};

module.exports = DenseLaserObjectFeatures;
