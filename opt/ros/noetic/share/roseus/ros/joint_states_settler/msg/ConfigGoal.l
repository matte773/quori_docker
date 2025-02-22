;; Auto-generated. Do not edit!


(when (boundp 'joint_states_settler::ConfigGoal)
  (if (not (find-package "JOINT_STATES_SETTLER"))
    (make-package "JOINT_STATES_SETTLER"))
  (shadow 'ConfigGoal (find-package "JOINT_STATES_SETTLER")))
(unless (find-package "JOINT_STATES_SETTLER::CONFIGGOAL")
  (make-package "JOINT_STATES_SETTLER::CONFIGGOAL"))

(in-package "ROS")
;;//! \htmlinclude ConfigGoal.msg.html


(defclass joint_states_settler::ConfigGoal
  :super ros::object
  :slots (_joint_names _tolerances _max_step _cache_size ))

(defmethod joint_states_settler::ConfigGoal
  (:init
   (&key
    ((:joint_names __joint_names) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:tolerances __tolerances) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:max_step __max_step) (instance ros::time :init))
    ((:cache_size __cache_size) 0)
    )
   (send-super :init)
   (setq _joint_names __joint_names)
   (setq _tolerances __tolerances)
   (setq _max_step __max_step)
   (setq _cache_size (round __cache_size))
   self)
  (:joint_names
   (&optional __joint_names)
   (if __joint_names (setq _joint_names __joint_names)) _joint_names)
  (:tolerances
   (&optional __tolerances)
   (if __tolerances (setq _tolerances __tolerances)) _tolerances)
  (:max_step
   (&optional __max_step)
   (if __max_step (setq _max_step __max_step)) _max_step)
  (:cache_size
   (&optional __cache_size)
   (if __cache_size (setq _cache_size __cache_size)) _cache_size)
  (:serialization-length
   ()
   (+
    ;; string[] _joint_names
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _joint_names)) 4
    ;; float64[] _tolerances
    (* 8    (length _tolerances)) 4
    ;; duration _max_step
    8
    ;; uint32 _cache_size
    4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string[] _joint_names
     (write-long (length _joint_names) s)
     (dolist (elem _joint_names)
       (write-long (length elem) s) (princ elem s)
       )
     ;; float64[] _tolerances
     (write-long (length _tolerances) s)
     (dotimes (i (length _tolerances))
       (sys::poke (elt _tolerances i) (send s :buffer) (send s :count) :double) (incf (stream-count s) 8)
       )
     ;; duration _max_step
       (write-long (send _max_step :sec) s) (write-long (send _max_step :nsec) s)
     ;; uint32 _cache_size
       (write-long _cache_size s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string[] _joint_names
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_names (make-list n))
     (dotimes (i n)
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setf (elt _joint_names i) (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
     ))
   ;; float64[] _tolerances
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _tolerances (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _tolerances i) (sys::peek buf ptr- :double)) (incf ptr- 8)
     ))
   ;; duration _max_step
     (send _max_step :sec (sys::peek buf ptr- :integer)) (incf ptr- 4)  (send _max_step :nsec (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; uint32 _cache_size
     (setq _cache_size (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;;
   self)
  )

(setf (get joint_states_settler::ConfigGoal :md5sum-) "863b25359077f9aa231257b3d1612b63")
(setf (get joint_states_settler::ConfigGoal :datatype-) "joint_states_settler/ConfigGoal")
(setf (get joint_states_settler::ConfigGoal :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
string[] joint_names   # Names of the joints we're waiting to settle
float64[] tolerances   # Tolerance on each of the specified joints
duration max_step      # The maximum timestep between two elements in an interval
uint32 cache_size      # The size of our cache when searching for an interval

")



(provide :joint_states_settler/ConfigGoal "863b25359077f9aa231257b3d1612b63")


