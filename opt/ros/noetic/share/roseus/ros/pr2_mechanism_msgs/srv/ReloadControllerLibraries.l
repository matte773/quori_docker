;; Auto-generated. Do not edit!


(when (boundp 'pr2_mechanism_msgs::ReloadControllerLibraries)
  (if (not (find-package "PR2_MECHANISM_MSGS"))
    (make-package "PR2_MECHANISM_MSGS"))
  (shadow 'ReloadControllerLibraries (find-package "PR2_MECHANISM_MSGS")))
(unless (find-package "PR2_MECHANISM_MSGS::RELOADCONTROLLERLIBRARIES")
  (make-package "PR2_MECHANISM_MSGS::RELOADCONTROLLERLIBRARIES"))
(unless (find-package "PR2_MECHANISM_MSGS::RELOADCONTROLLERLIBRARIESREQUEST")
  (make-package "PR2_MECHANISM_MSGS::RELOADCONTROLLERLIBRARIESREQUEST"))
(unless (find-package "PR2_MECHANISM_MSGS::RELOADCONTROLLERLIBRARIESRESPONSE")
  (make-package "PR2_MECHANISM_MSGS::RELOADCONTROLLERLIBRARIESRESPONSE"))

(in-package "ROS")





(defclass pr2_mechanism_msgs::ReloadControllerLibrariesRequest
  :super ros::object
  :slots (_force_kill ))

(defmethod pr2_mechanism_msgs::ReloadControllerLibrariesRequest
  (:init
   (&key
    ((:force_kill __force_kill) nil)
    )
   (send-super :init)
   (setq _force_kill __force_kill)
   self)
  (:force_kill
   (&optional (__force_kill :null))
   (if (not (eq __force_kill :null)) (setq _force_kill __force_kill)) _force_kill)
  (:serialization-length
   ()
   (+
    ;; bool _force_kill
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _force_kill
       (if _force_kill (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _force_kill
     (setq _force_kill (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pr2_mechanism_msgs::ReloadControllerLibrariesResponse
  :super ros::object
  :slots (_ok ))

(defmethod pr2_mechanism_msgs::ReloadControllerLibrariesResponse
  (:init
   (&key
    ((:ok __ok) nil)
    )
   (send-super :init)
   (setq _ok __ok)
   self)
  (:ok
   (&optional (__ok :null))
   (if (not (eq __ok :null)) (setq _ok __ok)) _ok)
  (:serialization-length
   ()
   (+
    ;; bool _ok
    1
    ))
  (:serialize
   (&optional strm)
   (let ((s (if strm strm
              (make-string-output-stream (send self :serialization-length)))))
     ;; bool _ok
       (if _ok (write-byte -1 s) (write-byte 0 s))
     ;;
     (if (null strm) (get-output-stream-string s))))
  (:deserialize
   (buf &optional (ptr- 0))
   ;; bool _ok
     (setq _ok (not (= 0 (sys::peek buf ptr- :char)))) (incf ptr- 1)
   ;;
   self)
  )

(defclass pr2_mechanism_msgs::ReloadControllerLibraries
  :super ros::object
  :slots ())

(setf (get pr2_mechanism_msgs::ReloadControllerLibraries :md5sum-) "40e8c411fd1797d2e2c486018f846040")
(setf (get pr2_mechanism_msgs::ReloadControllerLibraries :datatype-) "pr2_mechanism_msgs/ReloadControllerLibraries")
(setf (get pr2_mechanism_msgs::ReloadControllerLibraries :request) pr2_mechanism_msgs::ReloadControllerLibrariesRequest)
(setf (get pr2_mechanism_msgs::ReloadControllerLibraries :response) pr2_mechanism_msgs::ReloadControllerLibrariesResponse)

(defmethod pr2_mechanism_msgs::ReloadControllerLibrariesRequest
  (:response () (instance pr2_mechanism_msgs::ReloadControllerLibrariesResponse :init)))

(setf (get pr2_mechanism_msgs::ReloadControllerLibrariesRequest :md5sum-) "40e8c411fd1797d2e2c486018f846040")
(setf (get pr2_mechanism_msgs::ReloadControllerLibrariesRequest :datatype-) "pr2_mechanism_msgs/ReloadControllerLibrariesRequest")
(setf (get pr2_mechanism_msgs::ReloadControllerLibrariesRequest :definition-)
      "# The ReloadControllerLibraries service will reload all controllers that are available in
# the system as plugins


# Reloading libraries only works if there are no controllers loaded. If there
# are still some controllers loaded, the reloading will fail.
# If this bool is set to true, all loaded controllers will get
# killed automatically, and the reloading can succeed.
bool force_kill
---
bool ok
")

(setf (get pr2_mechanism_msgs::ReloadControllerLibrariesResponse :md5sum-) "40e8c411fd1797d2e2c486018f846040")
(setf (get pr2_mechanism_msgs::ReloadControllerLibrariesResponse :datatype-) "pr2_mechanism_msgs/ReloadControllerLibrariesResponse")
(setf (get pr2_mechanism_msgs::ReloadControllerLibrariesResponse :definition-)
      "# The ReloadControllerLibraries service will reload all controllers that are available in
# the system as plugins


# Reloading libraries only works if there are no controllers loaded. If there
# are still some controllers loaded, the reloading will fail.
# If this bool is set to true, all loaded controllers will get
# killed automatically, and the reloading can succeed.
bool force_kill
---
bool ok
")



(provide :pr2_mechanism_msgs/ReloadControllerLibraries "40e8c411fd1797d2e2c486018f846040")


