;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::WristRollTurn)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'WristRollTurn (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::WRISTROLLTURN")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::WRISTROLLTURN"))

(in-package "ROS")
;;//! \htmlinclude WristRollTurn.msg.html


(defclass joint_qualification_controllers::WristRollTurn
  :super ros::object
  :slots (_time _flex_position _flex_effort _flex_cmd _roll_position _roll_effort _roll_cmd _roll_velocity ))

(defmethod joint_qualification_controllers::WristRollTurn
  (:init
   (&key
    ((:time __time) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:flex_position __flex_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:flex_effort __flex_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:flex_cmd __flex_cmd) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:roll_position __roll_position) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:roll_effort __roll_effort) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:roll_cmd __roll_cmd) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:roll_velocity __roll_velocity) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _time __time)
   (setq _flex_position __flex_position)
   (setq _flex_effort __flex_effort)
   (setq _flex_cmd __flex_cmd)
   (setq _roll_position __roll_position)
   (setq _roll_effort __roll_effort)
   (setq _roll_cmd __roll_cmd)
   (setq _roll_velocity __roll_velocity)
   self)
  (:time
   (&optional __time)
   (if __time (setq _time __time)) _time)
  (:flex_position
   (&optional __flex_position)
   (if __flex_position (setq _flex_position __flex_position)) _flex_position)
  (:flex_effort
   (&optional __flex_effort)
   (if __flex_effort (setq _flex_effort __flex_effort)) _flex_effort)
  (:flex_cmd
   (&optional __flex_cmd)
   (if __flex_cmd (setq _flex_cmd __flex_cmd)) _flex_cmd)
  (:roll_position
   (&optional __roll_position)
   (if __roll_position (setq _roll_position __roll_position)) _roll_position)
  (:roll_effort
   (&optional __roll_effort)
   (if __roll_effort (setq _roll_effort __roll_effort)) _roll_effort)
  (:roll_cmd
   (&optional __roll_cmd)
   (if __roll_cmd (setq _roll_cmd __roll_cmd)) _roll_cmd)
  (:roll_velocity
   (&optional __roll_velocity)
   (if __roll_velocity (setq _roll_velocity __roll_velocity)) _roll_velocity)
  (:serialization-length
   ()
   (+
    ;; float32[] _time
    (* 4    (length _time)) 4
    ;; float32[] _flex_position
    (* 4    (length _flex_position)) 4
    ;; float32[] _flex_effort
    (* 4    (length _flex_effort)) 4
    ;; float32[] _flex_cmd
    (* 4    (length _flex_cmd)) 4
    ;; float32[] _roll_position
    (* 4    (length _roll_position)) 4
    ;; float32[] _roll_effort
    (* 4    (length _roll_effort)) 4
    ;; float32[] _roll_cmd
    (* 4    (length _roll_cmd)) 4
    ;; float32[] _roll_velocity
    (* 4    (length _roll_velocity)) 4
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
     ;; float32[] _flex_position
     (write-long (length _flex_position) s)
     (dotimes (i (length _flex_position))
       (sys::poke (elt _flex_position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _flex_effort
     (write-long (length _flex_effort) s)
     (dotimes (i (length _flex_effort))
       (sys::poke (elt _flex_effort i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _flex_cmd
     (write-long (length _flex_cmd) s)
     (dotimes (i (length _flex_cmd))
       (sys::poke (elt _flex_cmd i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _roll_position
     (write-long (length _roll_position) s)
     (dotimes (i (length _roll_position))
       (sys::poke (elt _roll_position i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _roll_effort
     (write-long (length _roll_effort) s)
     (dotimes (i (length _roll_effort))
       (sys::poke (elt _roll_effort i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _roll_cmd
     (write-long (length _roll_cmd) s)
     (dotimes (i (length _roll_cmd))
       (sys::poke (elt _roll_cmd i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _roll_velocity
     (write-long (length _roll_velocity) s)
     (dotimes (i (length _roll_velocity))
       (sys::poke (elt _roll_velocity i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
   ;; float32[] _flex_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flex_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _flex_position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _flex_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flex_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _flex_effort i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _flex_cmd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flex_cmd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _flex_cmd i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _roll_position
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roll_position (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _roll_position i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _roll_effort
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roll_effort (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _roll_effort i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _roll_cmd
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roll_cmd (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _roll_cmd i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _roll_velocity
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roll_velocity (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _roll_velocity i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;;
   self)
  )

(setf (get joint_qualification_controllers::WristRollTurn :md5sum-) "27db8c0ca950f1334a70a45b5bc8427f")
(setf (get joint_qualification_controllers::WristRollTurn :datatype-) "joint_qualification_controllers/WristRollTurn")
(setf (get joint_qualification_controllers::WristRollTurn :definition-)
      "float32[] time
float32[] flex_position
float32[] flex_effort
float32[] flex_cmd
float32[] roll_position
float32[] roll_effort
float32[] roll_cmd
float32[] roll_velocity

")



(provide :joint_qualification_controllers/WristRollTurn "27db8c0ca950f1334a70a45b5bc8427f")


