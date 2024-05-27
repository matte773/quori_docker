;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::CBRunData)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'CBRunData (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::CBRUNDATA")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::CBRUNDATA"))

(in-package "ROS")
;;//! \htmlinclude CBRunData.msg.html


(defclass joint_qualification_controllers::CBRunData
  :super ros::object
  :slots (_lift_position _flex_data ))

(defmethod joint_qualification_controllers::CBRunData
  (:init
   (&key
    ((:lift_position __lift_position) 0.0)
    ((:flex_data __flex_data) ())
    )
   (send-super :init)
   (setq _lift_position (float __lift_position))
   (setq _flex_data __flex_data)
   self)
  (:lift_position
   (&optional __lift_position)
   (if __lift_position (setq _lift_position __lift_position)) _lift_position)
  (:flex_data
   (&rest __flex_data)
   (if (keywordp (car __flex_data))
       (send* _flex_data __flex_data)
     (progn
       (if __flex_data (setq _flex_data (car __flex_data)))
       _flex_data)))
  (:serialization-length
   ()
   (+
    ;; float32 _lift_position
    4
    ;; joint_qualification_controllers/CBPositionData[] _flex_data
    (apply #'+ (send-all _flex_data :serialization-length)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _lift_position
       (sys::poke _lift_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; joint_qualification_controllers/CBPositionData[] _flex_data
     (write-long (length _flex_data) s)
     (dolist (elem _flex_data)
       (send elem :serialize s)
       )
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _lift_position
     (setq _lift_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; joint_qualification_controllers/CBPositionData[] _flex_data
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _flex_data (let (r) (dotimes (i n) (push (instance joint_qualification_controllers::CBPositionData :init) r)) r))
     (dolist (elem- _flex_data)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
     ))
   ;;
   self)
  )

(setf (get joint_qualification_controllers::CBRunData :md5sum-) "16bad2df24f5cffc934c2d3ae9bb08e6")
(setf (get joint_qualification_controllers::CBRunData :datatype-) "joint_qualification_controllers/CBRunData")
(setf (get joint_qualification_controllers::CBRunData :definition-)
      "float32 lift_position
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



(provide :joint_qualification_controllers/CBRunData "16bad2df24f5cffc934c2d3ae9bb08e6")


