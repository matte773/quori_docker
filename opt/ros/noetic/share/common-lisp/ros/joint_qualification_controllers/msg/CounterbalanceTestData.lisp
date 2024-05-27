; Auto-generated. Do not edit!


(cl:in-package joint_qualification_controllers-msg)


;//! \htmlinclude CounterbalanceTestData.msg.html

(cl:defclass <CounterbalanceTestData> (roslisp-msg-protocol:ros-message)
  ((lift_joint
    :reader lift_joint
    :initarg :lift_joint
    :type cl:string
    :initform "")
   (flex_joint
    :reader flex_joint
    :initarg :flex_joint
    :type cl:string
    :initform "")
   (lift_amplitude
    :reader lift_amplitude
    :initarg :lift_amplitude
    :type cl:float
    :initform 0.0)
   (flex_amplitude
    :reader flex_amplitude
    :initarg :flex_amplitude
    :type cl:float
    :initform 0.0)
   (timeout_hit
    :reader timeout_hit
    :initarg :timeout_hit
    :type cl:boolean
    :initform cl:nil)
   (flex_test
    :reader flex_test
    :initarg :flex_test
    :type cl:boolean
    :initform cl:nil)
   (arg_name
    :reader arg_name
    :initarg :arg_name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (arg_value
    :reader arg_value
    :initarg :arg_value
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (lift_data
    :reader lift_data
    :initarg :lift_data
    :type (cl:vector joint_qualification_controllers-msg:CBRunData)
   :initform (cl:make-array 0 :element-type 'joint_qualification_controllers-msg:CBRunData :initial-element (cl:make-instance 'joint_qualification_controllers-msg:CBRunData))))
)

(cl:defclass CounterbalanceTestData (<CounterbalanceTestData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CounterbalanceTestData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CounterbalanceTestData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_qualification_controllers-msg:<CounterbalanceTestData> is deprecated: use joint_qualification_controllers-msg:CounterbalanceTestData instead.")))

(cl:ensure-generic-function 'lift_joint-val :lambda-list '(m))
(cl:defmethod lift_joint-val ((m <CounterbalanceTestData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:lift_joint-val is deprecated.  Use joint_qualification_controllers-msg:lift_joint instead.")
  (lift_joint m))

(cl:ensure-generic-function 'flex_joint-val :lambda-list '(m))
(cl:defmethod flex_joint-val ((m <CounterbalanceTestData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_joint-val is deprecated.  Use joint_qualification_controllers-msg:flex_joint instead.")
  (flex_joint m))

(cl:ensure-generic-function 'lift_amplitude-val :lambda-list '(m))
(cl:defmethod lift_amplitude-val ((m <CounterbalanceTestData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:lift_amplitude-val is deprecated.  Use joint_qualification_controllers-msg:lift_amplitude instead.")
  (lift_amplitude m))

(cl:ensure-generic-function 'flex_amplitude-val :lambda-list '(m))
(cl:defmethod flex_amplitude-val ((m <CounterbalanceTestData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_amplitude-val is deprecated.  Use joint_qualification_controllers-msg:flex_amplitude instead.")
  (flex_amplitude m))

(cl:ensure-generic-function 'timeout_hit-val :lambda-list '(m))
(cl:defmethod timeout_hit-val ((m <CounterbalanceTestData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:timeout_hit-val is deprecated.  Use joint_qualification_controllers-msg:timeout_hit instead.")
  (timeout_hit m))

(cl:ensure-generic-function 'flex_test-val :lambda-list '(m))
(cl:defmethod flex_test-val ((m <CounterbalanceTestData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_test-val is deprecated.  Use joint_qualification_controllers-msg:flex_test instead.")
  (flex_test m))

(cl:ensure-generic-function 'arg_name-val :lambda-list '(m))
(cl:defmethod arg_name-val ((m <CounterbalanceTestData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:arg_name-val is deprecated.  Use joint_qualification_controllers-msg:arg_name instead.")
  (arg_name m))

(cl:ensure-generic-function 'arg_value-val :lambda-list '(m))
(cl:defmethod arg_value-val ((m <CounterbalanceTestData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:arg_value-val is deprecated.  Use joint_qualification_controllers-msg:arg_value instead.")
  (arg_value m))

(cl:ensure-generic-function 'lift_data-val :lambda-list '(m))
(cl:defmethod lift_data-val ((m <CounterbalanceTestData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:lift_data-val is deprecated.  Use joint_qualification_controllers-msg:lift_data instead.")
  (lift_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CounterbalanceTestData>) ostream)
  "Serializes a message object of type '<CounterbalanceTestData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'lift_joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'lift_joint))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'flex_joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'flex_joint))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lift_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'flex_amplitude))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'timeout_hit) 1 0)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'flex_test) 1 0)) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arg_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((__ros_str_len (cl:length ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) ele))
   (cl:slot-value msg 'arg_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'arg_value))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'arg_value))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'lift_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'lift_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CounterbalanceTestData>) istream)
  "Deserializes a message object of type '<CounterbalanceTestData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'lift_joint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'lift_joint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flex_joint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'flex_joint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lift_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'flex_amplitude) (roslisp-utils:decode-single-float-bits bits)))
    (cl:setf (cl:slot-value msg 'timeout_hit) (cl:not (cl:zerop (cl:read-byte istream))))
    (cl:setf (cl:slot-value msg 'flex_test) (cl:not (cl:zerop (cl:read-byte istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arg_name) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arg_name)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:aref vals i) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:aref vals i) __ros_str_idx) (cl:code-char (cl:read-byte istream))))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'arg_value) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'arg_value)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'lift_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'lift_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'joint_qualification_controllers-msg:CBRunData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CounterbalanceTestData>)))
  "Returns string type for a message object of type '<CounterbalanceTestData>"
  "joint_qualification_controllers/CounterbalanceTestData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CounterbalanceTestData)))
  "Returns string type for a message object of type 'CounterbalanceTestData"
  "joint_qualification_controllers/CounterbalanceTestData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CounterbalanceTestData>)))
  "Returns md5sum for a message object of type '<CounterbalanceTestData>"
  "ab80d40971aa9176fd2c9fb75aeb93cf")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CounterbalanceTestData)))
  "Returns md5sum for a message object of type 'CounterbalanceTestData"
  "ab80d40971aa9176fd2c9fb75aeb93cf")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CounterbalanceTestData>)))
  "Returns full string definition for message of type '<CounterbalanceTestData>"
  (cl:format cl:nil "string lift_joint~%string flex_joint~%float32 lift_amplitude~%float32 flex_amplitude~%bool timeout_hit~%bool flex_test~%string[] arg_name~%float32[] arg_value~%CBRunData[] lift_data # Data for each hold~%================================================================================~%MSG: joint_qualification_controllers/CBRunData~%float32 lift_position~%CBPositionData[] flex_data # Same lift position, diff flex positions~%================================================================================~%MSG: joint_qualification_controllers/CBPositionData~%float32 flex_position~%JointPositionData lift_hold~%JointPositionData flex_hold~%~%================================================================================~%MSG: joint_qualification_controllers/JointPositionData~%float32[] time~%float32[] position~%float32[] velocity~%float32[] effort~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CounterbalanceTestData)))
  "Returns full string definition for message of type 'CounterbalanceTestData"
  (cl:format cl:nil "string lift_joint~%string flex_joint~%float32 lift_amplitude~%float32 flex_amplitude~%bool timeout_hit~%bool flex_test~%string[] arg_name~%float32[] arg_value~%CBRunData[] lift_data # Data for each hold~%================================================================================~%MSG: joint_qualification_controllers/CBRunData~%float32 lift_position~%CBPositionData[] flex_data # Same lift position, diff flex positions~%================================================================================~%MSG: joint_qualification_controllers/CBPositionData~%float32 flex_position~%JointPositionData lift_hold~%JointPositionData flex_hold~%~%================================================================================~%MSG: joint_qualification_controllers/JointPositionData~%float32[] time~%float32[] position~%float32[] velocity~%float32[] effort~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CounterbalanceTestData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'lift_joint))
     4 (cl:length (cl:slot-value msg 'flex_joint))
     4
     4
     1
     1
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'lift_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CounterbalanceTestData>))
  "Converts a ROS message object to a list"
  (cl:list 'CounterbalanceTestData
    (cl:cons ':lift_joint (lift_joint msg))
    (cl:cons ':flex_joint (flex_joint msg))
    (cl:cons ':lift_amplitude (lift_amplitude msg))
    (cl:cons ':flex_amplitude (flex_amplitude msg))
    (cl:cons ':timeout_hit (timeout_hit msg))
    (cl:cons ':flex_test (flex_test msg))
    (cl:cons ':arg_name (arg_name msg))
    (cl:cons ':arg_value (arg_value msg))
    (cl:cons ':lift_data (lift_data msg))
))
