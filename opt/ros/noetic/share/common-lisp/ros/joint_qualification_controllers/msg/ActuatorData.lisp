; Auto-generated. Do not edit!


(cl:in-package joint_qualification_controllers-msg)


;//! \htmlinclude ActuatorData.msg.html

(cl:defclass <ActuatorData> (roslisp-msg-protocol:ros-message)
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
   (id
    :reader id
    :initarg :id
    :type cl:fixnum
    :initform 0))
)

(cl:defclass ActuatorData (<ActuatorData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ActuatorData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ActuatorData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_qualification_controllers-msg:<ActuatorData> is deprecated: use joint_qualification_controllers-msg:ActuatorData instead.")))

(cl:ensure-generic-function 'index-val :lambda-list '(m))
(cl:defmethod index-val ((m <ActuatorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:index-val is deprecated.  Use joint_qualification_controllers-msg:index instead.")
  (index m))

(cl:ensure-generic-function 'name-val :lambda-list '(m))
(cl:defmethod name-val ((m <ActuatorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:name-val is deprecated.  Use joint_qualification_controllers-msg:name instead.")
  (name m))

(cl:ensure-generic-function 'id-val :lambda-list '(m))
(cl:defmethod id-val ((m <ActuatorData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:id-val is deprecated.  Use joint_qualification_controllers-msg:id instead.")
  (id m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ActuatorData>) ostream)
  "Serializes a message object of type '<ActuatorData>"
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
  (cl:let* ((signed (cl:slot-value msg 'id)) (unsigned (cl:if (cl:< signed 0) (cl:+ signed 65536) signed)))
    (cl:write-byte (cl:ldb (cl:byte 8 0) unsigned) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) unsigned) ostream)
    )
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ActuatorData>) istream)
  "Deserializes a message object of type '<ActuatorData>"
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
    (cl:let ((unsigned 0))
      (cl:setf (cl:ldb (cl:byte 8 0) unsigned) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) unsigned) (cl:read-byte istream))
      (cl:setf (cl:slot-value msg 'id) (cl:if (cl:< unsigned 32768) unsigned (cl:- unsigned 65536))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ActuatorData>)))
  "Returns string type for a message object of type '<ActuatorData>"
  "joint_qualification_controllers/ActuatorData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ActuatorData)))
  "Returns string type for a message object of type 'ActuatorData"
  "joint_qualification_controllers/ActuatorData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ActuatorData>)))
  "Returns md5sum for a message object of type '<ActuatorData>"
  "2c56db35f7889a677f83b66883afdaf4")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ActuatorData)))
  "Returns md5sum for a message object of type 'ActuatorData"
  "2c56db35f7889a677f83b66883afdaf4")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ActuatorData>)))
  "Returns full string definition for message of type '<ActuatorData>"
  (cl:format cl:nil "int16 index~%string name~%int16 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ActuatorData)))
  "Returns full string definition for message of type 'ActuatorData"
  (cl:format cl:nil "int16 index~%string name~%int16 id~%~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ActuatorData>))
  (cl:+ 0
     2
     4 (cl:length (cl:slot-value msg 'name))
     2
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ActuatorData>))
  "Converts a ROS message object to a list"
  (cl:list 'ActuatorData
    (cl:cons ':index (index msg))
    (cl:cons ':name (name msg))
    (cl:cons ':id (id msg))
))
