;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::IntervalStatus)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'IntervalStatus (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::INTERVALSTATUS")
  (make-package "CALIBRATION_MSGS::INTERVALSTATUS"))

(in-package "ROS")
;;//! \htmlinclude IntervalStatus.msg.html
(if (not (find-package "STD_MSGS"))
  (ros::roseus-add-msgs "std_msgs"))


(defclass calibration_msgs::IntervalStatus
  :super ros::object
  :slots (_header _names _yeild_rates ))

(defmethod calibration_msgs::IntervalStatus
  (:init
   (&key
    ((:header __header) (instance std_msgs::Header :init))
    ((:names __names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:yeild_rates __yeild_rates) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _header __header)
   (setq _names __names)
   (setq _yeild_rates __yeild_rates)
   self)
  (:header
   (&rest __header)
   (if (keywordp (car __header))
       (send* _header __header)
     (progn
       (if __header (setq _header (car __header)))
       _header)))
  (:names
   (&optional __names)
   (if __names (setq _names __names)) _names)
  (:yeild_rates
   (&optional __yeild_rates)
   (if __yeild_rates (setq _yeild_rates __yeild_rates)) _yeild_rates)
  (:serialization-length
   ()
   (+
    ;; std_msgs/Header _header
    (send _header :serialization-length)
    ;; string[] _names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _names)) 4
    ;; float32[] _yeild_rates
    (* 4    (length _yeild_rates)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; std_msgs/Header _header
       (send _header :serialize s)
     ;; string[] _names
     (write-long (length _names) s)
     (dolist (elem _names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _yeild_rates
     (write-long (length _yeild_rates) s)
     (dotimes (i (length _yeild_rates))
       (sys::poke (elt _yeild_rates i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; std_msgs/Header _header
     (send _header :deserialize buf ptr-) (incf ptr- (send _header :serialization-length))
   ;; string[] _names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _yeild_rates
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _yeild_rates (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _yeild_rates i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get calibration_msgs::IntervalStatus :md5sum-) "277fe87e9a44a07ab27c97b6b37d5898")
(setf (get calibration_msgs::IntervalStatus :datatype-) "calibration_msgs/IntervalStatus")
(setf (get calibration_msgs::IntervalStatus :definition-)
      "# Status of interval intersection
# This can give some indication of which samples have failed to capture
Header header
string[] names
float32[] yeild_rates

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



(provide :calibration_msgs/IntervalStatus "277fe87e9a44a07ab27c97b6b37d5898")


