; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-msg)


;//! \htmlinclude LaserMeasurement.msg.html

(cl:defclass <LaserMeasurement> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (laser_id
    :reader laser_id
    :initarg :laser_id
    :type cl:string
    :initform "")
   (joint_points
    :reader joint_points
    :initarg :joint_points
    :type (cl:vector sensor_msgs-msg:JointState)
   :initform (cl:make-array 0 :element-type 'sensor_msgs-msg:JointState :initial-element (cl:make-instance 'sensor_msgs-msg:JointState)))
   (verbose
    :reader verbose
    :initarg :verbose
    :type cl:boolean
    :initform cl:nil)
   (snapshot
    :reader snapshot
    :initarg :snapshot
    :type calibration_msgs-msg:DenseLaserSnapshot
    :initform (cl:make-instance 'calibration_msgs-msg:DenseLaserSnapshot))
   (laser_image
    :reader laser_image
    :initarg :laser_image
    :type sensor_msgs-msg:Image
    :initform (cl:make-instance 'sensor_msgs-msg:Image))
   (image_features
    :reader image_features
    :initarg :image_features
    :type calibration_msgs-msg:CalibrationPattern
    :initform (cl:make-instance 'calibration_msgs-msg:CalibrationPattern))
   (joint_features
    :reader joint_features
    :initarg :joint_features
    :type calibration_msgs-msg:JointStateCalibrationPattern
    :initform (cl:make-instance 'calibration_msgs-msg:JointStateCalibrationPattern)))
)

(cl:defclass LaserMeasurement (<LaserMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <LaserMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'LaserMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-msg:<LaserMeasurement> is deprecated: use calibration_msgs-msg:LaserMeasurement instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <LaserMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:header-val is deprecated.  Use calibration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'laser_id-val :lambda-list '(m))
(cl:defmethod laser_id-val ((m <LaserMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:laser_id-val is deprecated.  Use calibration_msgs-msg:laser_id instead.")
  (laser_id m))

(cl:ensure-generic-function 'joint_points-val :lambda-list '(m))
(cl:defmethod joint_points-val ((m <LaserMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:joint_points-val is deprecated.  Use calibration_msgs-msg:joint_points instead.")
  (joint_points m))

(cl:ensure-generic-function 'verbose-val :lambda-list '(m))
(cl:defmethod verbose-val ((m <LaserMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:verbose-val is deprecated.  Use calibration_msgs-msg:verbose instead.")
  (verbose m))

(cl:ensure-generic-function 'snapshot-val :lambda-list '(m))
(cl:defmethod snapshot-val ((m <LaserMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:snapshot-val is deprecated.  Use calibration_msgs-msg:snapshot instead.")
  (snapshot m))

(cl:ensure-generic-function 'laser_image-val :lambda-list '(m))
(cl:defmethod laser_image-val ((m <LaserMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:laser_image-val is deprecated.  Use calibration_msgs-msg:laser_image instead.")
  (laser_image m))

(cl:ensure-generic-function 'image_features-val :lambda-list '(m))
(cl:defmethod image_features-val ((m <LaserMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:image_features-val is deprecated.  Use calibration_msgs-msg:image_features instead.")
  (image_features m))

(cl:ensure-generic-function 'joint_features-val :lambda-list '(m))
(cl:defmethod joint_features-val ((m <LaserMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:joint_features-val is deprecated.  Use calibration_msgs-msg:joint_features instead.")
  (joint_features m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <LaserMeasurement>) ostream)
  "Serializes a message object of type '<LaserMeasurement>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'laser_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'laser_id))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'verbose) 1 0)) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'snapshot) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'laser_image) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'image_features) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'joint_features) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <LaserMeasurement>) istream)
  "Deserializes a message object of type '<LaserMeasurement>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'laser_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'laser_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'sensor_msgs-msg:JointState))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:slot-value msg 'verbose) (cl:not (cl:zerop (cl:read-byte istream))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'snapshot) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'laser_image) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'image_features) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'joint_features) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<LaserMeasurement>)))
  "Returns string type for a message object of type '<LaserMeasurement>"
  "calibration_msgs/LaserMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'LaserMeasurement)))
  "Returns string type for a message object of type 'LaserMeasurement"
  "calibration_msgs/LaserMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<LaserMeasurement>)))
  "Returns md5sum for a message object of type '<LaserMeasurement>"
  "7fa7e818b1234a443aa5d8e315175d17")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'LaserMeasurement)))
  "Returns md5sum for a message object of type 'LaserMeasurement"
  "7fa7e818b1234a443aa5d8e315175d17")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<LaserMeasurement>)))
  "Returns full string definition for message of type '<LaserMeasurement>"
  (cl:format cl:nil "Header header~%string laser_id~%sensor_msgs/JointState[] joint_points~%~%# True -> The extra debugging fields are populated~%bool verbose~%~%# Extra, partially processed data. Only needed for debugging~%calibration_msgs/DenseLaserSnapshot snapshot~%sensor_msgs/Image laser_image~%calibration_msgs/CalibrationPattern image_features~%calibration_msgs/JointStateCalibrationPattern joint_features~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: calibration_msgs/DenseLaserSnapshot~%# Provides all the state & sensor information for~%# a single sweep of laser attached to some mechanism.~%# Most likely, this will be used with PR2's tilting laser mechanism~%Header header~%~%# Store the laser intrinsics. This is very similar to the~%# intrinsics commonly stored in ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%float32 time_increment   # time between measurements [seconds]~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%# Define the size of the binary data~%uint32 readings_per_scan    # (Width)~%uint32 num_scans            # (Height)~%~%# 2D Arrays storing laser data.~%# We can think of each type data as being a single channel image.~%# Each row of the image has data from a single scan, and scans are~%# concatenated to form the entire 'image'.~%float32[] ranges            # (Image data)~%float32[] intensities       # (Image data)~%~%# Store the start time of each scan~%time[] scan_start~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: calibration_msgs/CalibrationPattern~%Header header~%geometry_msgs/Point[] object_points~%geometry_msgs/Point[] image_points~%uint8 success~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: calibration_msgs/JointStateCalibrationPattern~%Header header~%geometry_msgs/Point[]  object_points~%sensor_msgs/JointState[] joint_points~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'LaserMeasurement)))
  "Returns full string definition for message of type 'LaserMeasurement"
  (cl:format cl:nil "Header header~%string laser_id~%sensor_msgs/JointState[] joint_points~%~%# True -> The extra debugging fields are populated~%bool verbose~%~%# Extra, partially processed data. Only needed for debugging~%calibration_msgs/DenseLaserSnapshot snapshot~%sensor_msgs/Image laser_image~%calibration_msgs/CalibrationPattern image_features~%calibration_msgs/JointStateCalibrationPattern joint_features~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%================================================================================~%MSG: calibration_msgs/DenseLaserSnapshot~%# Provides all the state & sensor information for~%# a single sweep of laser attached to some mechanism.~%# Most likely, this will be used with PR2's tilting laser mechanism~%Header header~%~%# Store the laser intrinsics. This is very similar to the~%# intrinsics commonly stored in ~%float32 angle_min        # start angle of the scan [rad]~%float32 angle_max        # end angle of the scan [rad]~%float32 angle_increment  # angular distance between measurements [rad]~%float32 time_increment   # time between measurements [seconds]~%float32 range_min        # minimum range value [m]~%float32 range_max        # maximum range value [m]~%~%# Define the size of the binary data~%uint32 readings_per_scan    # (Width)~%uint32 num_scans            # (Height)~%~%# 2D Arrays storing laser data.~%# We can think of each type data as being a single channel image.~%# Each row of the image has data from a single scan, and scans are~%# concatenated to form the entire 'image'.~%float32[] ranges            # (Image data)~%float32[] intensities       # (Image data)~%~%# Store the start time of each scan~%time[] scan_start~%~%================================================================================~%MSG: sensor_msgs/Image~%# This message contains an uncompressed image~%# (0, 0) is at top-left corner of image~%#~%~%Header header        # Header timestamp should be acquisition time of image~%                     # Header frame_id should be optical frame of camera~%                     # origin of frame should be optical center of camera~%                     # +x should point to the right in the image~%                     # +y should point down in the image~%                     # +z should point into to plane of the image~%                     # If the frame_id here and the frame_id of the CameraInfo~%                     # message associated with the image conflict~%                     # the behavior is undefined~%~%uint32 height         # image height, that is, number of rows~%uint32 width          # image width, that is, number of columns~%~%# The legal values for encoding are in file src/image_encodings.cpp~%# If you want to standardize a new string format, join~%# ros-users@lists.sourceforge.net and send an email proposing a new encoding.~%~%string encoding       # Encoding of pixels -- channel meaning, ordering, size~%                      # taken from the list of strings in include/sensor_msgs/image_encodings.h~%~%uint8 is_bigendian    # is this data bigendian?~%uint32 step           # Full row length in bytes~%uint8[] data          # actual matrix data, size is (step * rows)~%~%================================================================================~%MSG: calibration_msgs/CalibrationPattern~%Header header~%geometry_msgs/Point[] object_points~%geometry_msgs/Point[] image_points~%uint8 success~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%================================================================================~%MSG: calibration_msgs/JointStateCalibrationPattern~%Header header~%geometry_msgs/Point[]  object_points~%sensor_msgs/JointState[] joint_points~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <LaserMeasurement>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'laser_id))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'snapshot))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'laser_image))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'image_features))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'joint_features))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <LaserMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'LaserMeasurement
    (cl:cons ':header (header msg))
    (cl:cons ':laser_id (laser_id msg))
    (cl:cons ':joint_points (joint_points msg))
    (cl:cons ':verbose (verbose msg))
    (cl:cons ':snapshot (snapshot msg))
    (cl:cons ':laser_image (laser_image msg))
    (cl:cons ':image_features (image_features msg))
    (cl:cons ':joint_features (joint_features msg))
))
