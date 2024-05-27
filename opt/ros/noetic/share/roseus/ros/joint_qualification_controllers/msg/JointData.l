;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::JointData)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'JointData (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::JOINTDATA")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::JOINTDATA"))

(in-package "ROS")
;;//! \htmlinclude JointData.msg.html


(defclass joint_qualification_controllers::JointData
  :super ros::object
  :slots (_index _name _is_cal _has_safety _type ))

(defmethod joint_qualification_controllers::JointData
  (:init
   (&key
    ((:index __index) 0)
    ((:name __name) "")
    ((:is_cal __is_cal) 0)
    ((:has_safety __has_safety) 0)
    ((:type __type) "")
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _name (string __name))
   (setq _is_cal (round __is_cal))
   (setq _has_safety (round __has_safety))
   (setq _type (string __type))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:is_cal
   (&optional __is_cal)
   (if __is_cal (setq _is_cal __is_cal)) _is_cal)
  (:has_safety
   (&optional __has_safety)
   (if __has_safety (setq _has_safety __has_safety)) _has_safety)
  (:type
   (&optional __type)
   (if __type (setq _type __type)) _type)
  (:serialization-length
   ()
   (+
    ;; int16 _index
    2
    ;; string _name
    4 (length _name)
    ;; byte _is_cal
    1
    ;; byte _has_safety
    1
    ;; string _type
    4 (length _type)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _index
       (write-word _index s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; byte _is_cal
       (write-byte _is_cal s)
     ;; byte _has_safety
       (write-byte _has_safety s)
     ;; string _type
       (write-long (length _type) s) (princ _type s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; byte _is_cal
     (setq _is_cal (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _is_cal 127) (setq _is_cal (- _is_cal 256)))
   ;; byte _has_safety
     (setq _has_safety (sys::peek buf ptr- :char)) (incf ptr- 1)
     (if (> _has_safety 127) (setq _has_safety (- _has_safety 256)))
   ;; string _type
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _type (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;;
   self)
  )

(setf (get joint_qualification_controllers::JointData :md5sum-) "191610564bf935172c9424c803ed6939")
(setf (get joint_qualification_controllers::JointData :datatype-) "joint_qualification_controllers/JointData")
(setf (get joint_qualification_controllers::JointData :definition-)
      "int16 index
string name
byte is_cal
byte has_safety
string type


")



(provide :joint_qualification_controllers/JointData "191610564bf935172c9424c803ed6939")


