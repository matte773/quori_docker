; Auto-generated. Do not edit!


(cl:in-package joint_qualification_controllers-msg)


;//! \htmlinclude HysteresisData2.msg.html

(cl:defclass <HysteresisData2> (roslisp-msg-protocol:ros-message)
  ((joint_name
    :reader joint_name
    :initarg :joint_name
    :type cl:string
    :initform "")
   (runs
    :reader runs
    :initarg :runs
    :type (cl:vector joint_qualification_controllers-msg:HysteresisRun)
   :initform (cl:make-array 0 :element-type 'joint_qualification_controllers-msg:HysteresisRun :initial-element (cl:make-instance 'joint_qualification_controllers-msg:HysteresisRun)))
   (arg_name
    :reader arg_name
    :initarg :arg_name
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (arg_value
    :reader arg_value
    :initarg :arg_value
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass HysteresisData2 (<HysteresisData2>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <HysteresisData2>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'HysteresisData2)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_qualification_controllers-msg:<HysteresisData2> is deprecated: use joint_qualification_controllers-msg:HysteresisData2 instead.")))

(cl:ensure-generic-function 'joint_name-val :lambda-list '(m))
(cl:defmethod joint_name-val ((m <HysteresisData2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:joint_name-val is deprecated.  Use joint_qualification_controllers-msg:joint_name instead.")
  (joint_name m))

(cl:ensure-generic-function 'runs-val :lambda-list '(m))
(cl:defmethod runs-val ((m <HysteresisData2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:runs-val is deprecated.  Use joint_qualification_controllers-msg:runs instead.")
  (runs m))

(cl:ensure-generic-function 'arg_name-val :lambda-list '(m))
(cl:defmethod arg_name-val ((m <HysteresisData2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:arg_name-val is deprecated.  Use joint_qualification_controllers-msg:arg_name instead.")
  (arg_name m))

(cl:ensure-generic-function 'arg_value-val :lambda-list '(m))
(cl:defmethod arg_value-val ((m <HysteresisData2>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:arg_value-val is deprecated.  Use joint_qualification_controllers-msg:arg_value instead.")
  (arg_value m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <HysteresisData2>) ostream)
  "Serializes a message object of type '<HysteresisData2>"
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'joint_name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'joint_name))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'runs))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'runs))
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
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <HysteresisData2>) istream)
  "Deserializes a message object of type '<HysteresisData2>"
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'joint_name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'joint_name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'runs) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'runs)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'joint_qualification_controllers-msg:HysteresisRun))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<HysteresisData2>)))
  "Returns string type for a message object of type '<HysteresisData2>"
  "joint_qualification_controllers/HysteresisData2")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'HysteresisData2)))
  "Returns string type for a message object of type 'HysteresisData2"
  "joint_qualification_controllers/HysteresisData2")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<HysteresisData2>)))
  "Returns md5sum for a message object of type '<HysteresisData2>"
  "e58eacdd7f3ac3c02f9d494da1e59355")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'HysteresisData2)))
  "Returns md5sum for a message object of type 'HysteresisData2"
  "e58eacdd7f3ac3c02f9d494da1e59355")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<HysteresisData2>)))
  "Returns full string definition for message of type '<HysteresisData2>"
  (cl:format cl:nil "string joint_name~%~%HysteresisRun[] runs~%~%string[] arg_name~%float32[] arg_value~%~%================================================================================~%MSG: joint_qualification_controllers/HysteresisRun~%float32[] time~%float32[] effort~%float32[] position~%float32[] velocity~%uint8 dir~%uint8 UP=0~%uint8 DOWN=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'HysteresisData2)))
  "Returns full string definition for message of type 'HysteresisData2"
  (cl:format cl:nil "string joint_name~%~%HysteresisRun[] runs~%~%string[] arg_name~%float32[] arg_value~%~%================================================================================~%MSG: joint_qualification_controllers/HysteresisRun~%float32[] time~%float32[] effort~%float32[] position~%float32[] velocity~%uint8 dir~%uint8 UP=0~%uint8 DOWN=1~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <HysteresisData2>))
  (cl:+ 0
     4 (cl:length (cl:slot-value msg 'joint_name))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'runs) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_name) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'arg_value) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <HysteresisData2>))
  "Converts a ROS message object to a list"
  (cl:list 'HysteresisData2
    (cl:cons ':joint_name (joint_name msg))
    (cl:cons ':runs (runs msg))
    (cl:cons ':arg_name (arg_name msg))
    (cl:cons ':arg_value (arg_value msg))
))
