;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::IntervalStamped)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'IntervalStamped (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::INTERVALSTAMPED")
  (make-package "CALIBRATION_MSGS::INTERVALSTAMPED"))

(in-package "ROS")
;;//! \htmlinclude IntervalStamped.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calibration_msgs::IntervalStamped
  :super ros::object
  :slots (_header _interval ))

(defmethod calibration_msgs::IntervalStamped
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:interval __interval) (instance calibration_msgs::Interval :init))
    )
   (send-super :init)
   (setq _header __header)
   (setq _interval __interval)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:interval
   (&rest __interval)
   (if (keywordp (car __interval))
       (send* _interval __interval)
     (progn
       (if __interval (setq _interval (car __interval)))
       _interval)))
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; calibration_msgs/Interval _interval
    (send _interval :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; calibration_msgs/Interval _interval
       (send _interval :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; calibration_msgs/Interval _interval
     (send _interval :deserialize buf ptr-) (incf ptr- (send _interval :serialization-length))
   ;;
   self)
  )

(setf (get calibration_msgs::IntervalStamped :md5sum-) "3b9fc1d72815ffa87542f8dc47ef7484")
(setf (get calibration_msgs::IntervalStamped :datatype-) "calibration_msgs/IntervalStamped")
(setf (get calibration_msgs::IntervalStamped :definition-)
      "Header header
Interval interval

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
MSG: calibration_msgs/Interval
time start
time end

")



(provide :calibration_msgs/IntervalStamped "3b9fc1d72815ffa87542f8dc47ef7484")


