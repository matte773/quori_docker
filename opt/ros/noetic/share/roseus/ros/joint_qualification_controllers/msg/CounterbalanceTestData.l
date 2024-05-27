;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::CounterbalanceTestData)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'CounterbalanceTestData (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::COUNTERBALANCETESTDATA")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::COUNTERBALANCETESTDATA"))

(in-package "ROS")
;;//! \htmlinclude CounterbalanceTestData.msg.html


(defclass joint_qualification_controllers::CounterbalanceTestData
  :super ros::object
  :slots (_lift_joint _flex_joint _lift_amplitude _flex_amplitude _timeout_hit _flex_test _arg_name _arg_value _lift_data ))

(defmethod joint_qualification_controllers::CounterbalanceTestData
  (:init
   (&key
    ((:lift_joint __lift_joint) "")
    ((:flex_joint __flex_joint) "")
    ((:lift_amplitude __lift_amplitude) 0.0)
    ((:flex_amplitude __flex_amplitude) 0.0)
    ((:timeout_hit __timeout_hit) nil)
    ((:flex_test __flex_test) nil)
    ((:arg_name __arg_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:arg_value __arg_value) (make-array 0 :initial-element 0.0 :element-type :float))
    ((:lift_data __lift_data) ())
    )
   (send-super :init)
   (setq _lift_joint (string __lift_joint))
   (setq _flex_joint (string __flex_joint))
   (setq _lift_amplitude (float __lift_amplitude))
   (setq _flex_amplitude (float __flex_amplitude))
   (setq _timeout_hit __timeout_hit)
   (setq _flex_test __flex_test)
   (setq _arg_name __arg_name)
   (setq _arg_value __arg_value)
   (setq _lift_data __lift_data)
   self)
  (:lift_joint
   (&optional __lift_joint)
   (if __lift_joint (setq _lift_joint __lift_joint)) _lift_joint)
  (:flex_joint
   (&optional __flex_joint)
   (if __flex_joint (setq _flex_joint __flex_joint)) _flex_joint)
  (:lift_amplitude
   (&optional __lift_amplitude)
   (if __lift_amplitude (setq _lift_amplitude __lift_amplitude)) _lift_amplitude)
  (:flex_amplitude
   (&optional __flex_amplitude)
   (if __flex_amplitude (setq _flex_amplitude __flex_amplitude)) _flex_amplitude)
  (:timeout_hit
   (&optional (__timeout_hit :null))
   (if (not (eq __timeout_hit :null)) (setq _timeout_hit __timeout_hit)) _timeout_hit)
  (:flex_test
   (&optional (__flex_test :null))
   (if (not (eq __flex_test :null)) (setq _flex_test __flex_test)) _flex_test)
  (:arg_name
   (&optional __arg_name)
   (if __arg_name (setq _arg_name __arg_name)) _arg_name)
  (:arg_value
   (&optional __arg_value)
   (if __arg_value (setq _arg_value __arg_value)) _arg_value)
  (:lift_data
   (&rest __lift_data)
   (if (keywordp (car __lift_data))
       (send* _lift_data __lift_data)
     (progn
       (if __lift_data (setq _lift_data (car __lift_data)))
       _lift_data)))
  (:serialization-length
   ()
   (+
    ;; string _lift_joint
    4 (length _lift_joint)
    ;; string _flex_joint
    4 (length _flex_joint)
    ;; float32 _lift_amplitude
    4
    ;; float32 _flex_amplitude
    4
    ;; bool _timeout_hit
    1
    ;; bool _flex_test
    1
    ;; string[] _arg_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _arg_name)) 4
    ;; float32[] _arg_value
    (* 4    (length _arg_value)) 4
    ;; joint_qualification_controllers/CBRunData[] _lift_data
    (apply #'+ (send-all _lift_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _lift_joint
       (write-long (length _lift_joint) s) (princ _lift_joint s)
     ;; string _flex_joint
       (write-long (length _flex_joint) s) (princ _flex_joint s)
     ;; float32 _lift_amplitude
       (sys::poke _lift_amplitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; float32 _flex_amplitude
       (sys::poke _flex_amplitude (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _timeout_hit
       (if _timeout_hit (write-byte -1 s) (write-byte 0 s))
     ;; bool _flex_test
       (if _flex_test (write-byte -1 s) (write-byte 0 s))
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
     ;; joint_qualification_controllers/CBRunData[] _lift_data
     (write-long (length _lift_data) s)
     (dolist (elem _lift_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _lift_joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _lift_joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; string _flex_joint
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _flex_joint (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; float32 _lift_amplitude
     (setq _lift_amplitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; float32 _flex_amplitude
     (setq _flex_amplitude (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _timeout_hit
     (setq _timeout_hit (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; bool _flex_test
     (setq _flex_test (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
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
   ;; joint_qualification_controllers/CBRunData[] _lift_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _lift_data (let (r) (dotimes (i n) (push (instance joint_qualification_controllers::CBRunData :init) r)) r))
     (dolist (elem- _lift_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get joint_qualification_controllers::CounterbalanceTestData :md5sum-) "ab80d40971aa9176fd2c9fb75aeb93cf")
(setf (get joint_qualification_controllers::CounterbalanceTestData :datatype-) "joint_qualification_controllers/CounterbalanceTestData")
(setf (get joint_qualification_controllers::CounterbalanceTestData :definition-)
      "string lift_joint
string flex_joint
float32 lift_amplitude
float32 flex_amplitude
bool timeout_hit
bool flex_test
string[] arg_name
float32[] arg_value
CBRunData[] lift_data # Data for each hold
================================================================================
MSG: joint_qualification_controllers/CBRunData
float32 lift_position
CBPositionData[] flex_data # Same lift position, diff flex positions
================================================================================
MSG: joint_qualification_controllers/CBPositionData
float32 flex_position
JointPositionData lift_hold
JointPositionData flex_hold

================================================================================
MSG: joint_qualification_controllers/JointPositionData
float32[] time
float32[] position
float32[] velocity
float32[] effort
")



(provide :joint_qualification_controllers/CounterbalanceTestData "ab80d40971aa9176fd2c9fb75aeb93cf")


