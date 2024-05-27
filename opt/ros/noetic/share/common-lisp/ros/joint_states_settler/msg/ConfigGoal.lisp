; Auto-generated. Do not edit!


(cl:in-package joint_states_settler-msg)


;//! \htmlinclude ConfigGoal.msg.html

(cl:defclass <ConfigGoal> (roslisp-msg-protocol:ros-message)
  ((joint_names
    :reader joint_names
    :initarg :joint_names
    :type (cl:vector cl:string)
   :initform (cl:make-array 0 :element-type 'cl:string :initial-element ""))
   (tolerances
    :reader tolerances
    :initarg :tolerances
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (max_step
    :reader max_step
    :initarg :max_step
    :type cl:real
    :initform 0)
   (cache_size
    :reader cache_size
    :initarg :cache_size
    :type cl:integer
    :initform 0))
)

(cl:defclass ConfigGoal (<ConfigGoal>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigGoal>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigGoal)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_states_settler-msg:<ConfigGoal> is deprecated: use joint_states_settler-msg:ConfigGoal instead.")))

(cl:ensure-generic-function 'joint_names-val :lambda-list '(m))
(cl:defmethod joint_names-val ((m <ConfigGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_states_settler-msg:joint_names-val is deprecated.  Use joint_states_settler-msg:joint_names instead.")
  (joint_names m))

(cl:ensure-generic-function 'tolerances-val :lambda-list '(m))
(cl:defmethod tolerances-val ((m <ConfigGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_states_settler-msg:tolerances-val is deprecated.  Use joint_states_settler-msg:tolerances instead.")
  (tolerances m))

(cl:ensure-generic-function 'max_step-val :lambda-list '(m))
(cl:defmethod max_step-val ((m <ConfigGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_states_settler-msg:max_step-val is deprecated.  Use joint_states_settler-msg:max_step instead.")
  (max_step m))

(cl:ensure-generic-function 'cache_size-val :lambda-list '(m))
(cl:defmethod cache_size-val ((m <ConfigGoal>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_states_settler-msg:cache_size-val is deprecated.  Use joint_states_settler-msg:cache_size instead.")
  (cache_size m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigGoal>) ostream)
  "Serializes a message object of type '<ConfigGoal>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'joint_names))))
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
   (cl:slot-value msg 'joint_names))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'tolerances))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-double-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream)))
   (cl:slot-value msg 'tolerances))
  (cl:let ((__sec (cl:floor (cl:slot-value msg 'max_step)))
        (__nsec (cl:round (cl:* 1e9 (cl:- (cl:slot-value msg 'max_step) (cl:floor (cl:slot-value msg 'max_step)))))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __sec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 0) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __nsec) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __nsec) ostream))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cache_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cache_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cache_size)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cache_size)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigGoal>) istream)
  "Deserializes a message object of type '<ConfigGoal>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'joint_names) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'joint_names)))
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
  (cl:setf (cl:slot-value msg 'tolerances) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'tolerances)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-double-float-bits bits))))))
    (cl:let ((__sec 0) (__nsec 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __sec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 0) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __nsec) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __nsec) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'max_step) (cl:+ (cl:coerce __sec 'cl:double-float) (cl:/ __nsec 1e9))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'cache_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) (cl:slot-value msg 'cache_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) (cl:slot-value msg 'cache_size)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) (cl:slot-value msg 'cache_size)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigGoal>)))
  "Returns string type for a message object of type '<ConfigGoal>"
  "joint_states_settler/ConfigGoal")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigGoal)))
  "Returns string type for a message object of type 'ConfigGoal"
  "joint_states_settler/ConfigGoal")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigGoal>)))
  "Returns md5sum for a message object of type '<ConfigGoal>"
  "863b25359077f9aa231257b3d1612b63")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigGoal)))
  "Returns md5sum for a message object of type 'ConfigGoal"
  "863b25359077f9aa231257b3d1612b63")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigGoal>)))
  "Returns full string definition for message of type '<ConfigGoal>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string[] joint_names   # Names of the joints we're waiting to settle~%float64[] tolerances   # Tolerance on each of the specified joints~%duration max_step      # The maximum timestep between two elements in an interval~%uint32 cache_size      # The size of our cache when searching for an interval~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigGoal)))
  "Returns full string definition for message of type 'ConfigGoal"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%string[] joint_names   # Names of the joints we're waiting to settle~%float64[] tolerances   # Tolerance on each of the specified joints~%duration max_step      # The maximum timestep between two elements in an interval~%uint32 cache_size      # The size of our cache when searching for an interval~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigGoal>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'joint_names) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4 (cl:length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'tolerances) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 8)))
     8
     4
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigGoal>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigGoal
    (cl:cons ':joint_names (joint_names msg))
    (cl:cons ':tolerances (tolerances msg))
    (cl:cons ':max_step (max_step msg))
    (cl:cons ':cache_size (cache_size msg))
))
