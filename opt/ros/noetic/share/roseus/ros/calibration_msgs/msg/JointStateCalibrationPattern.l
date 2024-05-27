;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::JointStateCalibrationPattern)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'JointStateCalibrationPattern (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::JOINTSTATECALIBRATIONPATTERN")
  (make-package "CALIBRATION_MSGS::JOINTSTATECALIBRATIONPATTERN"))

(in-package "ROS")
;;//! \htmlinclude JointStateCalibrationPattern.msg.html
(if (not (find-package "GEOMETRY_MSGS"))
  (ros::roseus-add-msgs "geometry_msgs"))
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calibration_msgs::JointStateCalibrationPattern
  :super ros::object
  :slots (_header _object_points _joint_points ))

(defmethod calibration_msgs::JointStateCalibrationPattern
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:object_points __object_points) ())
    ((:joint_points __joint_points) ())
    )
   (send-super :init)
   (setq _header __header)
   (setq _object_points __object_points)
   (setq _joint_points __joint_points)
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
  (:joint_points
   (&rest __joint_points)
   (if (keywordp (car __joint_points))
       (send* _joint_points __joint_points)
     (progn
       (if __joint_points (setq _joint_points (car __joint_points)))
       _joint_points)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; geometry_msgs/Point[] _object_points
    (apply #'+ (send-all _object_points :serialization-length)) 4
    ;; sensor_msgs/JointState[] _joint_points
    (apply #'+ (send-all _joint_points :serialization-length)) 4
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
     ;; sensor_msgs/JointState[] _joint_points
     (write-long (length _joint_points) s)
     (dolist (elem _joint_points)
       (send elem :serialize s)
       )
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
   ;; sensor_msgs/JointState[] _joint_points
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_points (let (r) (dotimes (i n) (push (instance sensor_msgs::JointState :init) r)) r))
     (dolist (elem- _joint_points)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get calibration_msgs::JointStateCalibrationPattern :md5sum-) "c80e9cf8e7942eba44a6d32e3c75bf59")
(setf (get calibration_msgs::JointStateCalibrationPattern :datatype-) "calibration_msgs/JointStateCalibrationPattern")
(setf (get calibration_msgs::JointStateCalibrationPattern :definition-)
      "Header header
geometry_msgs/Point[]  object_points
sensor_msgs/JointState[] joint_points


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

")



(provide :calibration_msgs/JointStateCalibrationPattern "c80e9cf8e7942eba44a6d32e3c75bf59")


