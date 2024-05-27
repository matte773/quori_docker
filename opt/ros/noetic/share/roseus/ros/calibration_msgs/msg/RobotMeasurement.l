;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::RobotMeasurement)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'RobotMeasurement (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::ROBOTMEASUREMENT")
  (make-package "CALIBRATION_MSGS::ROBOTMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude RobotMeasurement.msg.html


(defclass calibration_msgs::RobotMeasurement
  :super ros::object
  :slots (_sample_id _target_id _chain_id _M_cam _M_laser _M_chain ))

(defmethod calibration_msgs::RobotMeasurement
  (:init
   (&key
    ((:sample_id __sample_id) "")
    ((:target_id __target_id) "")
    ((:chain_id __chain_id) "")
    ((:M_cam __M_cam) ())
    ((:M_laser __M_laser) ())
    ((:M_chain __M_chain) ())
    )
   (send-super :init)
   (setq _sample_id (string __sample_id))
   (setq _target_id (string __target_id))
   (setq _chain_id (string __chain_id))
   (setq _M_cam __M_cam)
   (setq _M_laser __M_laser)
   (setq _M_chain __M_chain)
   self)
  (:sample_id
   (&optional __sample_id)
   (if __sample_id (setq _sample_id __sample_id)) _sample_id)
  (:target_id
   (&optional __target_id)
   (if __target_id (setq _target_id __target_id)) _target_id)
  (:chain_id
   (&optional __chain_id)
   (if __chain_id (setq _chain_id __chain_id)) _chain_id)
  (:M_cam
   (&rest __M_cam)
   (if (keywordp (car __M_cam))
       (send* _M_cam __M_cam)
     (progn
       (if __M_cam (setq _M_cam (car __M_cam)))
       _M_cam)))
  (:M_laser
   (&rest __M_laser)
   (if (keywordp (car __M_laser))
       (send* _M_laser __M_laser)
     (progn
       (if __M_laser (setq _M_laser (car __M_laser)))
       _M_laser)))
  (:M_chain
   (&rest __M_chain)
   (if (keywordp (car __M_chain))
       (send* _M_chain __M_chain)
     (progn
       (if __M_chain (setq _M_chain (car __M_chain)))
       _M_chain)))
  (:serialization-length
   ()
   (+
    ;; string _sample_id
    4 (length _sample_id)
    ;; string _target_id
    4 (length _target_id)
    ;; string _chain_id
    4 (length _chain_id)
    ;; calibration_msgs/CameraMeasurement[] _M_cam
    (apply #'+ (send-all _M_cam :serialization-length)) 4
    ;; calibration_msgs/LaserMeasurement[] _M_laser
    (apply #'+ (send-all _M_laser :serialization-length)) 4
    ;; calibration_msgs/ChainMeasurement[] _M_chain
    (apply #'+ (send-all _M_chain :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _sample_id
       (write-long (length _sample_id) s) (princ _sample_id s)
     ;; string _target_id
       (write-long (length _target_id) s) (princ _target_id s)
     ;; string _chain_id
       (write-long (length _chain_id) s) (princ _chain_id s)
     ;; calibration_msgs/CameraMeasurement[] _M_cam
     (write-long (length _M_cam) s)
     (dolist (elem _M_cam)
       (send elem :serialize s)
       )
     ;; calibration_msgs/LaserMeasurement[] _M_laser
     (write-long (length _M_laser) s)
     (dolist (elem _M_laser)
       (send elem :serialize s)
       )
     ;; calibration_msgs/ChainMeasurement[] _M_chain
     (write-long (length _M_chain) s)
     (dolist (elem _M_chain)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _sample_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _sample_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _target_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _target_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _chain_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chain_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; calibration_msgs/CameraMeasurement[] _M_cam
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _M_cam (let (r) (dotimes (i n) (push (instance calibration_msgs::CameraMeasurement :init) r)) r))
     (dolist (elem- _M_cam)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; calibration_msgs/LaserMeasurement[] _M_laser
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _M_laser (let (r) (dotimes (i n) (push (instance calibration_msgs::LaserMeasurement :init) r)) r))
     (dolist (elem- _M_laser)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; calibration_msgs/ChainMeasurement[] _M_chain
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _M_chain (let (r) (dotimes (i n) (push (instance calibration_msgs::ChainMeasurement :init) r)) r))
     (dolist (elem- _M_chain)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get calibration_msgs::RobotMeasurement :md5sum-) "fe22486c078efbf7892430dd0b99305c")
(setf (get calibration_msgs::RobotMeasurement :datatype-) "calibration_msgs/RobotMeasurement")
(setf (get calibration_msgs::RobotMeasurement :definition-)
      "string sample_id    # Tag to figure out which yaml file this was generated from

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
# camera namespace on topic \"camera_info\" and accompanied by up to five
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
# self-calibrating systems may \"recalibrate\" frequently.              #
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
# sensor_msgs/distortion_models.h. For most cameras, \"plumb_bob\" - a
# simple model of radial and tangential distortion - is sufficient.
string distortion_model

# The distortion parameters, size depending on the distortion model.
# For \"plumb_bob\", the 5 parameters are: (k1, k2, t1, t2, k3).
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
#  neighborhoods of pixels into larger \"super-pixels.\" It reduces the
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

# True if a distinct rectified ROI should be calculated from the \"raw\"
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

")



(provide :calibration_msgs/RobotMeasurement "fe22486c078efbf7892430dd0b99305c")


