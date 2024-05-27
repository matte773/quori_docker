// Auto-generated. Do not edit!

// (in-package calibration_msgs.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CameraMeasurement = require('./CameraMeasurement.js');
let LaserMeasurement = require('./LaserMeasurement.js');
let ChainMeasurement = require('./ChainMeasurement.js');

//-----------------------------------------------------------

class RobotMeasurement {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.sample_id = null;
      this.target_id = null;
      this.chain_id = null;
      this.M_cam = null;
      this.M_laser = null;
      this.M_chain = null;
    }
    else {
      if (initObj.hasOwnProperty('sample_id')) {
        this.sample_id = initObj.sample_id
      }
      else {
        this.sample_id = '';
      }
      if (initObj.hasOwnProperty('target_id')) {
        this.target_id = initObj.target_id
      }
      else {
        this.target_id = '';
      }
      if (initObj.hasOwnProperty('chain_id')) {
        this.chain_id = initObj.chain_id
      }
      else {
        this.chain_id = '';
      }
      if (initObj.hasOwnProperty('M_cam')) {
        this.M_cam = initObj.M_cam
      }
      else {
        this.M_cam = [];
      }
      if (initObj.hasOwnProperty('M_laser')) {
        this.M_laser = initObj.M_laser
      }
      else {
        this.M_laser = [];
      }
      if (initObj.hasOwnProperty('M_chain')) {
        this.M_chain = initObj.M_chain
      }
      else {
        this.M_chain = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RobotMeasurement
    // Serialize message field [sample_id]
    bufferOffset = _serializer.string(obj.sample_id, buffer, bufferOffset);
    // Serialize message field [target_id]
    bufferOffset = _serializer.string(obj.target_id, buffer, bufferOffset);
    // Serialize message field [chain_id]
    bufferOffset = _serializer.string(obj.chain_id, buffer, bufferOffset);
    // Serialize message field [M_cam]
    // Serialize the length for message field [M_cam]
    bufferOffset = _serializer.uint32(obj.M_cam.length, buffer, bufferOffset);
    obj.M_cam.forEach((val) => {
      bufferOffset = CameraMeasurement.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [M_laser]
    // Serialize the length for message field [M_laser]
    bufferOffset = _serializer.uint32(obj.M_laser.length, buffer, bufferOffset);
    obj.M_laser.forEach((val) => {
      bufferOffset = LaserMeasurement.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [M_chain]
    // Serialize the length for message field [M_chain]
    bufferOffset = _serializer.uint32(obj.M_chain.length, buffer, bufferOffset);
    obj.M_chain.forEach((val) => {
      bufferOffset = ChainMeasurement.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RobotMeasurement
    let len;
    let data = new RobotMeasurement(null);
    // Deserialize message field [sample_id]
    data.sample_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [target_id]
    data.target_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [chain_id]
    data.chain_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [M_cam]
    // Deserialize array length for message field [M_cam]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.M_cam = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.M_cam[i] = CameraMeasurement.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [M_laser]
    // Deserialize array length for message field [M_laser]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.M_laser = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.M_laser[i] = LaserMeasurement.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [M_chain]
    // Deserialize array length for message field [M_chain]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.M_chain = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.M_chain[i] = ChainMeasurement.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += _getByteLength(object.sample_id);
    length += _getByteLength(object.target_id);
    length += _getByteLength(object.chain_id);
    object.M_cam.forEach((val) => {
      length += CameraMeasurement.getMessageSize(val);
    });
    object.M_laser.forEach((val) => {
      length += LaserMeasurement.getMessageSize(val);
    });
    object.M_chain.forEach((val) => {
      length += ChainMeasurement.getMessageSize(val);
    });
    return length + 24;
  }

  static datatype() {
    // Returns string type for a message object
    return 'calibration_msgs/RobotMeasurement';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fe22486c078efbf7892430dd0b99305c';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string sample_id    # Tag to figure out which yaml file this was generated from
    
    string target_id    # Defines the target that we were sensing.
    string chain_id     # Defines where this target was attached
    
    CameraMeasurement[] M_cam
    LaserMeasurement[]  M_laser
    ChainMeasurement[]  M_chain
    
    ================================================================================
    MSG: calibration_msgs/CameraMeasurement
    Header header
    string camera_id
    geometry_msgs/Point[] image_points
    sensor_msgs/CameraInfo cam_info
    
    # True -> The extra debugging fields are populated
    bool verbose
    
    # Extra, partially processed data. Only needed for debugging
    sensor_msgs/Image image
    sensor_msgs/Image image_rect
    calibration_msgs/CalibrationPattern features
    
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
    MSG: sensor_msgs/CameraInfo
    # This message defines meta information for a camera. It should be in a
    # camera namespace on topic "camera_info" and accompanied by up to five
    # image topics named:
    #
    #   image_raw - raw data from the camera driver, possibly Bayer encoded
    #   image            - monochrome, distorted
    #   image_color      - color, distorted
    #   image_rect       - monochrome, rectified
    #   image_rect_color - color, rectified
    #
    # The image_pipeline contains packages (image_proc, stereo_image_proc)
    # for producing the four processed image topics from image_raw and
    # camera_info. The meaning of the camera parameters are described in
    # detail at http://www.ros.org/wiki/image_pipeline/CameraInfo.
    #
    # The image_geometry package provides a user-friendly interface to
    # common operations using this meta information. If you want to, e.g.,
    # project a 3d point into image coordinates, we strongly recommend
    # using image_geometry.
    #
    # If the camera is uncalibrated, the matrices D, K, R, P should be left
    # zeroed out. In particular, clients may assume that K[0] == 0.0
    # indicates an uncalibrated camera.
    
    #######################################################################
    #                     Image acquisition info                          #
    #######################################################################
    
    # Time of image acquisition, camera coordinate frame ID
    Header header    # Header timestamp should be acquisition time of image
                     # Header frame_id should be optical frame of camera
                     # origin of frame should be optical center of camera
                     # +x should point to the right in the image
                     # +y should point down in the image
                     # +z should point into the plane of the image
    
    
    #######################################################################
    #                      Calibration Parameters                         #
    #######################################################################
    # These are fixed during camera calibration. Their values will be the #
    # same in all messages until the camera is recalibrated. Note that    #
    # self-calibrating systems may "recalibrate" frequently.              #
    #                                                                     #
    # The internal parameters can be used to warp a raw (distorted) image #
    # to:                                                                 #
    #   1. An undistorted image (requires D and K)                        #
    #   2. A rectified image (requires D, K, R)                           #
    # The projection matrix P projects 3D points into the rectified image.#
    #######################################################################
    
    # The image dimensions with which the camera was calibrated. Normally
    # this will be the full camera resolution in pixels.
    uint32 height
    uint32 width
    
    # The distortion model used. Supported models are listed in
    # sensor_msgs/distortion_models.h. For most cameras, "plumb_bob" - a
    # simple model of radial and tangential distortion - is sufficient.
    string distortion_model
    
    # The distortion parameters, size depending on the distortion model.
    # For "plumb_bob", the 5 parameters are: (k1, k2, t1, t2, k3).
    float64[] D
    
    # Intrinsic camera matrix for the raw (distorted) images.
    #     [fx  0 cx]
    # K = [ 0 fy cy]
    #     [ 0  0  1]
    # Projects 3D points in the camera coordinate frame to 2D pixel
    # coordinates using the focal lengths (fx, fy) and principal point
    # (cx, cy).
    float64[9]  K # 3x3 row-major matrix
    
    # Rectification matrix (stereo cameras only)
    # A rotation matrix aligning the camera coordinate system to the ideal
    # stereo image plane so that epipolar lines in both stereo images are
    # parallel.
    float64[9]  R # 3x3 row-major matrix
    
    # Projection/camera matrix
    #     [fx'  0  cx' Tx]
    # P = [ 0  fy' cy' Ty]
    #     [ 0   0   1   0]
    # By convention, this matrix specifies the intrinsic (camera) matrix
    #  of the processed (rectified) image. That is, the left 3x3 portion
    #  is the normal camera intrinsic matrix for the rectified image.
    # It projects 3D points in the camera coordinate frame to 2D pixel
    #  coordinates using the focal lengths (fx', fy') and principal point
    #  (cx', cy') - these may differ from the values in K.
    # For monocular cameras, Tx = Ty = 0. Normally, monocular cameras will
    #  also have R = the identity and P[1:3,1:3] = K.
    # For a stereo pair, the fourth column [Tx Ty 0]' is related to the
    #  position of the optical center of the second camera in the first
    #  camera's frame. We assume Tz = 0 so both cameras are in the same
    #  stereo image plane. The first camera always has Tx = Ty = 0. For
    #  the right (second) camera of a horizontal stereo pair, Ty = 0 and
    #  Tx = -fx' * B, where B is the baseline between the cameras.
    # Given a 3D point [X Y Z]', the projection (x, y) of the point onto
    #  the rectified image is given by:
    #  [u v w]' = P * [X Y Z 1]'
    #         x = u / w
    #         y = v / w
    #  This holds for both images of a stereo pair.
    float64[12] P # 3x4 row-major matrix
    
    
    #######################################################################
    #                      Operational Parameters                         #
    #######################################################################
    # These define the image region actually captured by the camera       #
    # driver. Although they affect the geometry of the output image, they #
    # may be changed freely without recalibrating the camera.             #
    #######################################################################
    
    # Binning refers here to any camera setting which combines rectangular
    #  neighborhoods of pixels into larger "super-pixels." It reduces the
    #  resolution of the output image to
    #  (width / binning_x) x (height / binning_y).
    # The default values binning_x = binning_y = 0 is considered the same
    #  as binning_x = binning_y = 1 (no subsampling).
    uint32 binning_x
    uint32 binning_y
    
    # Region of interest (subwindow of full camera resolution), given in
    #  full resolution (unbinned) image coordinates. A particular ROI
    #  always denotes the same window of pixels on the camera sensor,
    #  regardless of binning settings.
    # The default setting of roi (all values 0) is considered the same as
    #  full resolution (roi.width = width, roi.height = height).
    RegionOfInterest roi
    
    ================================================================================
    MSG: sensor_msgs/RegionOfInterest
    # This message is used to specify a region of interest within an image.
    #
    # When used to specify the ROI setting of the camera when the image was
    # taken, the height and width fields should either match the height and
    # width fields for the associated image; or height = width = 0
    # indicates that the full resolution image was captured.
    
    uint32 x_offset  # Leftmost pixel of the ROI
                     # (0 if the ROI includes the left edge of the image)
    uint32 y_offset  # Topmost pixel of the ROI
                     # (0 if the ROI includes the top edge of the image)
    uint32 height    # Height of ROI
    uint32 width     # Width of ROI
    
    # True if a distinct rectified ROI should be calculated from the "raw"
    # ROI in this message. Typically this should be False if the full image
    # is captured (ROI not used), and True if a subwindow is captured (ROI
    # used).
    bool do_rectify
    
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
    MSG: calibration_msgs/LaserMeasurement
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
    MSG: calibration_msgs/JointStateCalibrationPattern
    Header header
    geometry_msgs/Point[]  object_points
    sensor_msgs/JointState[] joint_points
    
    
    ================================================================================
    MSG: calibration_msgs/ChainMeasurement
    Header header
    string chain_id
    sensor_msgs/JointState chain_state
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new RobotMeasurement(null);
    if (msg.sample_id !== undefined) {
      resolved.sample_id = msg.sample_id;
    }
    else {
      resolved.sample_id = ''
    }

    if (msg.target_id !== undefined) {
      resolved.target_id = msg.target_id;
    }
    else {
      resolved.target_id = ''
    }

    if (msg.chain_id !== undefined) {
      resolved.chain_id = msg.chain_id;
    }
    else {
      resolved.chain_id = ''
    }

    if (msg.M_cam !== undefined) {
      resolved.M_cam = new Array(msg.M_cam.length);
      for (let i = 0; i < resolved.M_cam.length; ++i) {
        resolved.M_cam[i] = CameraMeasurement.Resolve(msg.M_cam[i]);
      }
    }
    else {
      resolved.M_cam = []
    }

    if (msg.M_laser !== undefined) {
      resolved.M_laser = new Array(msg.M_laser.length);
      for (let i = 0; i < resolved.M_laser.length; ++i) {
        resolved.M_laser[i] = LaserMeasurement.Resolve(msg.M_laser[i]);
      }
    }
    else {
      resolved.M_laser = []
    }

    if (msg.M_chain !== undefined) {
      resolved.M_chain = new Array(msg.M_chain.length);
      for (let i = 0; i < resolved.M_chain.length; ++i) {
        resolved.M_chain[i] = ChainMeasurement.Resolve(msg.M_chain[i]);
      }
    }
    else {
      resolved.M_chain = []
    }

    return resolved;
    }
};

module.exports = RobotMeasurement;
