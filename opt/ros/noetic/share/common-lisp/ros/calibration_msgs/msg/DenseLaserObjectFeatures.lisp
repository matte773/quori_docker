; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-msg)


;//! \htmlinclude DenseLaserObjectFeatures.msg.html

(cl:defclass <DenseLaserObjectFeatures> (roslisp-msg-protocol:ros-message)
  ((header
    :reader header
    :initarg :header
    :type std_msgs-msg:Header
    :initform (cl:make-instance 'std_msgs-msg:Header))
   (dense_laser_points
    :reader dense_laser_points
    :initarg :dense_laser_points
    :type (cl:vector calibration_msgs-msg:DenseLaserPoint)
   :initform (cl:make-array 0 :element-type 'calibration_msgs-msg:DenseLaserPoint :initial-element (cl:make-instance 'calibration_msgs-msg:DenseLaserPoint)))
   (object_points
    :reader object_points
    :initarg :object_points
    :type (cl:vector geometry_msgs-msg:Point)
   :initform (cl:make-array 0 :element-type 'geometry_msgs-msg:Point :initial-element (cl:make-instance 'geometry_msgs-msg:Point)))
   (success
    :reader success
    :initarg :success
    :type cl:fixnum
    :initform 0))
)

(cl:defclass DenseLaserObjectFeatures (<DenseLaserObjectFeatures>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DenseLaserObjectFeatures>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DenseLaserObjectFeatures)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-msg:<DenseLaserObjectFeatures> is deprecated: use calibration_msgs-msg:DenseLaserObjectFeatures instead.")))

(cl:ensure-generic-function 'header-val :lambda-list '(m))
(cl:defmethod header-val ((m <DenseLaserObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:header-val is deprecated.  Use calibration_msgs-msg:header instead.")
  (header m))

(cl:ensure-generic-function 'dense_laser_points-val :lambda-list '(m))
(cl:defmethod dense_laser_points-val ((m <DenseLaserObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:dense_laser_points-val is deprecated.  Use calibration_msgs-msg:dense_laser_points instead.")
  (dense_laser_points m))

(cl:ensure-generic-function 'object_points-val :lambda-list '(m))
(cl:defmethod object_points-val ((m <DenseLaserObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:object_points-val is deprecated.  Use calibration_msgs-msg:object_points instead.")
  (object_points m))

(cl:ensure-generic-function 'success-val :lambda-list '(m))
(cl:defmethod success-val ((m <DenseLaserObjectFeatures>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:success-val is deprecated.  Use calibration_msgs-msg:success instead.")
  (success m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DenseLaserObjectFeatures>) ostream)
  "Serializes a message object of type '<DenseLaserObjectFeatures>"
  (roslisp-msg-protocol:serialize (cl:slot-value msg 'header) ostream)
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'dense_laser_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'dense_laser_points))
  (cl:let ((__ros_arr_len (cl:length (cl:slot-value msg 'object_points))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) __ros_arr_len) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) __ros_arr_len) ostream))
  (cl:map cl:nil #'(cl:lambda (ele) (roslisp-msg-protocol:serialize ele ostream))
   (cl:slot-value msg 'object_points))
  (cl:write-byte (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'success)) ostream)
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DenseLaserObjectFeatures>) istream)
  "Deserializes a message object of type '<DenseLaserObjectFeatures>"
  (roslisp-msg-protocol:deserialize (cl:slot-value msg 'header) istream)
  (cl:let ((__ros_arr_len 0))
    (cl:setf (cl:ldb (cl:byte 8 0) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 8) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 16) __ros_arr_len) (cl:read-byte istream))
    (cl:setf (cl:ldb (cl:byte 8 24) __ros_arr_len) (cl:read-byte istream))
  (cl:setf (cl:slot-value msg 'dense_laser_points) (cl:make-array __ros_arr_len))
  (cl:let ((vals (cl:slot-value msg 'dense_laser_points)))
    (cl:dotimes (i __ros_arr_len)
    (cl:setf (cl:aref vals i) (cl:make-instance 'calibration_msgs-msg:DenseLaserPoint))
  (roslisp-msg-protocol:deserialize (cl:aref vals i) istream))))
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
    (cl:setf (cl:ldb (cl:byte 8 0) (cl:slot-value msg 'success)) (cl:read-byte istream))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DenseLaserObjectFeatures>)))
  "Returns string type for a message object of type '<DenseLaserObjectFeatures>"
  "calibration_msgs/DenseLaserObjectFeatures")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DenseLaserObjectFeatures)))
  "Returns string type for a message object of type 'DenseLaserObjectFeatures"
  "calibration_msgs/DenseLaserObjectFeatures")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DenseLaserObjectFeatures>)))
  "Returns md5sum for a message object of type '<DenseLaserObjectFeatures>"
  "b642d46e47d54e00f98a3d98b02b5cc6")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DenseLaserObjectFeatures)))
  "Returns md5sum for a message object of type 'DenseLaserObjectFeatures"
  "b642d46e47d54e00f98a3d98b02b5cc6")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DenseLaserObjectFeatures>)))
  "Returns full string definition for message of type '<DenseLaserObjectFeatures>"
  (cl:format cl:nil "# Synchronized with sensor output~%Header header~%~%# Pixel locations of detected features~%DenseLaserPoint[] dense_laser_points~%~%# Defines geometry of detected features in some \"object\" coordinate frame~%geometry_msgs/Point[] object_points~%~%# False on detection failure or partial detection~%uint8 success~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: calibration_msgs/DenseLaserPoint~%# Stores the xy subpixel location of a point in a DenseLaserSnapshot~%float64 scan  # Which scan line we detected the feature~%float64 ray   # Which ray in the specified scan we detected the feature~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DenseLaserObjectFeatures)))
  "Returns full string definition for message of type 'DenseLaserObjectFeatures"
  (cl:format cl:nil "# Synchronized with sensor output~%Header header~%~%# Pixel locations of detected features~%DenseLaserPoint[] dense_laser_points~%~%# Defines geometry of detected features in some \"object\" coordinate frame~%geometry_msgs/Point[] object_points~%~%# False on detection failure or partial detection~%uint8 success~%~%================================================================================~%MSG: std_msgs/Header~%# Standard metadata for higher-level stamped data types.~%# This is generally used to communicate timestamped data ~%# in a particular coordinate frame.~%# ~%# sequence ID: consecutively increasing ID ~%uint32 seq~%#Two-integer timestamp that is expressed as:~%# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')~%# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')~%# time-handling sugar is provided by the client library~%time stamp~%#Frame this data is associated with~%string frame_id~%~%================================================================================~%MSG: calibration_msgs/DenseLaserPoint~%# Stores the xy subpixel location of a point in a DenseLaserSnapshot~%float64 scan  # Which scan line we detected the feature~%float64 ray   # Which ray in the specified scan we detected the feature~%~%================================================================================~%MSG: geometry_msgs/Point~%# This contains the position of a point in free space~%float64 x~%float64 y~%float64 z~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DenseLaserObjectFeatures>))
  (cl:+ 0
     (roslisp-msg-protocol:serialization-length (cl:slot-value msg 'header))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'dense_laser_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     4 (cl:reduce #'cl:+ (cl:slot-value msg 'object_points) :key #'(cl:lambda (ele) (cl:declare (cl:ignorable ele)) (cl:+ (roslisp-msg-protocol:serialization-length ele))))
     1
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DenseLaserObjectFeatures>))
  "Converts a ROS message object to a list"
  (cl:list 'DenseLaserObjectFeatures
    (cl:cons ':header (header msg))
    (cl:cons ':dense_laser_points (dense_laser_points msg))
    (cl:cons ':object_points (object_points msg))
    (cl:cons ':success (success msg))
))
