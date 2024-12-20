; Auto-generated. Do not edit!


(cl:in-package joint_qualification_controllers-msg)


;//! \htmlinclude WristRollTurn.msg.html

(cl:defclass <WristRollTurn> (roslisp-msg-protocol:ros-message)
  ((time
    :reader time
    :initarg :time
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (flex_position
    :reader flex_position
    :initarg :flex_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (flex_effort
    :reader flex_effort
    :initarg :flex_effort
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (flex_cmd
    :reader flex_cmd
    :initarg :flex_cmd
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (roll_position
    :reader roll_position
    :initarg :roll_position
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (roll_effort
    :reader roll_effort
    :initarg :roll_effort
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (roll_cmd
    :reader roll_cmd
    :initarg :roll_cmd
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0))
   (roll_velocity
    :reader roll_velocity
    :initarg :roll_velocity
    :type (cl:vector cl:float)
   :initform (cl:make-array 0 :element-type 'cl:float :initial-element 0.0)))
)

(cl:defclass WristRollTurn (<WristRollTurn>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <WristRollTurn>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'WristRollTurn)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_qualification_controllers-msg:<WristRollTurn> is deprecated: use joint_qualification_controllers-msg:WristRollTurn instead.")))

(cl:ensure-generic-function 'time-val :lambda-list '(m))
(cl:defmethod time-val ((m <WristRollTurn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:time-val is deprecated.  Use joint_qualification_controllers-msg:time instead.")
  (time m))

(cl:ensure-generic-function 'flex_position-val :lambda-list '(m))
(cl:defmethod flex_position-val ((m <WristRollTurn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_position-val is deprecated.  Use joint_qualification_controllers-msg:flex_position instead.")
  (flex_position m))

(cl:ensure-generic-function 'flex_effort-val :lambda-list '(m))
(cl:defmethod flex_effort-val ((m <WristRollTurn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_effort-val is deprecated.  Use joint_qualification_controllers-msg:flex_effort instead.")
  (flex_effort m))

(cl:ensure-generic-function 'flex_cmd-val :lambda-list '(m))
(cl:defmethod flex_cmd-val ((m <WristRollTurn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_cmd-val is deprecated.  Use joint_qualification_controllers-msg:flex_cmd instead.")
  (flex_cmd m))

(cl:ensure-generic-function 'roll_position-val :lambda-list '(m))
(cl:defmethod roll_position-val ((m <WristRollTurn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:roll_position-val is deprecated.  Use joint_qualification_controllers-msg:roll_position instead.")
  (roll_position m))

(cl:ensure-generic-function 'roll_effort-val :lambda-list '(m))
(cl:defmethod roll_effort-val ((m <WristRollTurn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:roll_effort-val is deprecated.  Use joint_qualification_controllers-msg:roll_effort instead.")
  (roll_effort m))

(cl:ensure-generic-function 'roll_cmd-val :lambda-list '(m))
(cl:defmethod roll_cmd-val ((m <WristRollTurn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:roll_cmd-val is deprecated.  Use joint_qualification_controllers-msg:roll_cmd instead.")
  (roll_cmd m))

(cl:ensure-generic-function 'roll_velocity-val :lambda-list '(m))
(cl:defmethod roll_velocity-val ((m <WristRollTurn>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:roll_velocity-val is deprecated.  Use joint_qualification_controllers-msg:roll_velocity instead.")
  (roll_velocity m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <WristRollTurn>) ostream)
  "Serializes a message object of type '<WristRollTurn>"
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'time))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'time))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flex_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'flex_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flex_effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'flex_effort))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flex_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'flex_cmd))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roll_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'roll_position))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roll_effort))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'roll_effort))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roll_cmd))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'roll_cmd))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'roll_velocity))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (cl:let ((bits (roslisp-utils:encode-single-float-bits ele)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)))
   (cl:slot-value msg 'roll_velocity))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <WristRollTurn>) istream)
  "Deserializes a message object of type '<WristRollTurn>"
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'time) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'time)))
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
  (cl:setf (cl:slot-value msg 'flex_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flex_position)))
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
  (cl:setf (cl:slot-value msg 'flex_effort) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flex_effort)))
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
  (cl:setf (cl:slot-value msg 'flex_cmd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flex_cmd)))
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
  (cl:setf (cl:slot-value msg 'roll_position) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roll_position)))
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
  (cl:setf (cl:slot-value msg 'roll_effort) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roll_effort)))
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
  (cl:setf (cl:slot-value msg 'roll_cmd) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roll_cmd)))
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
  (cl:setf (cl:slot-value msg 'roll_velocity) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'roll_velocity)))
    (cl:dotimes (i __ros_arr_len)
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:aref vals i) (roslisp-utils:decode-single-float-bits bits))))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<WristRollTurn>)))
  "Returns string type for a message object of type '<WristRollTurn>"
  "joint_qualification_controllers/WristRollTurn")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'WristRollTurn)))
  "Returns string type for a message object of type 'WristRollTurn"
  "joint_qualification_controllers/WristRollTurn")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<WristRollTurn>)))
  "Returns md5sum for a message object of type '<WristRollTurn>"
  "27db8c0ca950f1334a70a45b5bc8427f")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'WristRollTurn)))
  "Returns md5sum for a message object of type 'WristRollTurn"
  "27db8c0ca950f1334a70a45b5bc8427f")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<WristRollTurn>)))
  "Returns full string definition for message of type '<WristRollTurn>"
  (cl:format cl:nil "float32[] time~%float32[] flex_position~%float32[] flex_effort~%float32[] flex_cmd~%float32[] roll_position~%float32[] roll_effort~%float32[] roll_cmd~%float32[] roll_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'WristRollTurn)))
  "Returns full string definition for message of type 'WristRollTurn"
  (cl:format cl:nil "float32[] time~%float32[] flex_position~%float32[] flex_effort~%float32[] flex_cmd~%float32[] roll_position~%float32[] roll_effort~%float32[] roll_cmd~%float32[] roll_velocity~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <WristRollTurn>))
  (cl:+ 0
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'time) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flex_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flex_effort) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flex_cmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roll_position) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roll_effort) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roll_cmd) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'roll_velocity) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ 4)))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <WristRollTurn>))
  "Converts a ROS message object to a list"
  (cl:list 'WristRollTurn
    (cl:cons ':time (time msg))
    (cl:cons ':flex_position (flex_position msg))
    (cl:cons ':flex_effort (flex_effort msg))
    (cl:cons ':flex_cmd (flex_cmd msg))
    (cl:cons ':roll_position (roll_position msg))
    (cl:cons ':roll_effort (roll_effort msg))
    (cl:cons ':roll_cmd (roll_cmd msg))
    (cl:cons ':roll_velocity (roll_velocity msg))
))
