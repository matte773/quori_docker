;; Auto-generated. Do not edit!


(when (boundp 'joint_states_settler::ConfigResult)
  (if (not (find-package "JOINT_STATES_SETTLER"))
    (make-package "JOINT_STATES_SETTLER"))
  (shadow 'ConfigResult (find-package "JOINT_STATES_SETTLER")))
(unless (find-package "JOINT_STATES_SETTLER::CONFIGRESULT")
  (make-package "JOINT_STATES_SETTLER::CONFIGRESULT"))

(in-package "ROS")
;;//! \htmlinclude ConfigResult.msg.html


(defclass joint_states_settler::ConfigResult
  :super ros::object
  :slots ())

(defmethod joint_states_settler::ConfigResult
  (:init
   (&key
    )
   (send-super :init)
   self)
  (:serialization-length
   ()
   (+
    0
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;;
   self)
  )

(setf (get joint_states_settler::ConfigResult :md5sum-) "d41d8cd98f00b204e9800998ecf8427e")
(setf (get joint_states_settler::ConfigResult :datatype-) "joint_states_settler/ConfigResult")
(setf (get joint_states_settler::ConfigResult :definition-)
      "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

")



(provide :joint_states_settler/ConfigResult "d41d8cd98f00b204e9800998ecf8427e")


