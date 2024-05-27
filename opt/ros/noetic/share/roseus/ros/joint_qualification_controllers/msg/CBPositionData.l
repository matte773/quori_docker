;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::CBPositionData)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'CBPositionData (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::CBPOSITIONDATA")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::CBPOSITIONDATA"))

(in-package "ROS")
;;//! \htmlinclude CBPositionData.msg.html


(defclass joint_qualification_controllers::CBPositionData
  :super ros::object
  :slots (_flex_position _lift_hold _flex_hold ))

(defmethod joint_qualification_controllers::CBPositionData
  (:init
   (&key
    ((:flex_position __flex_position) 0.0)
    ((:lift_hold __lift_hold) (instance joint_qualification_controllers::JointPositionData :init))
    ((:flex_hold __flex_hold) (instance joint_qualification_controllers::JointPositionData :init))
    )
   (send-super :init)
   (setq _flex_position (float __flex_position))
   (setq _lift_hold __lift_hold)
   (setq _flex_hold __flex_hold)
   self)
  (:flex_position
   (&optional __flex_position)
   (if __flex_position (setq _flex_position __flex_position)) _flex_position)
  (:lift_hold
   (&rest __lift_hold)
   (if (keywordp (car __lift_hold))
       (send* _lift_hold __lift_hold)
     (progn
       (if __lift_hold (setq _lift_hold (car __lift_hold)))
       _lift_hold)))
  (:flex_hold
   (&rest __flex_hold)
   (if (keywordp (car __flex_hold))
       (send* _flex_hold __flex_hold)
     (progn
       (if __flex_hold (setq _flex_hold (car __flex_hold)))
       _flex_hold)))
  (:serialization-length
   ()
   (+
    ;; float32 _flex_position
    4
    ;; joint_qualification_controllers/JointPositionData _lift_hold
    (send _lift_hold :serialization-length)
    ;; joint_qualification_controllers/JointPositionData _flex_hold
    (send _flex_hold :serialization-length)
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; float32 _flex_position
       (sys::poke _flex_position (send s :buffer) (send s :count) :float) (incf (stream-count s) 4)
     ;; joint_qualification_controllers/JointPositionData _lift_hold
       (send _lift_hold :serialize s)
     ;; joint_qualification_controllers/JointPositionData _flex_hold
       (send _flex_hold :serialize s)
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; float32 _flex_position
     (setq _flex_position (sys::peek buf ptr- :float)) (incf ptr- 4)
   ;; joint_qualification_controllers/JointPositionData _lift_hold
     (send _lift_hold :deserialize buf ptr-) (incf ptr- (send _lift_hold :serialization-length))
   ;; joint_qualification_controllers/JointPositionData _flex_hold
     (send _flex_hold :deserialize buf ptr-) (incf ptr- (send _flex_hold :serialization-length))
   ;;
   self)
  )

(setf (get joint_qualification_controllers::CBPositionData :md5sum-) "e7b62743b80e10dde08aea881b6ccf7b")
(setf (get joint_qualification_controllers::CBPositionData :datatype-) "joint_qualification_controllers/CBPositionData")
(setf (get joint_qualification_controllers::CBPositionData :definition-)
      "float32 flex_position
JointPositionData lift_hold
JointPositionData flex_hold

================================================================================
MSG: joint_qualification_controllers/JointPositionData
float32[] time
float32[] position
float32[] velocity
float32[] effort
")



(provide :joint_qualification_controllers/CBPositionData "e7b62743b80e10dde08aea881b6ccf7b")


