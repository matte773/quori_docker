; Auto-generated. Do not edit!


(cl:in-package joint_qualification_controllers-msg)


;//! \htmlinclude CBPositionData.msg.html

(cl:defclass <CBPositionData> (roslisp-msg-protocol:ros-message)
  ((flex_position
    :reader flex_position
    :initarg :flex_position
    :type cl:float
    :initform 0.0)
   (lift_hold
    :reader lift_hold
    :initarg :lift_hold
    :type joint_qualification_controllers-msg:JointPositionData
    :initform (cl:make-instance 'joint_qualification_controllers-msg:JointPositionData))
   (flex_hold
    :reader flex_hold
    :initarg :flex_hold
    :type joint_qualification_controllers-msg:JointPositionData
    :initform (cl:make-instance 'joint_qualification_controllers-msg:JointPositionData)))
)

(cl:defclass CBPositionData (<CBPositionData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CBPositionData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CBPositionData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_qualification_controllers-msg:<CBPositionData> is deprecated: use joint_qualification_controllers-msg:CBPositionData instead.")))

(cl:ensure-generic-function 'flex_position-val :lambda-list '(m))
(cl:defmethod flex_position-val ((m <CBPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_position-val is deprecated.  Use joint_qualification_controllers-msg:flex_position instead.")
  (flex_position m))

(cl:ensure-generic-function 'lift_hold-val :lambda-list '(m))
(cl:defmethod lift_hold-val ((m <CBPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:lift_hold-val is deprecated.  Use joint_qualification_controllers-msg:lift_hold instead.")
  (lift_hold m))

(cl:ensure-generic-function 'flex_hold-val :lambda-list '(m))
(cl:defmethod flex_hold-val ((m <CBPositionData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_hold-val is deprecated.  Use joint_qualification_controllers-msg:flex_hold instead.")
  (flex_hold m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CBPositionData>) ostream)
  "Serializes a message object of type '<CBPositionData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'flex_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'lift_hold) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'flex_hold) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CBPositionData>) istream)
  "Deserializes a message object of type '<CBPositionData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'flex_position) (roslisp-utils:decode-single-float-bits bits)))
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'lift_hold) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'flex_hold) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CBPositionData>)))
  "Returns string type for a message object of type '<CBPositionData>"
  "joint_qualification_controllers/CBPositionData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CBPositionData)))
  "Returns string type for a message object of type 'CBPositionData"
  "joint_qualification_controllers/CBPositionData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CBPositionData>)))
  "Returns md5sum for a message object of type '<CBPositionData>"
  "e7b62743b80e10dde08aea881b6ccf7b")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CBPositionData)))
  "Returns md5sum for a message object of type 'CBPositionData"
  "e7b62743b80e10dde08aea881b6ccf7b")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CBPositionData>)))
  "Returns full string definition for message of type '<CBPositionData>"
  (cl:format cl:nil "float32 flex_position~%JointPositionData lift_hold~%JointPositionData flex_hold~%~%================================================================================~%MSG: joint_qualification_controllers/JointPositionData~%float32[] time~%float32[] position~%float32[] velocity~%float32[] effort~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CBPositionData)))
  "Returns full string definition for message of type 'CBPositionData"
  (cl:format cl:nil "float32 flex_position~%JointPositionData lift_hold~%JointPositionData flex_hold~%~%================================================================================~%MSG: joint_qualification_controllers/JointPositionData~%float32[] time~%float32[] position~%float32[] velocity~%float32[] effort~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CBPositionData>))
  (cl:+ 0
     4
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'lift_hold))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'flex_hold))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CBPositionData>))
  "Converts a ROS message object to a list"
  (cl:list 'CBPositionData
    (cl:cons ':flex_position (flex_position msg))
    (cl:cons ':lift_hold (lift_hold msg))
    (cl:cons ':flex_hold (flex_hold msg))
))
