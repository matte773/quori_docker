;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::RobotData)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'RobotData (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::ROBOTDATA")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::ROBOTDATA"))

(in-package "ROS")
;;//! \htmlinclude RobotData.msg.html


(defclass joint_qualification_controllers::RobotData
  :super ros::object
  :slots (_test_time _timeout _num_joints _num_actuators _joint_data _actuator_data ))

(defmethod joint_qualification_controllers::RobotData
  (:init
   (&key
    ((:test_time __test_time) 0.0)
    ((:timeout __timeout) nil)
    ((:num_joints __num_joints) 0)
    ((:num_actuators __num_actuators) 0)
    ((:joint_data __joint_data) ())
    ((:actuator_data __actuator_data) ())
    )
   (send-super :init)
   (setq _test_time (float __test_time))
   (setq _timeout __timeout)
   (setq _num_joints (round __num_joints))
   (setq _num_actuators (round __num_actuators))
   (setq _joint_data __joint_data)
   (setq _actuator_data __actuator_data)
   self)
  (:test_time
   (&optional __test_time)
   (if __test_time (setq _test_time __test_time)) _test_time)
  (:timeout
   (&optional (__timeout :null))
   (if (not (eq __timeout :null)) (setq _timeout __timeout)) _timeout)
  (:num_joints
   (&optional __num_joints)
   (if __num_joints (setq _num_joints __num_joints)) _num_joints)
  (:num_actuators
   (&optional __num_actuators)
   (if __num_actuators (setq _num_actuators __num_actuators)) _num_actuators)
  (:joint_data
   (&rest __joint_data)
   (if (keywordp (car __joint_data))
       (send* _joint_data __joint_data)
     (progn
       (if __joint_data (setq _joint_data (car __joint_data)))
       _joint_data)))
  (:actuator_data
   (&rest __actuator_data)
   (if (keywordp (car __actuator_data))
       (send* _actuator_data __actuator_data)
     (progn
       (if __actuator_data (setq _actuator_data (car __actuator_data)))
       _actuator_data)))
  (:serialization-length
   ()
   (+
    ;; float32 _test_time
    4
    ;; bool _timeout
    1
    ;; int32 _num_joints
    4
    ;; int32 _num_actuators
    4
    ;; joint_qualification_controllers/JointData[] _joint_data
    (apply #'+ (send-all _joint_data :serialization-length)) 4
    ;; joint_qualification_controllers/ActuatorData[] _actuator_data
    (apply #'+ (send-all _actuator_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _test_time
       (sys::poke _test_time (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; bool _timeout
       (if _timeout (write-byte -1 s) (write-byte 0 s))
     ;; int32 _num_joints
       (write-long _num_joints s)
     ;; int32 _num_actuators
       (write-long _num_actuators s)
     ;; joint_qualification_controllers/JointData[] _joint_data
     (write-long (length _joint_data) s)
     (dolist (elem _joint_data)
       (send elem :serialize s)
       )
     ;; joint_qualification_controllers/ActuatorData[] _actuator_data
     (write-long (length _actuator_data) s)
     (dolist (elem _actuator_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _test_time
     (setq _test_time (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; bool _timeout
     (setq _timeout (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;; int32 _num_joints
     (setq _num_joints (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; int32 _num_actuators
     (setq _num_actuators (sys::peek buf ptr- :integer)) (incf ptr- 4)
   ;; joint_qualification_controllers/JointData[] _joint_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _joint_data (let (r) (dotimes (i n) (push (instance joint_qualification_controllers::JointData :init) r)) r))
     (dolist (elem- _joint_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;; joint_qualification_controllers/ActuatorData[] _actuator_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _actuator_data (let (r) (dotimes (i n) (push (instance joint_qualification_controllers::ActuatorData :init) r)) r))
     (dolist (elem- _actuator_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get joint_qualification_controllers::RobotData :md5sum-) "025931e8023fe22bd8228a980121730a")
(setf (get joint_qualification_controllers::RobotData :datatype-) "joint_qualification_controllers/RobotData")
(setf (get joint_qualification_controllers::RobotData :definition-)
      "float32 test_time
bool timeout
int32 num_joints
int32 num_actuators
JointData[] joint_data
ActuatorData[] actuator_data

================================================================================
MSG: joint_qualification_controllers/JointData
int16 index
string name
byte is_cal
byte has_safety
string type


================================================================================
MSG: joint_qualification_controllers/ActuatorData
int16 index
string name
int16 id


")



(provide :joint_qualification_controllers/RobotData "025931e8023fe22bd8228a980121730a")


