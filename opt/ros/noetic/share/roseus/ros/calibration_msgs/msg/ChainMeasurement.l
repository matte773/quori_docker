;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::ChainMeasurement)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'ChainMeasurement (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::CHAINMEASUREMENT")
  (make-package "CALIBRATION_MSGS::CHAINMEASUREMENT"))

(in-package "ROS")
;;//! \htmlinclude ChainMeasurement.msg.html
(if (not (find-package "SENSOR_MSGS"))
  (ros::roseus-add-msgs "sensor_msgs"))
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calibration_msgs::ChainMeasurement
  :super ros::object
  :slots (_header _chain_id _chain_state ))

(defmethod calibration_msgs::ChainMeasurement
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:chain_id __chain_id) "")
    ((:chain_state __chain_state) (instance sensor_msgs::JointState :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _chain_id (string __chain_id))
   (setq _chain_state __chain_state)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:chain_id
   (&optional __chain_id)
   (if __chain_id (setq _chain_id __chain_id)) _chain_id)
  (:chain_state
   (&rest __chain_state)
   (if (keywordp (car __chain_state))
       (send* _chain_state __chain_state)
     (progn
       (if __chain_state (setq _chain_state (car __chain_state)))
       _chain_state)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string _chain_id
    4 (length _chain_id)
    ;; sensor_msgs/JointState _chain_state
    (send _chain_state :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string _chain_id
       (write-long (length _chain_id) s) (princ _chain_id s)
     ;; sensor_msgs/JointState _chain_state
       (send _chain_state :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string _chain_id
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _chain_id (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; sensor_msgs/JointState _chain_state
     (send _chain_state :deserialize buf ptr-) (incf ptr- (send _chain_state :serialization-length))
   ;;
   self)
  )

(setf (get calibration_msgs::ChainMeasurement :md5sum-) "a57d957972fc9bc34b14f2a3cac0fbae")
(setf (get calibration_msgs::ChainMeasurement :datatype-) "calibration_msgs/ChainMeasurement")
(setf (get calibration_msgs::ChainMeasurement :definition-)
      "Header header
string chain_id
sensor_msgs/JointState chain_state

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

")



(provide :calibration_msgs/ChainMeasurement "a57d957972fc9bc34b14f2a3cac0fbae")


