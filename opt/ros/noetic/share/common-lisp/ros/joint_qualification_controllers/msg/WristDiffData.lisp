; Auto-generated. Do not edit!


(cl:in-package joint_qualification_controllers-msg)


;//! \htmlinclude WristDiffData.msg.html

(cl:defclass <WristDiffData> (roslisp-msg-protocol:ros-message)
  ((flex_joint
    :reader flex_joint
    :initarg :flex_joint
    :type cl:string
    :initform "")
   (roll_joint
    :reader roll_joint
    :initarg :roll_joint
    :type cl:string
    :initform "")
   (flex_pid
    :reader flex_pid
    :initarg :flex_pid
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (roll_pid
    :reader roll_pid
    :initarg :roll_pid
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
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
   (left_turn
    :reader left_turn
    :initarg :left_turn
    :type joint_qualification_controllers-msg:WristRollTurn
    :initform (cl:make-instance 'joint_qualification_controllers-msg:WristRollTurn))
   (right_turn
    :reader right_turn
    :initarg :right_turn
    :type joint_qualification_controllers-msg:WristRollTurn
    :initform (cl:make-instance 'joint_qualification_controllers-msg:WristRollTurn))
   (timeout
    :reader timeout
    :initarg :timeout
    :type cl:boolean
    :initform cl:nil))
)

(cl:defclass WristDiffData (<WristDiffData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WristDiffData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WristDiffData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_qualification_controllers-msg:<WristDiffData> is deprecated: use joint_qualification_controllers-msg:WristDiffData instead.")))

(cl:ensure-generic-function 'flex_joint-val :lambda-list '(m))
(cl:defmethod flex_joint-val ((m <WristDiffData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_joint-val is deprecated.  Use joint_qualification_controllers-msg:flex_joint instead.")
  (flex_joint m))

(cl:ensure-generic-function 'roll_joint-val :lambda-list '(m))
(cl:defmethod roll_joint-val ((m <WristDiffData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:roll_joint-val is deprecated.  Use joint_qualification_controllers-msg:roll_joint instead.")
  (roll_joint m))

(cl:ensure-generic-function 'flex_pid-val :lambda-list '(m))
(cl:defmethod flex_pid-val ((m <WristDiffData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_pid-val is deprecated.  Use joint_qualification_controllers-msg:flex_pid instead.")
  (flex_pid m))

(cl:ensure-generic-function 'roll_pid-val :lambda-list '(m))
(cl:defmethod roll_pid-val ((m <WristDiffData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:roll_pid-val is deprecated.  Use joint_qualification_controllers-msg:roll_pid instead.")
  (roll_pid m))

(cl:ensure-generic-function 'arg_name-val :lambda-list '(m))
(cl:defmethod arg_name-val ((m <WristDiffData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:arg_name-val is deprecated.  Use joint_qualification_controllers-msg:arg_name instead.")
  (arg_name m))

(cl:ensure-generic-function 'arg_value-val :lambda-list '(m))
(cl:defmethod arg_value-val ((m <WristDiffData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:arg_value-val is deprecated.  Use joint_qualification_controllers-msg:arg_value instead.")
  (arg_value m))

(cl:ensure-generic-function 'left_turn-val :lambda-list '(m))
(cl:defmethod left_turn-val ((m <WristDiffData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:left_turn-val is deprecated.  Use joint_qualification_controllers-msg:left_turn instead.")
  (left_turn m))

(cl:ensure-generic-function 'right_turn-val :lambda-list '(m))
(cl:defmethod right_turn-val ((m <WristDiffData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:right_turn-val is deprecated.  Use joint_qualification_controllers-msg:right_turn instead.")
  (right_turn m))

(cl:ensure-generic-function 'timeout-val :lambda-list '(m))
(cl:defmethod timeout-val ((m <WristDiffData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:timeout-val is deprecated.  Use joint_qualification_controllers-msg:timeout instead.")
  (timeout m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WristDiffData>) ostream)
  "Serializes a message object of type '<WristDiffData>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'flex_joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'flex_joint))
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'roll_joint))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'roll_joint))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flex_pid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'flex_pid))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roll_pid))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'roll_pid))
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
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'left_turn) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'right_turn) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:if (cl:slot-value msg 'timeout) 1 0)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WristDiffData>) istream)
  "Deserializes a message object of type '<WristDiffData>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'flex_joint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'flex_joint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'roll_joint) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'roll_joint) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'flex_pid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flex_pid)))
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
  (cl:setf (cl:slot-value msg 'roll_pid) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roll_pid)))
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
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'left_turn) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'right_turn) istream)
    (cl:setf (cl:slot-value msg 'timeout) (cl:not (cl:zerop (cl:read-byte istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WristDiffData>)))
  "Returns string type for a message object of type '<WristDiffData>"
  "joint_qualification_controllers/WristDiffData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WristDiffData)))
  "Returns string type for a message object of type 'WristDiffData"
  "joint_qualification_controllers/WristDiffData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WristDiffData>)))
  "Returns md5sum for a message object of type '<WristDiffData>"
  "b5450bf7a09b17c68a893b9c02e710f1")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WristDiffData)))
  "Returns md5sum for a message object of type 'WristDiffData"
  "b5450bf7a09b17c68a893b9c02e710f1")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WristDiffData>)))
  "Returns full string definition for message of type '<WristDiffData>"
  (cl:format cl:nil "string flex_joint~%string roll_joint~%float32[] flex_pid~%float32[] roll_pid~%string[] arg_name~%float32[] arg_value~%WristRollTurn left_turn~%WristRollTurn right_turn~%bool timeout~%~%================================================================================~%MSG: joint_qualification_controllers/WristRollTurn~%float32[] time~%float32[] flex_position~%float32[] flex_effort~%float32[] flex_cmd~%float32[] roll_position~%float32[] roll_effort~%float32[] roll_cmd~%float32[] roll_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WristDiffData)))
  "Returns full string definition for message of type 'WristDiffData"
  (cl:format cl:nil "string flex_joint~%string roll_joint~%float32[] flex_pid~%float32[] roll_pid~%string[] arg_name~%float32[] arg_value~%WristRollTurn left_turn~%WristRollTurn right_turn~%bool timeout~%~%================================================================================~%MSG: joint_qualification_controllers/WristRollTurn~%float32[] time~%float32[] flex_position~%float32[] flex_effort~%float32[] flex_cmd~%float32[] roll_position~%float32[] roll_effort~%float32[] roll_cmd~%float32[] roll_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WristDiffData>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'flex_joint))
     4 (cl:length (cl:slot-value msg 'roll_joint))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flex_pid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roll_pid) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'left_turn))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'right_turn))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WristDiffData>))
  "Converts a ROS message object to a list"
  (cl:list 'WristDiffData
    (cl:cons ':flex_joint (flex_joint msg))
    (cl:cons ':roll_joint (roll_joint msg))
    (cl:cons ':flex_pid (flex_pid msg))
    (cl:cons ':roll_pid (roll_pid msg))
    (cl:cons ':arg_name (arg_name msg))
    (cl:cons ':arg_value (arg_value msg))
    (cl:cons ':left_turn (left_turn msg))
    (cl:cons ':right_turn (right_turn msg))
    (cl:cons ':timeout (timeout msg))
))
