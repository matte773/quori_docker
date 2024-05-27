;; Auto-generated. Do not edit!


(when (boundp 'joint_qualification_controllers::HysteresisData2)
  (if (not (find-package "JOINT_QUALIFICATION_CONTROLLERS"))
    (make-package "JOINT_QUALIFICATION_CONTROLLERS"))
  (shadow 'HysteresisData2 (find-package "JOINT_QUALIFICATION_CONTROLLERS")))
(unless (find-package "JOINT_QUALIFICATION_CONTROLLERS::HYSTERESISDATA2")
  (make-package "JOINT_QUALIFICATION_CONTROLLERS::HYSTERESISDATA2"))

(in-package "ROS")
;;//! \htmlinclude HysteresisData2.msg.html


(defclass joint_qualification_controllers::HysteresisData2
  :super ros::object
  :slots (_joint_name _runs _arg_name _arg_value ))

(defmethod joint_qualification_controllers::HysteresisData2
  (:init
   (&key
    ((:joint_name __joint_name) "")
    ((:runs __runs) ())
    ((:arg_name __arg_name) (let (r) (dotimes (i 0) (push "" r)) r))
    ((:arg_value __arg_value) (make-array 0 :initial-element 0.0 :element-type :float))
    )
   (send-super :init)
   (setq _joint_name (string __joint_name))
   (setq _runs __runs)
   (setq _arg_name __arg_name)
   (setq _arg_value __arg_value)
   self)
  (:joint_name
   (&optional __joint_name)
   (if __joint_name (setq _joint_name __joint_name)) _joint_name)
  (:runs
   (&rest __runs)
   (if (keywordp (car __runs))
       (send* _runs __runs)
     (progn
       (if __runs (setq _runs (car __runs)))
       _runs)))
  (:arg_name
   (&optional __arg_name)
   (if __arg_name (setq _arg_name __arg_name)) _arg_name)
  (:arg_value
   (&optional __arg_value)
   (if __arg_value (setq _arg_value __arg_value)) _arg_value)
  (:serialization-length
   ()
   (+
    ;; string _joint_name
    4 (length _joint_name)
    ;; joint_qualification_controllers/HysteresisRun[] _runs
    (apply #'+ (send-all _runs :serialization-length)) 4
    ;; string[] _arg_name
    (apply #'+ (mapcar #'(lambda (x) (+ 4 (length x))) _arg_name)) 4
    ;; float32[] _arg_value
    (* 4    (length _arg_value)) 4
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; string _joint_name
       (write-long (length _joint_name) s) (princ _joint_name s)
     ;; joint_qualification_controllers/HysteresisRun[] _runs
     (write-long (length _runs) s)
     (dolist (elem _runs)
       (send elem :serialize s)
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
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; string _joint_name
     (let (n) (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4) (setq _joint_name (subseq buf ptr- (+ ptr- n))) (incf ptr- n))
   ;; joint_qualification_controllers/HysteresisRun[] _runs
   (let (n)
     (setq n (sys::peek buf ptr- :integer)) (incf ptr- 4)
     (setq _runs (let (r) (dotimes (i n) (push (instance joint_qualification_controllers::HysteresisRun :init) r)) r))
     (dolist (elem- _runs)
     (send elem- :deserialize buf ptr-) (incf ptr- (send elem- :serialization-length))
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
   ;;
   self)
  )

(setf (get joint_qualification_controllers::HysteresisData2 :md5sum-) "e58eacdd7f3ac3c02f9d494da1e59355")
(setf (get joint_qualification_controllers::HysteresisData2 :datatype-) "joint_qualification_controllers/HysteresisData2")
(setf (get joint_qualification_controllers::HysteresisData2 :definition-)
      "string joint_name

HysteresisRun[] runs

string[] arg_name
float32[] arg_value

================================================================================
MSG: joint_qualification_controllers/HysteresisRun
float32[] time
float32[] effort
float32[] position
float32[] velocity
uint8 dir
uint8 UP=0
uint8 DOWN=1

")



(provide :joint_qualification_controllers/HysteresisData2 "e58eacdd7f3ac3c02f9d494da1e59355")


