; Auto-generated. Do not edit!


(cl:in-package joint_states_settler-msg)


;//! \htmlinclude ConfigResult.msg.html

(cl:defclass <ConfigResult> (roslisp-msg-protocol:ros-message)
  ()
)

(cl:defclass ConfigResult (<ConfigResult>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <ConfigResult>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'ConfigResult)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name joint_states_settler-msg:<ConfigResult> is deprecated: use joint_states_settler-msg:ConfigResult instead.")))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <ConfigResult>) ostream)
  "Serializes a message object of type '<ConfigResult>"
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <ConfigResult>) istream)
  "Deserializes a message object of type '<ConfigResult>"
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<ConfigResult>)))
  "Returns string type for a message object of type '<ConfigResult>"
  "joint_states_settler/ConfigResult")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'ConfigResult)))
  "Returns string type for a message object of type 'ConfigResult"
  "joint_states_settler/ConfigResult")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<ConfigResult>)))
  "Returns md5sum for a message object of type '<ConfigResult>"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'ConfigResult)))
  "Returns md5sum for a message object of type 'ConfigResult"
  "d41d8cd98f00b204e9800998ecf8427e")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<ConfigResult>)))
  "Returns full string definition for message of type '<ConfigResult>"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'ConfigResult)))
  "Returns full string definition for message of type 'ConfigResult"
  (cl:format cl:nil "# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <ConfigResult>))
  (cl:+ 0
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <ConfigResult>))
  "Converts a ROS message object to a list"
  (cl:list 'ConfigResult
))