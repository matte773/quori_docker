
(cl:in-package :asdf)

(defsystem "calibration_msgs-msg"
  :depends-on (:roslisp-msg-protocol :roslisp-utils :geometry_msgs-msg
               :sensor_msgs-msg
               :std_msgs-msg
)
  :components ((:file "_package")
    (:file "CalibrationPattern" :depends-on ("_package_CalibrationPattern"))
    (:file "_package_CalibrationPattern" :depends-on ("_package"))
    (:file "CameraMeasurement" :depends-on ("_package_CameraMeasurement"))
    (:file "_package_CameraMeasurement" :depends-on ("_package"))
    (:file "ChainMeasurement" :depends-on ("_package_ChainMeasurement"))
    (:file "_package_ChainMeasurement" :depends-on ("_package"))
    (:file "DenseLaserObjectFeatures" :depends-on ("_package_DenseLaserObjectFeatures"))
    (:file "_package_DenseLaserObjectFeatures" :depends-on ("_package"))
    (:file "DenseLaserPoint" :depends-on ("_package_DenseLaserPoint"))
    (:file "_package_DenseLaserPoint" :depends-on ("_package"))
    (:file "DenseLaserSnapshot" :depends-on ("_package_DenseLaserSnapshot"))
    (:file "_package_DenseLaserSnapshot" :depends-on ("_package"))
    (:file "Interval" :depends-on ("_package_Interval"))
    (:file "_package_Interval" :depends-on ("_package"))
    (:file "IntervalStamped" :depends-on ("_package_IntervalStamped"))
    (:file "_package_IntervalStamped" :depends-on ("_package"))
    (:file "IntervalStatus" :depends-on ("_package_IntervalStatus"))
    (:file "_package_IntervalStatus" :depends-on ("_package"))
    (:file "JointStateCalibrationPattern" :depends-on ("_package_JointStateCalibrationPattern"))
    (:file "_package_JointStateCalibrationPattern" :depends-on ("_package"))
    (:file "LaserMeasurement" :depends-on ("_package_LaserMeasurement"))
    (:file "_package_LaserMeasurement" :depends-on ("_package"))
    (:file "RobotMeasurement" :depends-on ("_package_RobotMeasurement"))
    (:file "_package_RobotMeasurement" :depends-on ("_package"))
  ))