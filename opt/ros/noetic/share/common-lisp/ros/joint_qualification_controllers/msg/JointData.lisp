; Auto-generated. Do not edit!


(cl:in-package joint_qualification_controllers-msg)


;//! \htmlinclude JointData.msg.html

(cl:defclass <JointData> (roslisp-msg-protocol:ros-message)
  ((index
    :reader index
    :initarg :index
    :type cl:fixnum
    :initform 0)
   (name
    :reader name
    :initarg :name
    :type cl:string
    :initform "")
   (is_cal
    :reader is_cal
    :initarg :is_cal
    :type cl:integer
    :initform 0)
   (has_safety
    :reader has_safety
    :initarg :has_safety
    :type cl:integer
    :initform 0)
   (type
    :reader type
    :initarg :type
    :type cl:string
    :initform ""))
)

(cl:defclass JointData (<JointData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <JointData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'JointData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_qualification_controllers-msg:<JointData> is deprecated: use joint_qualification_controllers-msg:JointData instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <JointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:index-val is deprecated.  Use joint_qualification_controllers-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <JointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:name-val is deprecated.  Use joint_qualification_controllers-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'is_cal-val :lambda-list '(m))
(cl:defmethod is_cal-val ((m <JointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:is_cal-val is deprecated.  Use joint_qualification_controllers-msg:is_cal instead.")
  (is_cal m))

(cl:ensure-generic-function 'has_safety-val :lambda-list '(m))
(cl:defmethod has_safety-val ((m <JointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:has_safety-val is deprecated.  Use joint_qualification_controllers-msg:has_safety instead.")
  (has_safety m))

(cl:ensure-generic-function 'type-val :lambda-list '(m))
(cl:defmethod type-val ((m <JointData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:type-val is deprecated.  Use joint_qualification_controllers-msg:type instead.")
  (type m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <JointData>) ostream)
  "Serializes a message object of type '<JointData>"
  (cl:let* ((signed (cl:slot-value msg 'index)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'name))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'name))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_cal)) ostream)
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'has_safety)) ostream)
  (cl:let ((__ros_str_len (cl:length (cl:slot-value msg 'type))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_str_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_str_len) ostream))
  (cl:map cl:nil #'(cl:lambda (c) (cl:write-byte (cl:char-code c) ostream)) (cl:slot-value msg 'type))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <JointData>) istream)
  "Deserializes a message object of type '<JointData>"
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'index) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'name) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'name) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'is_cal)) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'has_safety)) (cl:read-byte istream))
    (cl:let ((__ros_str_len 0))
      (cl:setf (cl:ldb (cl:byte 8 0) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) __ros_str_len) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'type) (cl:make-string __ros_str_len))
      (cl:dotimes (__ros_str_idx __ros_str_len msg)
        (cl:setf (cl:char (cl:slot-value msg 'type) __ros_str_idx) (cl:code-char (cl:read-byte istream)))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<JointData>)))
  "Returns string type for a message object of type '<JointData>"
  "joint_qualification_controllers/JointData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'JointData)))
  "Returns string type for a message object of type 'JointData"
  "joint_qualification_controllers/JointData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<JointData>)))
  "Returns md5sum for a message object of type '<JointData>"
  "191610564bf935172c9424c803ed6939")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'JointData)))
  "Returns md5sum for a message object of type 'JointData"
  "191610564bf935172c9424c803ed6939")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<JointData>)))
  "Returns full string definition for message of type '<JointData>"
  (cl:format cl:nil "int16 index~%string name~%byte is_cal~%byte has_safety~%string type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'JointData)))
  "Returns full string definition for message of type 'JointData"
  (cl:format cl:nil "int16 index~%string name~%byte is_cal~%byte has_safety~%string type~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <JointData>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'name))
     1
     1
     4 (cl:length (cl:slot-value msg 'type))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <JointData>))
  "Converts a ROS message object to a list"
  (cl:list 'JointData
    (cl:cons ':index (index msg))
    (cl:cons ':name (name msg))
    (cl:cons ':is_cal (is_cal msg))
    (cl:cons ':has_safety (has_safety msg))
    (cl:cons ':type (type msg))
))
