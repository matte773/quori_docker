// Auto-generated. Do not edit!

// (in-package calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class JointStateCalibrationPattern {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.object_points = null;
      this.joint_points = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('object_points')) {
        this.object_points = initObj.object_points
      }
      else {
        this.object_points = [];
      }
      if (initObj.hasOwnProperty('joint_points')) {
        this.joint_points = initObj.joint_points
      }
      else {
        this.joint_points = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type JointStateCalibrationPattern
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [object_points]
    // Serialize the length for message field [object_points]
    bufferOffset = _serializer.uint32(obj.object_points.length, buffer, bufferOffset);
    obj.object_points.forEach((val) => {
      bufferOffset = geometry_msgs.msg.Point.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [joint_points]
    // Serialize the length for message field [joint_points]
    bufferOffset = _serializer.uint32(obj.joint_points.length, buffer, bufferOffset);
    obj.joint_points.forEach((val) => {
      bufferOffset = sensor_msgs.msg.JointState.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type JointStateCalibrationPattern
    let len;
    let data = new JointStateCalibrationPattern(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [object_points]
    // Deserialize array length for message field [object_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.object_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.object_points[i] = geometry_msgs.msg.Point.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [joint_points]
    // Deserialize array length for message field [joint_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_points[i] = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 24 * object.object_points.length;
    object.joint_points.forEach((val) => {
      length += sensor_msgs.msg.JointState.getMessageSize(val);
    });
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/JointStateCalibrationPattern';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c80e9cf8e7942eba44a6d32e3c75bf59';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    geometry_msgs/Point[]  object_points
    sensor_msgs/JointState[] joint_points
    
    
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
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: sensor_msgs/JointState
    # This is a message that holds data to describe the state of a set of torque controlled joints. 
    #
    # The state of each joint (revolute or prismatic) is defined by:
    #  * the position of the joint (rad or m),
    #  * the velocity of the joint (rad/s or m/s) and 
    #  * the effort that is applied in the joint (Nm or N).
    #
    # Each joint is uniquely identified by its name
    # The header specifies the time at which the joint states were recorded. All the joint states
    # in one message have to be recorded at the same time.
    #
    # This message consists of a multiple arrays, one for each part of the joint state. 
    # The goal is to make each of the fields optional. When e.g. your joints have no
    # effort associated with them, you can leave the effort array empty. 
    #
    # All arrays in this message should have the same size, or be empty.
    # This is the only way to uniquely associate the joint name with the correct
    # states.
    
    
    Header header
    
    string[] name
    float64[] position
    float64[] velocity
    float64[] effort
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new JointStateCalibrationPattern(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

    if (msg.joint_points !== undefined) {
      resolved.joint_points = new Array(msg.joint_points.length);
      for (let i = 0; i < resolved.joint_points.length; ++i) {
        resolved.joint_points[i] = sensor_msgs.msg.JointState.Resolve(msg.joint_points[i]);
      }
    }
    else {
      resolved.joint_points = []
    }

    return resolved;
    }
};

module.exports = JointStateCalibrationPattern;
