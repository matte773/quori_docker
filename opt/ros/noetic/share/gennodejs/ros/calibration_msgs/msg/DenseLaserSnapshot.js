// Auto-generated. Do not edit!

// (in-package calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class DenseLaserSnapshot {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.angle_min = null;
      this.angle_max = null;
      this.angle_increment = null;
      this.time_increment = null;
      this.range_min = null;
      this.range_max = null;
      this.readings_per_scan = null;
      this.num_scans = null;
      this.ranges = null;
      this.intensities = null;
      this.scan_start = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('angle_min')) {
        this.angle_min = initObj.angle_min
      }
      else {
        this.angle_min = 0.0;
      }
      if (initObj.hasOwnProperty('angle_max')) {
        this.angle_max = initObj.angle_max
      }
      else {
        this.angle_max = 0.0;
      }
      if (initObj.hasOwnProperty('angle_increment')) {
        this.angle_increment = initObj.angle_increment
      }
      else {
        this.angle_increment = 0.0;
      }
      if (initObj.hasOwnProperty('time_increment')) {
        this.time_increment = initObj.time_increment
      }
      else {
        this.time_increment = 0.0;
      }
      if (initObj.hasOwnProperty('range_min')) {
        this.range_min = initObj.range_min
      }
      else {
        this.range_min = 0.0;
      }
      if (initObj.hasOwnProperty('range_max')) {
        this.range_max = initObj.range_max
      }
      else {
        this.range_max = 0.0;
      }
      if (initObj.hasOwnProperty('readings_per_scan')) {
        this.readings_per_scan = initObj.readings_per_scan
      }
      else {
        this.readings_per_scan = 0;
      }
      if (initObj.hasOwnProperty('num_scans')) {
        this.num_scans = initObj.num_scans
      }
      else {
        this.num_scans = 0;
      }
      if (initObj.hasOwnProperty('ranges')) {
        this.ranges = initObj.ranges
      }
      else {
        this.ranges = [];
      }
      if (initObj.hasOwnProperty('intensities')) {
        this.intensities = initObj.intensities
      }
      else {
        this.intensities = [];
      }
      if (initObj.hasOwnProperty('scan_start')) {
        this.scan_start = initObj.scan_start
      }
      else {
        this.scan_start = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type DenseLaserSnapshot
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [angle_min]
    bufferOffset = _serializer.float32(obj.angle_min, buffer, bufferOffset);
    // Serialize message field [angle_max]
    bufferOffset = _serializer.float32(obj.angle_max, buffer, bufferOffset);
    // Serialize message field [angle_increment]
    bufferOffset = _serializer.float32(obj.angle_increment, buffer, bufferOffset);
    // Serialize message field [time_increment]
    bufferOffset = _serializer.float32(obj.time_increment, buffer, bufferOffset);
    // Serialize message field [range_min]
    bufferOffset = _serializer.float32(obj.range_min, buffer, bufferOffset);
    // Serialize message field [range_max]
    bufferOffset = _serializer.float32(obj.range_max, buffer, bufferOffset);
    // Serialize message field [readings_per_scan]
    bufferOffset = _serializer.uint32(obj.readings_per_scan, buffer, bufferOffset);
    // Serialize message field [num_scans]
    bufferOffset = _serializer.uint32(obj.num_scans, buffer, bufferOffset);
    // Serialize message field [ranges]
    bufferOffset = _arraySerializer.float32(obj.ranges, buffer, bufferOffset, null);
    // Serialize message field [intensities]
    bufferOffset = _arraySerializer.float32(obj.intensities, buffer, bufferOffset, null);
    // Serialize message field [scan_start]
    bufferOffset = _arraySerializer.time(obj.scan_start, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type DenseLaserSnapshot
    let len;
    let data = new DenseLaserSnapshot(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [angle_min]
    data.angle_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_max]
    data.angle_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [angle_increment]
    data.angle_increment = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [time_increment]
    data.time_increment = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range_min]
    data.range_min = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [range_max]
    data.range_max = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [readings_per_scan]
    data.readings_per_scan = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [num_scans]
    data.num_scans = _deserializer.uint32(buffer, bufferOffset);
    // Deserialize message field [ranges]
    data.ranges = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [intensities]
    data.intensities = _arrayDeserializer.float32(buffer, bufferOffset, null)
    // Deserialize message field [scan_start]
    data.scan_start = _arrayDeserializer.time(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += 4 * object.ranges.length;
    length += 4 * object.intensities.length;
    length += 8 * object.scan_start.length;
    return length + 44;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/DenseLaserSnapshot';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'deb2810d3530db3484f886a81243195d';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # Provides all the state & sensor information for
    # a single sweep of laser attached to some mechanism.
    # Most likely, this will be used with PR2's tilting laser mechanism
    Header header
    
    # Store the laser intrinsics. This is very similar to the
    # intrinsics commonly stored in 
    float32 angle_min        # start angle of the scan [rad]
    float32 angle_max        # end angle of the scan [rad]
    float32 angle_increment  # angular distance between measurements [rad]
    float32 time_increment   # time between measurements [seconds]
    float32 range_min        # minimum range value [m]
    float32 range_max        # maximum range value [m]
    
    # Define the size of the binary data
    uint32 readings_per_scan    # (Width)
    uint32 num_scans            # (Height)
    
    # 2D Arrays storing laser data.
    # We can think of each type data as being a single channel image.
    # Each row of the image has data from a single scan, and scans are
    # concatenated to form the entire 'image'.
    float32[] ranges            # (Image data)
    float32[] intensities       # (Image data)
    
    # Store the start time of each scan
    time[] scan_start
    
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new DenseLaserSnapshot(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.angle_min !== undefined) {
      resolved.angle_min = msg.angle_min;
    }
    else {
      resolved.angle_min = 0.0
    }

    if (msg.angle_max !== undefined) {
      resolved.angle_max = msg.angle_max;
    }
    else {
      resolved.angle_max = 0.0
    }

    if (msg.angle_increment !== undefined) {
      resolved.angle_increment = msg.angle_increment;
    }
    else {
      resolved.angle_increment = 0.0
    }

    if (msg.time_increment !== undefined) {
      resolved.time_increment = msg.time_increment;
    }
    else {
      resolved.time_increment = 0.0
    }

    if (msg.range_min !== undefined) {
      resolved.range_min = msg.range_min;
    }
    else {
      resolved.range_min = 0.0
    }

    if (msg.range_max !== undefined) {
      resolved.range_max = msg.range_max;
    }
    else {
      resolved.range_max = 0.0
    }

    if (msg.readings_per_scan !== undefined) {
      resolved.readings_per_scan = msg.readings_per_scan;
    }
    else {
      resolved.readings_per_scan = 0
    }

    if (msg.num_scans !== undefined) {
      resolved.num_scans = msg.num_scans;
    }
    else {
      resolved.num_scans = 0
    }

    if (msg.ranges !== undefined) {
      resolved.ranges = msg.ranges;
    }
    else {
      resolved.ranges = []
    }

    if (msg.intensities !== undefined) {
      resolved.intensities = msg.intensities;
    }
    else {
      resolved.intensities = []
    }

    if (msg.scan_start !== undefined) {
      resolved.scan_start = msg.scan_start;
    }
    else {
      resolved.scan_start = []
    }

    return resolved;
    }
};

module.exports = DenseLaserSnapshot;
