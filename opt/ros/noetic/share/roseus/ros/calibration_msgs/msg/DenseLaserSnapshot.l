;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::DenseLaserSnapshot)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'DenseLaserSnapshot (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::DENSELASERSNAPSHOT")
  (make-package "CALIBRATION_MSGS::DENSELASERSNAPSHOT"))

(in-package "ROS")
;;//! \htmlinclude DenseLaserSnapshot.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calibration_msgs::DenseLaserSnapshot
  :super ros::object
  :slots (_header _angle_min _angle_max _angle_increment _time_increment _range_min _range_max _readings_per_scan _num_scans _ranges _intensities _scan_start ))

(defmethod calibration_msgs::DenseLaserSnapshot
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:angle_min __angle_min) 0.0)
    ((:angle_max __angle_max) 0.0)
    ((:angle_increment __angle_increment) 0.0)
    ((:time_increment __time_increment) 0.0)
    ((:range_min __range_min) 0.0)
    ((:range_max __range_max) 0.0)
    ((:readings_per_scan __readings_per_scan) 0)
    ((:num_scans __num_scans) 0)
    ((:ranges __ranges) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:intensities __intensities) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:scan_start __scan_start) (let (r) (dotimes (i 0) (push (instance ros::time :init) r)) r))
    )
   (send-super :init)
   (setq _header __header)
   (setq _angle_min (float __angle_min))
   (setq _angle_max (float __angle_max))
   (setq _angle_increment (float __angle_increment))
   (setq _time_increment (float __time_increment))
   (setq _range_min (float __range_min))
   (setq _range_max (float __range_max))
   (setq _readings_per_scan (round __readings_per_scan))
   (setq _num_scans (round __num_scans))
   (setq _ranges __ranges)
   (setq _intensities __intensities)
   (setq _scan_start __scan_start)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:angle_min
   (&optional __angle_min)
   (if __angle_min (setq _angle_min __angle_min)) _angle_min)
  (:angle_max
   (&optional __angle_max)
   (if __angle_max (setq _angle_max __angle_max)) _angle_max)
  (:angle_increment
   (&optional __angle_increment)
   (if __angle_increment (setq _angle_increment __angle_increment)) _angle_increment)
  (:time_increment
   (&optional __time_increment)
   (if __time_increment (setq _time_increment __time_increment)) _time_increment)
  (:range_min
   (&optional __range_min)
   (if __range_min (setq _range_min __range_min)) _range_min)
  (:range_max
   (&optional __range_max)
   (if __range_max (setq _range_max __range_max)) _range_max)
  (:readings_per_scan
   (&optional __readings_per_scan)
   (if __readings_per_scan (setq _readings_per_scan __readings_per_scan)) _readings_per_scan)
  (:num_scans
   (&optional __num_scans)
   (if __num_scans (setq _num_scans __num_scans)) _num_scans)
  (:ranges
   (&optional __ranges)
   (if __ranges (setq _ranges __ranges)) _ranges)
  (:intensities
   (&optional __intensities)
   (if __intensities (setq _intensities __intensities)) _intensities)
  (:scan_start
   (&optional __scan_start)
   (if __scan_start (setq _scan_start __scan_start)) _scan_start)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; float32 _angle_min
    4
    ;; float32 _angle_max
    4
    ;; float32 _angle_increment
    4
    ;; float32 _time_increment
    4
    ;; float32 _range_min
    4
    ;; float32 _range_max
    4
    ;; uint32 _readings_per_scan
    4
    ;; uint32 _num_scans
    4
    ;; float32[] _ranges
    (* 4    (length _ranges)) 4
    ;; float32[] _intensities
    (* 4    (length _intensities)) 4
    ;; time[] _scan_start
    (* 8    (length _scan_start)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; float32 _angle_min
       (sys::poke _angle_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_max
       (sys::poke _angle_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _angle_increment
       (sys::poke _angle_increment (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _time_increment
       (sys::poke _time_increment (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _range_min
       (sys::poke _range_min (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _range_max
       (sys::poke _range_max (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; uint32 _readings_per_scan
       (write-long _readings_per_scan s)
     ;; uint32 _num_scans
       (write-long _num_scans s)
     ;; float32[] _ranges
     (write-long (length _ranges) s)
     (dotimes (i (length _ranges))
       (sys::poke (elt _ranges i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _intensities
     (write-long (length _intensities) s)
     (dotimes (i (length _intensities))
       (sys::poke (elt _intensities i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; time[] _scan_start
     (write-long (length _scan_start) s)
     (dotimes (i (length _scan_start))
       (write-long (send (elt _scan_start i) :sec) s) (write-long (send (elt _scan_start i) :nsec) s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; float32 _angle_min
     (setq _angle_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_max
     (setq _angle_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _angle_increment
     (setq _angle_increment (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _time_increment
     (setq _time_increment (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _range_min
     (setq _range_min (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _range_max
     (setq _range_max (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; uint32 _readings_per_scan
     (setq _readings_per_scan (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _num_scans
     (setq _num_scans (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; float32[] _ranges
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _ranges (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _ranges i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _intensities
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _intensities (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _intensities i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; time[] _scan_start
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _scan_start (let (r) (dotimes (i n) (push (instance ros::time :init) r)) r))
     (dolist (elem- _scan_start)
     (send elem- :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send elem- :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get calibration_msgs::DenseLaserSnapshot :md5sum-) "deb2810d3530db3484f886a81243195d")
(setf (get calibration_msgs::DenseLaserSnapshot :datatype-) "calibration_msgs/DenseLaserSnapshot")
(setf (get calibration_msgs::DenseLaserSnapshot :definition-)
      "# Provides all the state & sensor information for
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

")



(provide :calibration_msgs/DenseLaserSnapshot "deb2810d3530db3484f886a81243195d")


