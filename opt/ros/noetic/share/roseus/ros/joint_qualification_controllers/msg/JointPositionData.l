;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::JointPositionData)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'JointPositionData (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::JOINTPOSITIONDATA")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::JOINTPOSITIONDATA"))

(in-package "ROS")
;;//! \htmlinclude JointPositionData.msg.html


(defclass joint_qualification_controllers::JointPositionData
  :super ros::object
  :slots (_time _position _velocity _effort ))

(defmethod joint_qualification_controllers::JointPositionData
  (:init
   (&key
    ((:time __time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _time __time)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _effort __effort)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:serialization-length
   ()
   (+
    ;; float32[] _time
    (* 4    (length _time)) 4
    ;; float32[] _position
    (* 4    (length _position)) 4
    ;; float32[] _velocity
    (* 4    (length _velocity)) 4
    ;; float32[] _effort
    (* 4    (length _effort)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32[] _time
     (write-long (length _time) s)
     (dotimes (i (length _time))
       (sys::poke (elt _time i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _position
     (write-long (length _position) s)
     (dotimes (i (length _position))
       (sys::poke (elt _position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _velocity
     (write-long (length _velocity) s)
     (dotimes (i (length _velocity))
       (sys::poke (elt _velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32[] _time
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _time i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get joint_qualification_controllers::JointPositionData :md5sum-) "20b7d551f5d22afac44b59b748c57bdb")
(setf (get joint_qualification_controllers::JointPositionData :datatype-) "joint_qualification_controllers/JointPositionData")
(setf (get joint_qualification_controllers::JointPositionData :definition-)
      "float32[] time
float32[] position
float32[] velocity
float32[] effort
")



(provide :joint_qualification_controllers/JointPositionData "20b7d551f5d22afac44b59b748c57bdb")


