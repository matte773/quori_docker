; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-msg)


;//! \htmlinclude IntervalStamped.msg.html

(cl:defclass <IntervalStamped> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (interval
    :reader interval
    :initarg :interval
    :type calibration_msgs-msg:Interval
    :initform (cl:make-instance 'calibration_msgs-msg:Interval)))
)

(cl:defclass IntervalStamped (<IntervalStamped>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <IntervalStamped>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'IntervalStamped)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-msg:<IntervalStamped> is deprecated: use calibration_msgs-msg:IntervalStamped instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <IntervalStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:header-val is deprecated.  Use calibration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'interval-val :lambda-list '(m))
(cl:defmethod interval-val ((m <IntervalStamped>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:interval-val is deprecated.  Use calibration_msgs-msg:interval instead.")
  (interval m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <IntervalStamped>) ostream)
  "Serializes a message object of type '<IntervalStamped>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'interval) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <IntervalStamped>) istream)
  "Deserializes a message object of type '<IntervalStamped>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'interval) istream)
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<IntervalStamped>)))
  "Returns string type for a message object of type '<IntervalStamped>"
  "calibration_msgs/IntervalStamped")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'IntervalStamped)))
  "Returns string type for a message object of type 'IntervalStamped"
  "calibration_msgs/IntervalStamped")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<IntervalStamped>)))
  "Returns md5sum for a message object of type '<IntervalStamped>"
  "3b9fc1d72815ffa87542f8dc47ef7484")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'IntervalStamped)))
  "Returns md5sum for a message object of type 'IntervalStamped"
  "3b9fc1d72815ffa87542f8dc47ef7484")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<IntervalStamped>)))
  "Returns full string definition for message of type '<IntervalStamped>"
  (cl:format cl:nil "Header header~%Interval interval~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: calibration_msgs/Interval~%time start~%time end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'IntervalStamped)))
  "Returns full string definition for message of type 'IntervalStamped"
  (cl:format cl:nil "Header header~%Interval interval~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: calibration_msgs/Interval~%time start~%time end~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <IntervalStamped>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'interval))
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <IntervalStamped>))
  "Converts a ROS message object to a list"
  (cl:list 'IntervalStamped
    (cl:cons ':header (header msg))
    (cl:cons ':interval (interval msg))
))
