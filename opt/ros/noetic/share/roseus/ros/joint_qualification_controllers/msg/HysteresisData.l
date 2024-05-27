;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::HysteresisData)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'HysteresisData (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::HYSTERESISDATA")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::HYSTERESISDATA"))

(in-package "ROS")
;;//! \htmlinclude HysteresisData.msg.html


(defclass joint_qualification_controllers::HysteresisData
  :super ros::object
  :slots (_joint_name _time_up _effort_up _position_up _velocity_up _time_down _effort_down _position_down _velocity_down _arg_name _arg_value ))

(defmethod joint_qualification_controllers::HysteresisData
  (:init
   (&key
    ((:joint_name __joint_name) "")
    ((:time_up __time_up) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort_up __effort_up) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position_up __position_up) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_up __velocity_up) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:time_down __time_down) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:effort_down __effort_down) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:position_down __position_down) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:velocity_down __velocity_down) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:arg_name __arg_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:arg_value __arg_value) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   (setq _time_up __time_up)
   (setq _effort_up __effort_up)
   (setq _position_up __position_up)
   (setq _velocity_up __velocity_up)
   (setq _time_down __time_down)
   (setq _effort_down __effort_down)
   (setq _position_down __position_down)
   (setq _velocity_down __velocity_down)
   (setq _arg_name __arg_name)
   (setq _arg_value __arg_value)
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:time_up
   (&optional __time_up)
   (if __time_up (setq _time_up __time_up)) _time_up)
  (:effort_up
   (&optional __effort_up)
   (if __effort_up (setq _effort_up __effort_up)) _effort_up)
  (:position_up
   (&optional __position_up)
   (if __position_up (setq _position_up __position_up)) _position_up)
  (:velocity_up
   (&optional __velocity_up)
   (if __velocity_up (setq _velocity_up __velocity_up)) _velocity_up)
  (:time_down
   (&optional __time_down)
   (if __time_down (setq _time_down __time_down)) _time_down)
  (:effort_down
   (&optional __effort_down)
   (if __effort_down (setq _effort_down __effort_down)) _effort_down)
  (:position_down
   (&optional __position_down)
   (if __position_down (setq _position_down __position_down)) _position_down)
  (:velocity_down
   (&optional __velocity_down)
   (if __velocity_down (setq _velocity_down __velocity_down)) _velocity_down)
  (:arg_name
   (&optional __arg_name)
   (if __arg_name (setq _arg_name __arg_name)) _arg_name)
  (:arg_value
   (&optional __arg_value)
   (if __arg_value (setq _arg_value __arg_value)) _arg_value)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ;; float32[] _time_up
    (* 4    (length _time_up)) 4
    ;; float32[] _effort_up
    (* 4    (length _effort_up)) 4
    ;; float32[] _position_up
    (* 4    (length _position_up)) 4
    ;; float32[] _velocity_up
    (* 4    (length _velocity_up)) 4
    ;; float32[] _time_down
    (* 4    (length _time_down)) 4
    ;; float32[] _effort_down
    (* 4    (length _effort_down)) 4
    ;; float32[] _position_down
    (* 4    (length _position_down)) 4
    ;; float32[] _velocity_down
    (* 4    (length _velocity_down)) 4
    ;; string[] _arg_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _arg_name)) 4
    ;; float32[] _arg_value
    (* 4    (length _arg_value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;; float32[] _time_up
     (write-long (length _time_up) s)
     (dotimes (i (length _time_up))
       (sys::poke (elt _time_up i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _effort_up
     (write-long (length _effort_up) s)
     (dotimes (i (length _effort_up))
       (sys::poke (elt _effort_up i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _position_up
     (write-long (length _position_up) s)
     (dotimes (i (length _position_up))
       (sys::poke (elt _position_up i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _velocity_up
     (write-long (length _velocity_up) s)
     (dotimes (i (length _velocity_up))
       (sys::poke (elt _velocity_up i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _time_down
     (write-long (length _time_down) s)
     (dotimes (i (length _time_down))
       (sys::poke (elt _time_down i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _effort_down
     (write-long (length _effort_down) s)
     (dotimes (i (length _effort_down))
       (sys::poke (elt _effort_down i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _position_down
     (write-long (length _position_down) s)
     (dotimes (i (length _position_down))
       (sys::poke (elt _position_down i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _velocity_down
     (write-long (length _velocity_down) s)
     (dotimes (i (length _velocity_down))
       (sys::poke (elt _velocity_down i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; string[] _arg_name
     (write-long (length _arg_name) s)
     (dolist (elem _arg_name)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float32[] _arg_value
     (write-long (length _arg_value) s)
     (dotimes (i (length _arg_value))
       (sys::poke (elt _arg_value i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _time_up
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_up (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _time_up i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _effort_up
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort_up (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort_up i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _position_up
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_up (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_up i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _velocity_up
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_up (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_up i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _time_down
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _time_down (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _time_down i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _effort_down
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _effort_down (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _effort_down i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _position_down
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _position_down (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _position_down i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _velocity_down
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _velocity_down (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _velocity_down i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; string[] _arg_name
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arg_name (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _arg_name i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float32[] _arg_value
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _arg_value (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _arg_value i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get joint_qualification_controllers::HysteresisData :md5sum-) "55018edece2f193bc97f016db04a871b")
(setf (get joint_qualification_controllers::HysteresisData :datatype-) "joint_qualification_controllers/HysteresisData")
(setf (get joint_qualification_controllers::HysteresisData :definition-)
      "string joint_name

float32[] time_up
float32[] effort_up
float32[] position_up
float32[] velocity_up

float32[] time_down
float32[] effort_down
float32[] position_down
float32[] velocity_down

string[] arg_name
float32[] arg_value

")



(provide :joint_qualification_controllers/HysteresisData "55018edece2f193bc97f016db04a871b")


