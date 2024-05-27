;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::Interval)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'Interval (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::INTERVAL")
  (make-package "CALIBRATION_MSGS::INTERVAL"))

(in-package "ROS")
;;//! \htmlinclude Interval.msg.html


(defclass calibration_msgs::Interval
  :super ros::object
  :slots (_start _end ))

(defmethod calibration_msgs::Interval
  (:init
   (&key
    ((:start __start) (instance ros::time :init))
    ((:end __end) (instance ros::time :init))
    )
   (send-super :init)
   (setq _start __start)
   (setq _end __end)
   self)
  (:start
   (&optional __start)
   (if __start (setq _start __start)) _start)
  (:end
   (&optional __end)
   (if __end (setq _end __end)) _end)
  (:serialization-length
   ()
   (+
    ;; time _start
    8
    ;; time _end
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; time _start
       (write-long (send _start :sec) s) (write-long (send _start :nsec) s)
     ;; time _end
       (write-long (send _end :sec) s) (write-long (send _end :nsec) s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; time _start
     (send _start :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _start :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; time _end
     (send _end :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _end :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get calibration_msgs::Interval :md5sum-) "ef8dc98e5cfe048db2cfb689ace74756")
(setf (get calibration_msgs::Interval :datatype-) "calibration_msgs/Interval")
(setf (get calibration_msgs::Interval :definition-)
      "time start
time end

")



(provide :calibration_msgs/Interval "ef8dc98e5cfe048db2cfb689ace74756")


