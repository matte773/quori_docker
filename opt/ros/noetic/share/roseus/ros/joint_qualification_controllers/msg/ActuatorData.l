;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::ActuatorData)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'ActuatorData (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::ACTUATORDATA")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::ACTUATORDATA"))

(in-package "ROS")
;;//! \htmlinclude ActuatorData.msg.html


(defclass joint_qualification_controllers::ActuatorData
  :super ros::object
  :slots (_index _name _id ))

(defmethod joint_qualification_controllers::ActuatorData
  (:init
   (&key
    ((:index __index) 0)
    ((:name __name) "")
    ((:id __id) 0)
    )
   (send-super :init)
   (setq _index (round __index))
   (setq _name (string __name))
   (setq _id (round __id))
   self)
  (:index
   (&optional __index)
   (if __index (setq _index __index)) _index)
  (:name
   (&optional __name)
   (if __name (setq _name __name)) _name)
  (:id
   (&optional __id)
   (if __id (setq _id __id)) _id)
  (:serialization-length
   ()
   (+
    ;; int16 _index
    2
    ;; string _name
    4 (length _name)
    ;; int16 _id
    2
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; int16 _index
       (write-word _index s)
     ;; string _name
       (write-long (length _name) s) (princ _name s)
     ;; int16 _id
       (write-word _id s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; int16 _index
     (setq _index (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;; string _name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; int16 _id
     (setq _id (sys::peek buf ptr- :short)) (incf ptr- 2)
   ;;
   self)
  )

(setf (get joint_qualification_controllers::ActuatorData :md5sum-) "2c56db35f7889a677f83b66883afdaf4")
(setf (get joint_qualification_controllers::ActuatorData :datatype-) "joint_qualification_controllers/ActuatorData")
(setf (get joint_qualification_controllers::ActuatorData :definition-)
      "int16 index
string name
int16 id


")



(provide :joint_qualification_controllers/ActuatorData "2c56db35f7889a677f83b66883afdaf4")


