;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::HysteresisRun)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'HysteresisRun (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::HYSTERESISRUN")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::HYSTERESISRUN"))

(in-package "ROS")
;;//! \htmlinclude HysteresisRun.msg.html


(intern "*UP*" (find-package "JOINT_QUALIFICATION_CONTROLLERS::HYSTERESISRUN"))
(shadow '*UP* (find-package "JOINT_QUALIFICATION_CONTROLLERS::HYSTERESISRUN"))
(defconstant joint_qualification_controllers::HysteresisRun::*UP* 0)
(intern "*DOWN*" (find-package "JOINT_QUALIFICATION_CONTROLLERS::HYSTERESISRUN"))
(shadow '*DOWN* (find-package "JOINT_QUALIFICATION_CONTROLLERS::HYSTERESISRUN"))
(defconstant joint_qualification_controllers::HysteresisRun::*DOWN* 1)

(defun joint_qualification_controllers::HysteresisRun-to-symbol (const)
  (cond
        ((= const 0) 'joint_qualification_controllers::HysteresisRun::*UP*)
        ((= const 1) 'joint_qualification_controllers::HysteresisRun::*DOWN*)
        (t nil)))

(defclass joint_qualification_controllers::HysteresisRun
  :super ros::object
  :slots (_time _effort _position _velocity _dir ))

(defmethod joint_qualification_controllers::HysteresisRun
  (:init
   (&key
    ((:time __time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort __effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position __position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity __velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:dir __dir) 0)
    )
   (send-super :init)
   (setq _time __time)
   (setq _effort __effort)
   (setq _position __position)
   (setq _velocity __velocity)
   (setq _dir (round __dir))
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:effort
   (&optional __effort)
   (if __effort (setq _effort __effort)) _effort)
  (:position
   (&optional __position)
   (if __position (setq _position __position)) _position)
  (:velocity
   (&optional __velocity)
   (if __velocity (setq _velocity __velocity)) _velocity)
  (:dir
   (&optional __dir)
   (if __dir (setq _dir __dir)) _dir)
  (:serialization-length
   ()
   (+
    ;; float32[] _time
    (* 4    (length _time)) 4
    ;; float32[] _effort
    (* 4    (length _effort)) 4
    ;; float32[] _position
    (* 4    (length _position)) 4
    ;; float32[] _velocity
    (* 4    (length _velocity)) 4
    ;; uint8 _dir
    1
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
     ;; float32[] _effort
     (write-long (length _effort) s)
     (dotimes (i (length _effort))
       (sys::poke (elt _effort i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
     ;; uint8 _dir
       (write-byte _dir s)
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
   ;; float32[] _effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort i) (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;; uint8 _dir
     (setq _dir (sys::peek buf ptr- :char)) (incf ptr- 1)
   ;;
   self)
  )

(setf (get joint_qualification_controllers::HysteresisRun :md5sum-) "53b5a9cc98e4aeb9e2e39c07ea2a59f5")
(setf (get joint_qualification_controllers::HysteresisRun :datatype-) "joint_qualification_controllers/HysteresisRun")
(setf (get joint_qualification_controllers::HysteresisRun :definition-)
      "float32[] time
float32[] effort
float32[] position
float32[] velocity
uint8 dir
uint8 UP=0
uint8 DOWN=1

")



(provide :joint_qualification_controllers/HysteresisRun "53b5a9cc98e4aeb9e2e39c07ea2a59f5")


