; Auto-generated. Do not edit!


(cl:in-package joint_qualification_controllers-msg)


;//! \htmlinclude RobotData.msg.html

(cl:defclass <RobotData> (roslisp-msg-protocol:ros-message)
  ((test_time
    :reader test_time
    :initarg :test_time
    :type cl:float
    :initform 0.0)
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:boolean
    :initform cl:nil)
   (num_joints
    :reader num_joints
    :initarg :num_joints
    :type cl:integer
    :initform 0)
   (num_actuators
    :reader num_actuators
    :initarg :num_actuators
    :type cl:integer
    :initform 0)
   (joint_data
    :reader joint_data
    :initarg :joint_data
    :type (cl:vector joint_qualification_controllers-msg:JointData)
   :initform (cl:make-array 0 :element-type 'joint_qualification_controllers-msg:JointData :initial-element (cl:make-instance 'joint_qualification_controllers-msg:JointData)))
   (actuator_data
    :reader actuator_data
    :initarg :actuator_data
    :type (cl:vector joint_qualification_controllers-msg:ActuatorData)
   :initform (cl:make-array 0 :element-type 'joint_qualification_controllers-msg:ActuatorData :initial-element (cl:make-instance 'joint_qualification_controllers-msg:ActuatorData))))
)

(cl:defclass RobotData (<RobotData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <RobotData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'RobotData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_qualification_controllers-msg:<RobotData> is deprecated: use joint_qualification_controllers-msg:RobotData instead.")))

(cl:ensure-generic-function 'test_time-val :lambda-list '(m))
(cl:defmethod test_time-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:test_time-val is deprecated.  Use joint_qualification_controllers-msg:test_time instead.")
  (test_time m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:timeout-val is deprecated.  Use joint_qualification_controllers-msg:timeout instead.")
  (timeout m))

(cl:ensure-generic-function 'num_joints-val :lambda-list '(m))
(cl:defmethod num_joints-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:num_joints-val is deprecated.  Use joint_qualification_controllers-msg:num_joints instead.")
  (num_joints m))

(cl:ensure-generic-function 'num_actuators-val :lambda-list '(m))
(cl:defmethod num_actuators-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:num_actuators-val is deprecated.  Use joint_qualification_controllers-msg:num_actuators instead.")
  (num_actuators m))

(cl:ensure-generic-function 'joint_data-val :lambda-list '(m))
(cl:defmethod joint_data-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:joint_data-val is deprecated.  Use joint_qualification_controllers-msg:joint_data instead.")
  (joint_data m))

(cl:ensure-generic-function 'actuator_data-val :lambda-list '(m))
(cl:defmethod actuator_data-val ((m <RobotData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:actuator_data-val is deprecated.  Use joint_qualification_controllers-msg:actuator_data instead.")
  (actuator_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <RobotData>) ostream)
  "Serializes a message object of type '<RobotData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'test_time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'timeout) 1 0)) ostream)
  (cl:let* ((signed (cl:slot-value msg 'num_joints)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let* ((signed (cl:slot-value msg 'num_actuators)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 4294967296) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) unsigned) ostream)
    )
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'joint_data))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'actuator_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'actuator_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <RobotData>) istream)
  "Deserializes a message object of type '<RobotData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'test_time) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'timeout) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_joints) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'num_actuators) (cl:if (cl:< unsigned 2147483648) unsigned (cl:- unsigned 4294967296))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'joint_qualification_controllers-msg:JointData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'actuator_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'actuator_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'joint_qualification_controllers-msg:ActuatorData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<RobotData>)))
  "Returns string type for a message object of type '<RobotData>"
  "joint_qualification_controllers/RobotData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'RobotData)))
  "Returns string type for a message object of type 'RobotData"
  "joint_qualification_controllers/RobotData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<RobotData>)))
  "Returns md5sum for a message object of type '<RobotData>"
  "025931e8023fe22bd8228a980121730a")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'RobotData)))
  "Returns md5sum for a message object of type 'RobotData"
  "025931e8023fe22bd8228a980121730a")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<RobotData>)))
  "Returns full string definition for message of type '<RobotData>"
  (cl:format cl:nil "float32 test_time~%bool timeout~%int32 num_joints~%int32 num_actuators~%JointData[] joint_data~%ActuatorData[] actuator_data~%~%================================================================================~%MSG: joint_qualification_controllers/JointData~%int16 index~%string name~%byte is_cal~%byte has_safety~%string type~%~%~%================================================================================~%MSG: joint_qualification_controllers/ActuatorData~%int16 index~%string name~%int16 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'RobotData)))
  "Returns full string definition for message of type 'RobotData"
  (cl:format cl:nil "float32 test_time~%bool timeout~%int32 num_joints~%int32 num_actuators~%JointData[] joint_data~%ActuatorData[] actuator_data~%~%================================================================================~%MSG: joint_qualification_controllers/JointData~%int16 index~%string name~%byte is_cal~%byte has_safety~%string type~%~%~%================================================================================~%MSG: joint_qualification_controllers/ActuatorData~%int16 index~%string name~%int16 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <RobotData>))
  (cl:+ 0
     4
     1
     4
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'actuator_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <RobotData>))
  "Converts a ROS message object to a list"
  (cl:list 'RobotData
    (cl:cons ':test_time (test_time msg))
    (cl:cons ':timeout (timeout msg))
    (cl:cons ':num_joints (num_joints msg))
    (cl:cons ':num_actuators (num_actuators msg))
    (cl:cons ':joint_data (joint_data msg))
    (cl:cons ':actuator_data (actuator_data msg))
))
