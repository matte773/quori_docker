// Auto-generated. Do not edit!

// (in-package calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let DenseLaserSnapshot = require('./DenseLaserSnapshot.js');
let CalibrationPattern = require('./CalibrationPattern.js');
let JointStateCalibrationPattern = require('./JointStateCalibrationPattern.js');
let sensor_msgs = _finder('sensor_msgs');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class LaserMeasurement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.laser_id = null;
      this.joint_points = null;
      this.verbose = null;
      this.snapshot = null;
      this.laser_image = null;
      this.image_features = null;
      this.joint_features = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
      }
      if (initObj.hasOwnProperty('laser_id')) {
        this.laser_id = initObj.laser_id
      }
      else {
        this.laser_id = '';
      }
      if (initObj.hasOwnProperty('joint_points')) {
        this.joint_points = initObj.joint_points
      }
      else {
        this.joint_points = [];
      }
      if (initObj.hasOwnProperty('verbose')) {
        this.verbose = initObj.verbose
      }
      else {
        this.verbose = false;
      }
      if (initObj.hasOwnProperty('snapshot')) {
        this.snapshot = initObj.snapshot
      }
      else {
        this.snapshot = new DenseLaserSnapshot();
      }
      if (initObj.hasOwnProperty('laser_image')) {
        this.laser_image = initObj.laser_image
      }
      else {
        this.laser_image = new sensor_msgs.msg.Image();
      }
      if (initObj.hasOwnProperty('image_features')) {
        this.image_features = initObj.image_features
      }
      else {
        this.image_features = new CalibrationPattern();
      }
      if (initObj.hasOwnProperty('joint_features')) {
        this.joint_features = initObj.joint_features
      }
      else {
        this.joint_features = new JointStateCalibrationPattern();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LaserMeasurement
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [laser_id]
    bufferOffset = _serializer.string(obj.laser_id, buffer, bufferOffset);
    // Serialize message field [joint_points]
    // Serialize the length for message field [joint_points]
    bufferOffset = _serializer.uint32(obj.joint_points.length, buffer, bufferOffset);
    obj.joint_points.forEach((val) => {
      bufferOffset = sensor_msgs.msg.JointState.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [verbose]
    bufferOffset = _serializer.bool(obj.verbose, buffer, bufferOffset);
    // Serialize message field [snapshot]
    bufferOffset = DenseLaserSnapshot.serialize(obj.snapshot, buffer, bufferOffset);
    // Serialize message field [laser_image]
    bufferOffset = sensor_msgs.msg.Image.serialize(obj.laser_image, buffer, bufferOffset);
    // Serialize message field [image_features]
    bufferOffset = CalibrationPattern.serialize(obj.image_features, buffer, bufferOffset);
    // Serialize message field [joint_features]
    bufferOffset = JointStateCalibrationPattern.serialize(obj.joint_features, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LaserMeasurement
    let len;
    let data = new LaserMeasurement(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [laser_id]
    data.laser_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [joint_points]
    // Deserialize array length for message field [joint_points]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.joint_points = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.joint_points[i] = sensor_msgs.msg.JointState.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [verbose]
    data.verbose = _deserializer.bool(buffer, bufferOffset);
    // Deserialize message field [snapshot]
    data.snapshot = DenseLaserSnapshot.deserialize(buffer, bufferOffset);
    // Deserialize message field [laser_image]
    data.laser_image = sensor_msgs.msg.Image.deserialize(buffer, bufferOffset);
    // Deserialize message field [image_features]
    data.image_features = CalibrationPattern.deserialize(buffer, bufferOffset);
    // Deserialize message field [joint_features]
    data.joint_features = JointStateCalibrationPattern.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += _getByteLength(object.laser_id);
    object.joint_points.forEach((val) => {
      length += sensor_msgs.msg.JointState.getMessageSize(val);
    });
    length += DenseLaserSnapshot.getMessageSize(object.snapshot);
    length += sensor_msgs.msg.Image.getMessageSize(object.laser_image);
    length += CalibrationPattern.getMessageSize(object.image_features);
    length += JointStateCalibrationPattern.getMessageSize(object.joint_features);
    return length + 9;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/LaserMeasurement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7fa7e818b1234a443aa5d8e315175d17';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    Header header
    string laser_id
    sensor_msgs/JointState[] joint_points
    
    # True -> The extra debugging fields are populated
    bool verbose
    
    # Extra, partially processed data. Only needed for debugging
    calibration_msgs/DenseLaserSnapshot snapshot
    sensor_msgs/Image laser_image
    calibration_msgs/CalibrationPattern image_features
    calibration_msgs/JointStateCalibrationPattern joint_features
    
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
    
    ================================================================================
    MSG: calibration_msgs/DenseLaserSnapshot
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
    MSG: sensor_msgs/Image
    # This message contains an uncompressed image
    # (0, 0) is at top-left corner of image
    #
    
    Header header        # Header timestamp should be acquisition time of image
                         # Header frame_id should be optical frame of camera
                         # origin of frame should be optical center of camera
                         # +x should point to the right in the image
                         # +y should point down in the image
                         # +z should point into to plane of the image
                         # If the frame_id here and the frame_id of the CameraInfo
                         # message associated with the image conflict
                         # the behavior is undefined
    
    uint32 height         # image height, that is, number of rows
    uint32 width          # image width, that is, number of columns
    
    # The legal values for encoding are in file src/image_encodings.cpp
    # If you want to standardize a new string format, join
    # ros-users@lists.sourceforge.net and send an email proposing a new encoding.
    
    string encoding       # Encoding of pixels -- channel meaning, ordering, size
                          # taken from the list of strings in include/sensor_msgs/image_encodings.h
    
    uint8 is_bigendian    # is this data bigendian?
    uint32 step           # Full row length in bytes
    uint8[] data          # actual matrix data, size is (step * rows)
    
    ================================================================================
    MSG: calibration_msgs/CalibrationPattern
    Header header
    geometry_msgs/Point[] object_points
    geometry_msgs/Point[] image_points
    uint8 success
    
    ================================================================================
    MSG: geometry_msgs/Point
    # This contains the position of a point in free space
    float64 x
    float64 y
    float64 z
    
    ================================================================================
    MSG: calibration_msgs/JointStateCalibrationPattern
    Header header
    geometry_msgs/Point[]  object_points
    sensor_msgs/JointState[] joint_points
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LaserMeasurement(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
    }

    if (msg.laser_id !== undefined) {
      resolved.laser_id = msg.laser_id;
    }
    else {
      resolved.laser_id = ''
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

    if (msg.verbose !== undefined) {
      resolved.verbose = msg.verbose;
    }
    else {
      resolved.verbose = false
    }

    if (msg.snapshot !== undefined) {
      resolved.snapshot = DenseLaserSnapshot.Resolve(msg.snapshot)
    }
    else {
      resolved.snapshot = new DenseLaserSnapshot()
    }

    if (msg.laser_image !== undefined) {
      resolved.laser_image = sensor_msgs.msg.Image.Resolve(msg.laser_image)
    }
    else {
      resolved.laser_image = new sensor_msgs.msg.Image()
    }

    if (msg.image_features !== undefined) {
      resolved.image_features = CalibrationPattern.Resolve(msg.image_features)
    }
    else {
      resolved.image_features = new CalibrationPattern()
    }

    if (msg.joint_features !== undefined) {
      resolved.joint_features = JointStateCalibrationPattern.Resolve(msg.joint_features)
    }
    else {
      resolved.joint_features = new JointStateCalibrationPattern()
    }

    return resolved;
    }
};

module.exports = LaserMeasurement;
