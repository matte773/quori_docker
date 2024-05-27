;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::DenseLaserObjectFeatures)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'DenseLaserObjectFeatures (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::DENSELASEROBJECTFEATURES")
  (make-package "CALIBRATION_MSGS::DENSELASEROBJECTFEATURES"))

(in-package "ROS")
;;//! \htmlinclude DenseLaserObjectFeatures.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calibration_msgs::DenseLaserObjectFeatures
  :super ros::object
  :slots (_header _dense_laser_points _object_points _success ))

(defmethod calibration_msgs::DenseLaserObjectFeatures
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:dense_laser_points __dense_laser_points) ())
    ((:object_points __object_points) ())
    ((:success __success) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _dense_laser_points __dense_laser_points)
   (setq _object_points __object_points)
   (setq _success (round __success))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:dense_laser_points
   (&rest __dense_laser_points)
   (if (keywordp (car __dense_laser_points))
       (send* _dense_laser_points __dense_laser_points)
     (progn
       (if __dense_laser_points (setq _dense_laser_points (car __dense_laser_points)))
       _dense_laser_points)))
  (:object_points
   (&rest __object_points)
   (if (keywordp (car __object_points))
       (send* _object_points __object_points)
     (progn
       (if __object_points (setq _object_points (car __object_points)))
       _object_points)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; calibration_msgs/DenseLaserPoint[] _dense_laser_points
    (apply #'+ (send-all _dense_laser_points :serialization-length)) 4
    ;; geometry_msgs/Point[] _object_points
    (apply #'+ (send-all _object_points :serialization-length)) 4
    ;; uint8 _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; calibration_msgs/DenseLaserPoint[] _dense_laser_points
     (write-long (length _dense_laser_points) s)
     (dolist (elem _dense_laser_points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _object_points
     (write-long (length _object_points) s)
     (dolist (elem _object_points)
       (send elem :serialize s)
       )
     ;; uint8 _success
       (write-byte _success s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; calibration_msgs/DenseLaserPoint[] _dense_laser_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _dense_laser_points (let (r) (dotimes (i n) (push (instance calibration_msgs::DenseLaserPoint :init) r)) r))
     (dolist (elem- _dense_laser_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _object_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _object_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _success
     (setq _success (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get calibration_msgs::DenseLaserObjectFeatures :md5sum-) "b642d46e47d54e00f98a3d98b02b5cc6")
(setf (get calibration_msgs::DenseLaserObjectFeatures :datatype-) "calibration_msgs/DenseLaserObjectFeatures")
(setf (get calibration_msgs::DenseLaserObjectFeatures :definition-)
      "# Synchronized with sensor output
Header header

# Pixel locations of detected features
DenseLaserPoint[] dense_laser_points

# Defines geometry of detected features in some \"object\" coordinate frame
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

")



(provide :calibration_msgs/DenseLaserObjectFeatures "b642d46e47d54e00f98a3d98b02b5cc6")


