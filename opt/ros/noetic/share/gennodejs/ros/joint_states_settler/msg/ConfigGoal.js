// Auto-generated. Do not edit!

// (in-package joint_states_settler.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class ConfigGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.joint_names = null;
      this.tolerances = null;
      this.max_step = null;
      this.cache_size = null;
    }
    else {
      if (initObj.hasOwnProperty('joint_names')) {
        this.joint_names = initObj.joint_names
      }
      else {
        this.joint_names = [];
      }
      if (initObj.hasOwnProperty('tolerances')) {
        this.tolerances = initObj.tolerances
      }
      else {
        this.tolerances = [];
      }
      if (initObj.hasOwnProperty('max_step')) {
        this.max_step = initObj.max_step
      }
      else {
        this.max_step = {secs: 0, nsecs: 0};
      }
      if (initObj.hasOwnProperty('cache_size')) {
        this.cache_size = initObj.cache_size
      }
      else {
        this.cache_size = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ConfigGoal
    // Serialize message field [joint_names]
    bufferOffset = _arraySerializer.string(obj.joint_names, buffer, bufferOffset, null);
    // Serialize message field [tolerances]
    bufferOffset = _arraySerializer.float64(obj.tolerances, buffer, bufferOffset, null);
    // Serialize message field [max_step]
    bufferOffset = _serializer.duration(obj.max_step, buffer, bufferOffset);
    // Serialize message field [cache_size]
    bufferOffset = _serializer.uint32(obj.cache_size, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ConfigGoal
    let len;
    let data = new ConfigGoal(null);
    // Deserialize message field [joint_names]
    data.joint_names = _arrayDeserializer.string(buffer, bufferOffset, null)
    // Deserialize message field [tolerances]
    data.tolerances = _arrayDeserializer.float64(buffer, bufferOffset, null)
    // Deserialize message field [max_step]
    data.max_step = _deserializer.duration(buffer, bufferOffset);
    // Deserialize message field [cache_size]
    data.cache_size = _deserializer.uint32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.joint_names.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    length += 8 * object.tolerances.length;
    return length + 20;
  }

  static datatype() {
    // Returns string type for a message object
    return 'joint_states_settler/ConfigGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '863b25359077f9aa231257b3d1612b63';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    string[] joint_names   # Names of the joints we're waiting to settle
    float64[] tolerances   # Tolerance on each of the specified joints
    duration max_step      # The maximum timestep between two elements in an interval
    uint32 cache_size      # The size of our cache when searching for an interval
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ConfigGoal(null);
    if (msg.joint_names !== undefined) {
      resolved.joint_names = msg.joint_names;
    }
    else {
      resolved.joint_names = []
    }

    if (msg.tolerances !== undefined) {
      resolved.tolerances = msg.tolerances;
    }
    else {
      resolved.tolerances = []
    }

    if (msg.max_step !== undefined) {
      resolved.max_step = msg.max_step;
    }
    else {
      resolved.max_step = {secs: 0, nsecs: 0}
    }

    if (msg.cache_size !== undefined) {
      resolved.cache_size = msg.cache_size;
    }
    else {
      resolved.cache_size = 0
    }

    return resolved;
    }
};

module.exports = ConfigGoal;
