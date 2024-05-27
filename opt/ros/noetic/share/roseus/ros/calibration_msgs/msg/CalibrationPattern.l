;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::CalibrationPattern)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'CalibrationPattern (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::CALIBRATIONPATTERN")
  (make-package "CALIBRATION_MSGS::CALIBRATIONPATTERN"))

(in-package "ROS")
;;//! \htmlinclude CalibrationPattern.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calibration_msgs::CalibrationPattern
  :super ros::object
  :slots (_header _object_points _image_points _success ))

(defmethod calibration_msgs::CalibrationPattern
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object_points __object_points) ())
    ((:image_points __image_points) ())
    ((:success __success) 0)
    )
   (send-super :init)
   (setq _header __header)
   (setq _object_points __object_points)
   (setq _image_points __image_points)
   (setq _success (round __success))
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:object_points
   (&rest __object_points)
   (if (keywordp (car __object_points))
       (send* _object_points __object_points)
     (progn
       (if __object_points (setq _object_points (car __object_points)))
       _object_points)))
  (:image_points
   (&rest __image_points)
   (if (keywordp (car __image_points))
       (send* _image_points __image_points)
     (progn
       (if __image_points (setq _image_points (car __image_points)))
       _image_points)))
  (:success
   (&optional __success)
   (if __success (setq _success __success)) _success)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point[] _object_points
    (apply #'+ (send-all _object_points :serialization-length)) 4
    ;; geometry_msgs/Point[] _image_points
    (apply #'+ (send-all _image_points :serialization-length)) 4
    ;; uint8 _success
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; geometry_msgs/Point[] _object_points
     (write-long (length _object_points) s)
     (dolist (elem _object_points)
       (send elem :serialize s)
       )
     ;; geometry_msgs/Point[] _image_points
     (write-long (length _image_points) s)
     (dolist (elem _image_points)
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
   ;; geometry_msgs/Point[] _object_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _object_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _object_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; geometry_msgs/Point[] _image_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _image_points (let (r) (dotimes (i n) (push (instance geometry_msgs::Point :init) r)) r))
     (dolist (elem- _image_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; uint8 _success
     (setq _success (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get calibration_msgs::CalibrationPattern :md5sum-) "5854af5462e19a169f68917c875a6238")
(setf (get calibration_msgs::CalibrationPattern :datatype-) "calibration_msgs/CalibrationPattern")
(setf (get calibration_msgs::CalibrationPattern :definition-)
      "Header header
geometry_msgs/Point[] object_points
geometry_msgs/Point[] image_points
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
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

")



(provide :calibration_msgs/CalibrationPattern "5854af5462e19a169f68917c875a6238")


