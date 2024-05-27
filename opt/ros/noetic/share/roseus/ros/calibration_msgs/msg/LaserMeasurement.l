;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::LaserMeasurement)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'LaserMeasurement (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::LASERMEASUREMENT")
  (make-package "CALIBRATION_MSGS::LASERMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude LaserMeasurement.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calibration_msgs::LaserMeasurement
  :super ros::object
  :slots (_header _laser_id _joint_points _verbose _snapshot _laser_image _image_features _joint_features ))

(defmethod calibration_msgs::LaserMeasurement
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:laser_id __laser_id) "")
    ((:joint_points __joint_points) ())
    ((:verbose __verbose) nil)
    ((:snapshot __snapshot) (instance calibration_msgs::DenseLaserSnapshot :init))
    ((:laser_image __laser_image) (instance sensor_msgs::Image :init))
    ((:image_features __image_features) (instance calibration_msgs::CalibrationPattern :init))
    ((:joint_features __joint_features) (instance calibration_msgs::JointStateCalibrationPattern :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _laser_id (string __laser_id))
   (setq _joint_points __joint_points)
   (setq _verbose __verbose)
   (setq _snapshot __snapshot)
   (setq _laser_image __laser_image)
   (setq _image_features __image_features)
   (setq _joint_features __joint_features)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:laser_id
   (&optional __laser_id)
   (if __laser_id (setq _laser_id __laser_id)) _laser_id)
  (:joint_points
   (&rest __joint_points)
   (if (keywordp (car __joint_points))
       (send* _joint_points __joint_points)
     (progn
       (if __joint_points (setq _joint_points (car __joint_points)))
       _joint_points)))
  (:verbose
   (&optional (__verbose :null))
   (if (not (eq __verbose :null)) (setq _verbose __verbose)) _verbose)
  (:snapshot
   (&rest __snapshot)
   (if (keywordp (car __snapshot))
       (send* _snapshot __snapshot)
     (progn
       (if __snapshot (setq _snapshot (car __snapshot)))
       _snapshot)))
  (:laser_image
   (&rest __laser_image)
   (if (keywordp (car __laser_image))
       (send* _laser_image __laser_image)
     (progn
       (if __laser_image (setq _laser_image (car __laser_image)))
       _laser_image)))
  (:image_features
   (&rest __image_features)
   (if (keywordp (car __image_features))
       (send* _image_features __image_features)
     (progn
       (if __image_features (setq _image_features (car __image_features)))
       _image_features)))
  (:joint_features
   (&rest __joint_features)
   (if (keywordp (car __joint_features))
       (send* _joint_features __joint_features)
     (progn
       (if __joint_features (setq _joint_features (car __joint_features)))
       _joint_features)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _laser_id
    4 (length _laser_id)
    ;; sensor_msgs/JointState[] _joint_points
    (apply #'+ (send-all _joint_points :serialization-length)) 4
    ;; bool _verbose
    1
    ;; calibration_msgs/DenseLaserSnapshot _snapshot
    (send _snapshot :serialization-length)
    ;; sensor_msgs/Image _laser_image
    (send _laser_image :serialization-length)
    ;; calibration_msgs/CalibrationPattern _image_features
    (send _image_features :serialization-length)
    ;; calibration_msgs/JointStateCalibrationPattern _joint_features
    (send _joint_features :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _laser_id
       (write-long (length _laser_id) s) (princ _laser_id s)
     ;; sensor_msgs/JointState[] _joint_points
     (write-long (length _joint_points) s)
     (dolist (elem _joint_points)
       (send elem :serialize s)
       )
     ;; bool _verbose
       (if _verbose (write-byte -1 s) (write-byte 0 s))
     ;; calibration_msgs/DenseLaserSnapshot _snapshot
       (send _snapshot :serialize s)
     ;; sensor_msgs/Image _laser_image
       (send _laser_image :serialize s)
     ;; calibration_msgs/CalibrationPattern _image_features
       (send _image_features :serialize s)
     ;; calibration_msgs/JointStateCalibrationPattern _joint_features
       (send _joint_features :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _laser_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _laser_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/JointState[] _joint_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_points (let (r) (dotimes (i n) (push (instance sensor_msgs::JointState :init) r)) r))
     (dolist (elem- _joint_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; bool _verbose
     (setq _verbose (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; calibration_msgs/DenseLaserSnapshot _snapshot
     (send _snapshot :deserialize buf ptr-) (incf ptr- (send _snapshot :serialization-length))
   ;; sensor_msgs/Image _laser_image
     (send _laser_image :deserialize buf ptr-) (incf ptr- (send _laser_image :serialization-length))
   ;; calibration_msgs/CalibrationPattern _image_features
     (send _image_features :deserialize buf ptr-) (incf ptr- (send _image_features :serialization-length))
   ;; calibration_msgs/JointStateCalibrationPattern _joint_features
     (send _joint_features :deserialize buf ptr-) (incf ptr- (send _joint_features :serialization-length))
   ;;
   self)
  )

(setf (get calibration_msgs::LaserMeasurement :md5sum-) "7fa7e818b1234a443aa5d8e315175d17")
(setf (get calibration_msgs::LaserMeasurement :datatype-) "calibration_msgs/LaserMeasurement")
(setf (get calibration_msgs::LaserMeasurement :definition-)
      "Header header
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


")



(provide :calibration_msgs/LaserMeasurement "7fa7e818b1234a443aa5d8e315175d17")


