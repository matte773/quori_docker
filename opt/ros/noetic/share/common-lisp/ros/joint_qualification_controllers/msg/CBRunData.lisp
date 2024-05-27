; Auto-generated. Do not edit!


(cl:in-package joint_qualification_controllers-msg)


;//! \htmlinclude CBRunData.msg.html

(cl:defclass <CBRunData> (roslisp-msg-protocol:ros-message)
  ((lift_position
    :reader lift_position
    :initarg :lift_position
    :type cl:float
    :initform 0.0)
   (flex_data
    :reader flex_data
    :initarg :flex_data
    :type (cl:vector joint_qualification_controllers-msg:CBPositionData)
   :initform (cl:make-array 0 :element-type 'joint_qualification_controllers-msg:CBPositionData :initial-element (cl:make-instance 'joint_qualification_controllers-msg:CBPositionData))))
)

(cl:defclass CBRunData (<CBRunData>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CBRunData>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CBRunData)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_qualification_controllers-msg:<CBRunData> is deprecated: use joint_qualification_controllers-msg:CBRunData instead.")))

(cl:ensure-generic-function 'lift_position-val :lambda-list '(m))
(cl:defmethod lift_position-val ((m <CBRunData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:lift_position-val is deprecated.  Use joint_qualification_controllers-msg:lift_position instead.")
  (lift_position m))

(cl:ensure-generic-function 'flex_data-val :lambda-list '(m))
(cl:defmethod flex_data-val ((m <CBRunData>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader joint_qualification_controllers-msg:flex_data-val is deprecated.  Use joint_qualification_controllers-msg:flex_data instead.")
  (flex_data m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CBRunData>) ostream)
  "Serializes a message object of type '<CBRunData>"
  (cl:let ((bits (roslisp-utils:encode-single-float-bits (cl:slot-value msg 'lift_position))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'flex_data))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'flex_data))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CBRunData>) istream)
  "Deserializes a message object of type '<CBRunData>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'lift_position) (roslisp-utils:decode-single-float-bits bits)))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'flex_data) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'flex_data)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'joint_qualification_controllers-msg:CBPositionData))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CBRunData>)))
  "Returns string type for a message object of type '<CBRunData>"
  "joint_qualification_controllers/CBRunData")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CBRunData)))
  "Returns string type for a message object of type 'CBRunData"
  "joint_qualification_controllers/CBRunData")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CBRunData>)))
  "Returns md5sum for a message object of type '<CBRunData>"
  "16bad2df24f5cffc934c2d3ae9bb08e6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CBRunData)))
  "Returns md5sum for a message object of type 'CBRunData"
  "16bad2df24f5cffc934c2d3ae9bb08e6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CBRunData>)))
  "Returns full string definition for message of type '<CBRunData>"
  (cl:format cl:nil "float32 lift_position~%CBPositionData[] flex_data # Same lift position, diff flex positions~%================================================================================~%MSG: joint_qualification_controllers/CBPositionData~%float32 flex_position~%JointPositionData lift_hold~%JointPositionData flex_hold~%~%================================================================================~%MSG: joint_qualification_controllers/JointPositionData~%float32[] time~%float32[] position~%float32[] velocity~%float32[] effort~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CBRunData)))
  "Returns full string definition for message of type 'CBRunData"
  (cl:format cl:nil "float32 lift_position~%CBPositionData[] flex_data # Same lift position, diff flex positions~%================================================================================~%MSG: joint_qualification_controllers/CBPositionData~%float32 flex_position~%JointPositionData lift_hold~%JointPositionData flex_hold~%~%================================================================================~%MSG: joint_qualification_controllers/JointPositionData~%float32[] time~%float32[] position~%float32[] velocity~%float32[] effort~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CBRunData>))
  (cl:+ 0
     4
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'flex_data) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CBRunData>))
  "Converts a ROS message object to a list"
  (cl:list 'CBRunData
    (cl:cons ':lift_position (lift_position msg))
    (cl:cons ':flex_data (flex_data msg))
))
