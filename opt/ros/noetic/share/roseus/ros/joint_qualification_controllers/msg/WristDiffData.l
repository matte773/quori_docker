;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::WristDiffData)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'WristDiffData (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::WRISTDIFFDATA")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::WRISTDIFFDATA"))

(in-package "ROS")
;;//! \htmlinclude WristDiffData.msg.html


(defclass joint_qualification_controllers::WristDiffData
  :super ros::object
  :slots (_flex_joint _roll_joint _flex_pid _roll_pid _arg_name _arg_value _left_turn _right_turn _timeout ))

(defmethod joint_qualification_controllers::WristDiffData
  (:init
   (&key
    ((:flex_joint __flex_joint) "")
    ((:roll_joint __roll_joint) "")
    ((:flex_pid __flex_pid) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:roll_pid __roll_pid) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:arg_name __arg_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:arg_value __arg_value) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:left_turn __left_turn) (instance joint_qualification_controllers::WristRollTurn :init))
    ((:right_turn __right_turn) (instance joint_qualification_controllers::WristRollTurn :init))
    ((:timeout __timeout) nil)
    )
   (send-super :init)
   (setq _flex_joint (string __flex_joint))
   (setq _roll_joint (string __roll_joint))
   (setq _flex_pid __flex_pid)
   (setq _roll_pid __roll_pid)
   (setq _arg_name __arg_name)
   (setq _arg_value __arg_value)
   (setq _left_turn __left_turn)
   (setq _right_turn __right_turn)
   (setq _timeout __timeout)
   self)
  (:flex_joint
   (&optional __flex_joint)
   (if __flex_joint (setq _flex_joint __flex_joint)) _flex_joint)
  (:roll_joint
   (&optional __roll_joint)
   (if __roll_joint (setq _roll_joint __roll_joint)) _roll_joint)
  (:flex_pid
   (&optional __flex_pid)
   (if __flex_pid (setq _flex_pid __flex_pid)) _flex_pid)
  (:roll_pid
   (&optional __roll_pid)
   (if __roll_pid (setq _roll_pid __roll_pid)) _roll_pid)
  (:arg_name
   (&optional __arg_name)
   (if __arg_name (setq _arg_name __arg_name)) _arg_name)
  (:arg_value
   (&optional __arg_value)
   (if __arg_value (setq _arg_value __arg_value)) _arg_value)
  (:left_turn
   (&rest __left_turn)
   (if (keywordp (car __left_turn))
       (send* _left_turn __left_turn)
     (progn
       (if __left_turn (setq _left_turn (car __left_turn)))
       _left_turn)))
  (:right_turn
   (&rest __right_turn)
   (if (keywordp (car __right_turn))
       (send* _right_turn __right_turn)
     (progn
       (if __right_turn (setq _right_turn (car __right_turn)))
       _right_turn)))
  (:timeout
   (&optional (__timeout :null))
   (if (not (eq __timeout :null)) (setq _timeout __timeout)) _timeout)
  (:serialization-length
   ()
   (+
    ;; string _flex_joint
    4 (length _flex_joint)
    ;; string _roll_joint
    4 (length _roll_joint)
    ;; float32[] _flex_pid
    (* 4    (length _flex_pid)) 4
    ;; float32[] _roll_pid
    (* 4    (length _roll_pid)) 4
    ;; string[] _arg_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _arg_name)) 4
    ;; float32[] _arg_value
    (* 4    (length _arg_value)) 4
    ;; joint_qualification_controllers/WristRollTurn _left_turn
    (send _left_turn :serialization-length)
    ;; joint_qualification_controllers/WristRollTurn _right_turn
    (send _right_turn :serialization-length)
    ;; bool _timeout
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _flex_joint
       (write-long (length _flex_joint) s) (princ _flex_joint s)
     ;; string _roll_joint
       (write-long (length _roll_joint) s) (princ _roll_joint s)
     ;; float32[] _flex_pid
     (write-long (length _flex_pid) s)
     (dotimes (i (length _flex_pid))
       (sys::poke (elt _flex_pid i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
       )
     ;; float32[] _roll_pid
     (write-long (length _roll_pid) s)
     (dotimes (i (length _roll_pid))
       (sys::poke (elt _roll_pid i) (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
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
     ;; joint_qualification_controllers/WristRollTurn _left_turn
       (send _left_turn :serialize s)
     ;; joint_qualification_controllers/WristRollTurn _right_turn
       (send _right_turn :serialize s)
     ;; bool _timeout
       (if _timeout (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _flex_joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _flex_joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _roll_joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _roll_joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32[] _flex_pid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flex_pid (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _flex_pid i) (sys::peek buf ptr- :float)) (incf ptr- 4)
     ))
   ;; float32[] _roll_pid
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _roll_pid (instantiate float-vector n))
     (dotimes (i n)
     (setf (elt _roll_pid i) (sys::peek buf ptr- :float)) (incf ptr- 4)
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
   ;; joint_qualification_controllers/WristRollTurn _left_turn
     (send _left_turn :deserialize buf ptr-) (incf ptr- (send _left_turn :serialization-length))
   ;; joint_qualification_controllers/WristRollTurn _right_turn
     (send _right_turn :deserialize buf ptr-) (incf ptr- (send _right_turn :serialization-length))
   ;; bool _timeout
     (setq _timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(setf (get joint_qualification_controllers::WristDiffData :md5sum-) "b5450bf7a09b17c68a893b9c02e710f1")
(setf (get joint_qualification_controllers::WristDiffData :datatype-) "joint_qualification_controllers/WristDiffData")
(setf (get joint_qualification_controllers::WristDiffData :definition-)
      "string flex_joint
string roll_joint
float32[] flex_pid
float32[] roll_pid
string[] arg_name
float32[] arg_value
WristRollTurn left_turn
WristRollTurn right_turn
bool timeout

================================================================================
MSG: joint_qualification_controllers/WristRollTurn
float32[] time
float32[] flex_position
float32[] flex_effort
float32[] flex_cmd
float32[] roll_position
float32[] roll_effort
float32[] roll_cmd
float32[] roll_velocity

")



(provide :joint_qualification_controllers/WristDiffData "b5450bf7a09b17c68a893b9c02e710f1")


