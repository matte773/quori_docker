; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-msg)


;//! \htmlinclude ChainMeasurement.msg.html

(cl:defclass <ChainMeasurement> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (chain_id
    :reader chain_id
    :initarg :chain_id
    :type cl:string
    :initform "")
   (chain_state
    :reader chain_state
    :initarg :chain_state
    :type sensor_msgs-msg:JointState
    :initform (cl:make-instance 'sensor_msgs-msg:JointState)))
)

(cl:defclass ChainMeasurement (<ChainMeasurement>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ChainMeasurement>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ChainMeasurement)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-msg:<ChainMeasurement> is deprecated: use calibration_msgs-msg:ChainMeasurement instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <ChainMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:header-val is deprecated.  Use calibration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'chain_id-val :lambda-list '(m))
(cl:defmethod chain_id-val ((m <ChainMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:chain_id-val is deprecated.  Use calibration_msgs-msg:chain_id instead.")
  (chain_id m))

(cl:ensure-generic-function 'chain_state-val :lambda-list '(m))
(cl:defmethod chain_state-val ((m <ChainMeasurement>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:chain_state-val is deprecated.  Use calibration_msgs-msg:chain_state instead.")
  (chain_state m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ChainMeasurement>) ostream)
  "Serializes a message object of type '<ChainMeasurement>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'chain_id))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'chain_id))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'chain_state) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ChainMeasurement>) istream)
  "Deserializes a message object of type '<ChainMeasurement>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'chain_id) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'chain_id) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'chain_state) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ChainMeasurement>)))
  "Returns string type for a message object of type '<ChainMeasurement>"
  "calibration_msgs/ChainMeasurement")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ChainMeasurement)))
  "Returns string type for a message object of type 'ChainMeasurement"
  "calibration_msgs/ChainMeasurement")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ChainMeasurement>)))
  "Returns md5sum for a message object of type '<ChainMeasurement>"
  "a57d957972fc9bc34b14f2a3cac0fbae")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ChainMeasurement)))
  "Returns md5sum for a message object of type 'ChainMeasurement"
  "a57d957972fc9bc34b14f2a3cac0fbae")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ChainMeasurement>)))
  "Returns full string definition for message of type '<ChainMeasurement>"
  (cl:format cl:nil "Header header~%string chain_id~%sensor_msgs/JointState chain_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ChainMeasurement)))
  "Returns full string definition for message of type 'ChainMeasurement"
  (cl:format cl:nil "Header header~%string chain_id~%sensor_msgs/JointState chain_state~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: sensor_msgs/JointState~%# This is a message that holds data to describe the state of a set of torque controlled joints. ~%#~%# The state of each joint (revolute or prismatic) is defined by:~%#  * the position of the joint (rad or m),~%#  * the velocity of the joint (rad/s or m/s) and ~%#  * the effort that is applied in the joint (Nm or N).~%#~%# Each joint is uniquely identified by its name~%# The header specifies the time at which the joint states were recorded. All the joint states~%# in one message have to be recorded at the same time.~%#~%# This message consists of a multiple arrays, one for each part of the joint state. ~%# The goal is to make each of the fields optional. When e.g. your joints have no~%# effort associated with them, you can leave the effort array empty. ~%#~%# All arrays in this message should have the same size, or be empty.~%# This is the only way to uniquely associate the joint name with the correct~%# states.~%~%~%Header header~%~%string[] name~%float64[] position~%float64[] velocity~%float64[] effort~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ChainMeasurement>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:length (cl:slot-value msg 'chain_id))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'chain_state))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ChainMeasurement>))
  "Converts a ROS message object to a list"
  (cl:list 'ChainMeasurement
    (cl:cons ':header (header msg))
    (cl:cons ':chain_id (chain_id msg))
    (cl:cons ':chain_state (chain_state msg))
))
