; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-msg)


;//! \htmlinclude CalibrationPattern.msg.html

(cl:defclass <CalibrationPattern> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (object_points
    :reader object_points
    :initarg :object_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (image_points
    :reader image_points
    :initarg :image_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass CalibrationPattern (<CalibrationPattern>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <CalibrationPattern>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'CalibrationPattern)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-msg:<CalibrationPattern> is deprecated: use calibration_msgs-msg:CalibrationPattern instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <CalibrationPattern>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:header-val is deprecated.  Use calibration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'object_points-val :lambda-list '(m))
(cl:defmethod object_points-val ((m <CalibrationPattern>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:object_points-val is deprecated.  Use calibration_msgs-msg:object_points instead.")
  (object_points m))

(cl:ensure-generic-function 'image_points-val :lambda-list '(m))
(cl:defmethod image_points-val ((m <CalibrationPattern>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:image_points-val is deprecated.  Use calibration_msgs-msg:image_points instead.")
  (image_points m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <CalibrationPattern>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:success-val is deprecated.  Use calibration_msgs-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <CalibrationPattern>) ostream)
  "Serializes a message object of type '<CalibrationPattern>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'image_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'image_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'success)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <CalibrationPattern>) istream)
  "Deserializes a message object of type '<CalibrationPattern>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'object_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'object_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'image_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'image_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'geometry_msgs-msg:Point))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'success)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<CalibrationPattern>)))
  "Returns string type for a message object of type '<CalibrationPattern>"
  "calibration_msgs/CalibrationPattern")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'CalibrationPattern)))
  "Returns string type for a message object of type 'CalibrationPattern"
  "calibration_msgs/CalibrationPattern")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<CalibrationPattern>)))
  "Returns md5sum for a message object of type '<CalibrationPattern>"
  "5854af5462e19a169f68917c875a6238")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'CalibrationPattern)))
  "Returns md5sum for a message object of type 'CalibrationPattern"
  "5854af5462e19a169f68917c875a6238")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<CalibrationPattern>)))
  "Returns full string definition for message of type '<CalibrationPattern>"
  (cl:format cl:nil "Header header~%geometry_msgs/Point[] object_points~%geometry_msgs/Point[] image_points~%uint8 success~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'CalibrationPattern)))
  "Returns full string definition for message of type 'CalibrationPattern"
  (cl:format cl:nil "Header header~%geometry_msgs/Point[] object_points~%geometry_msgs/Point[] image_points~%uint8 success~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <CalibrationPattern>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'image_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <CalibrationPattern>))
  "Converts a ROS message object to a list"
  (cl:list 'CalibrationPattern
    (cl:cons ':header (header msg))
    (cl:cons ':object_points (object_points msg))
    (cl:cons ':image_points (image_points msg))
    (cl:cons ':success (success msg))
))
