;; Auto-generated. Do not edit!


(when (boundp 'calibration_msgs::DenseLaserPoint)
  (if (not (find-package "CALIBRATION_MSGS"))
    (make-package "CALIBRATION_MSGS"))
  (shadow 'DenseLaserPoint (find-package "CALIBRATION_MSGS")))
(unless (find-package "CALIBRATION_MSGS::DENSELASERPOINT")
  (make-package "CALIBRATION_MSGS::DENSELASERPOINT"))

(in-package "ROS")
;;//! \htmlinclude DenseLaserPoint.msg.html


(defclass calibration_msgs::DenseLaserPoint
  :super ros::object
  :slots (_scan _ray ))

(defmethod calibration_msgs::DenseLaserPoint
  (:init
   (&key
    ((:scan __scan) 0.0)
    ((:ray __ray) 0.0)
    )
   (send-super :init)
   (setq _scan (float __scan))
   (setq _ray (float __ray))
   self)
  (:scan
   (&optional __scan)
   (if __scan (setq _scan __scan)) _scan)
  (:ray
   (&optional __ray)
   (if __ray (setq _ray __ray)) _ray)
  (:serialization-length
   ()
   (+
    ;; float64 _scan
    8
    ;; float64 _ray
    8
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float64 _scan
       (sys::poke _scan (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;; float64 _ray
       (sys::poke _ray (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float64 _scan
     (setq _scan (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;; float64 _ray
     (setq _ray (sys::peek buf ptr- :double)) (incf ptr- 8)
   ;;
   self)
  )

(setf (get calibration_msgs::DenseLaserPoint :md5sum-) "12821677bc3daf8fabbb485d5b0cc027")
(setf (get calibration_msgs::DenseLaserPoint :datatype-) "calibration_msgs/DenseLaserPoint")
(setf (get calibration_msgs::DenseLaserPoint :definition-)
      "# Stores the xy subpixel location of a point in a DenseLaserSnapshot
float64 scan  # Which scan line we detected the feature
float64 ray   # Which ray in the specified scan we detected the feature

")



(provide :calibration_msgs/DenseLaserPoint "12821677bc3daf8fabbb485d5b0cc027")


