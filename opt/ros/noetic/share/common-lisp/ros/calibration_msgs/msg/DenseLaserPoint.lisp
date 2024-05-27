; Auto-generated. Do not edit!


(cl:in-package calibration_msgs-msg)


;//! \htmlinclude DenseLaserPoint.msg.html

(cl:defclass <DenseLaserPoint> (roslisp-msg-protocol:ros-message)
  ((scan
    :reader scan
    :initarg :scan
    :type cl:float
    :initform 0.0)
   (ray
    :reader ray
    :initarg :ray
    :type cl:float
    :initform 0.0))
)

(cl:defclass DenseLaserPoint (<DenseLaserPoint>)
  ())

(cl:defmethod cl:initialize-instance :after ((m <DenseLaserPoint>) cl:&rest args)
  (cl:declare (cl:ignorable args))
  (cl:unless (cl:typep m 'DenseLaserPoint)
    (roslisp-msg-protocol:msg-deprecation-warning "using old message class name calibration_msgs-msg:<DenseLaserPoint> is deprecated: use calibration_msgs-msg:DenseLaserPoint instead.")))

(cl:ensure-generic-function 'scan-val :lambda-list '(m))
(cl:defmethod scan-val ((m <DenseLaserPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:scan-val is deprecated.  Use calibration_msgs-msg:scan instead.")
  (scan m))

(cl:ensure-generic-function 'ray-val :lambda-list '(m))
(cl:defmethod ray-val ((m <DenseLaserPoint>))
  (roslisp-msg-protocol:msg-deprecation-warning "Using old-style slot reader calibration_msgs-msg:ray-val is deprecated.  Use calibration_msgs-msg:ray instead.")
  (ray m))
(cl:defmethod roslisp-msg-protocol:serialize ((msg <DenseLaserPoint>) ostream)
  "Serializes a message object of type '<DenseLaserPoint>"
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'scan))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
  (cl:let ((bits (roslisp-utils:encode-double-float-bits (cl:slot-value msg 'ray))))
    (cl:write-byte (cl:ldb (cl:byte 8 0) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 8) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 16) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 24) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 32) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 40) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 48) bits) ostream)
    (cl:write-byte (cl:ldb (cl:byte 8 56) bits) ostream))
)
(cl:defmethod roslisp-msg-protocol:deserialize ((msg <DenseLaserPoint>) istream)
  "Deserializes a message object of type '<DenseLaserPoint>"
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'scan) (roslisp-utils:decode-double-float-bits bits)))
    (cl:let ((bits 0))
      (cl:setf (cl:ldb (cl:byte 8 0) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 8) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 16) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 24) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 32) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 40) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 48) bits) (cl:read-byte istream))
      (cl:setf (cl:ldb (cl:byte 8 56) bits) (cl:read-byte istream))
    (cl:setf (cl:slot-value msg 'ray) (roslisp-utils:decode-double-float-bits bits)))
  msg
)
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql '<DenseLaserPoint>)))
  "Returns string type for a message object of type '<DenseLaserPoint>"
  "calibration_msgs/DenseLaserPoint")
(cl:defmethod roslisp-msg-protocol:ros-datatype ((msg (cl:eql 'DenseLaserPoint)))
  "Returns string type for a message object of type 'DenseLaserPoint"
  "calibration_msgs/DenseLaserPoint")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql '<DenseLaserPoint>)))
  "Returns md5sum for a message object of type '<DenseLaserPoint>"
  "12821677bc3daf8fabbb485d5b0cc027")
(cl:defmethod roslisp-msg-protocol:md5sum ((type (cl:eql 'DenseLaserPoint)))
  "Returns md5sum for a message object of type 'DenseLaserPoint"
  "12821677bc3daf8fabbb485d5b0cc027")
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql '<DenseLaserPoint>)))
  "Returns full string definition for message of type '<DenseLaserPoint>"
  (cl:format cl:nil "# Stores the xy subpixel location of a point in a DenseLaserSnapshot~%float64 scan  # Which scan line we detected the feature~%float64 ray   # Which ray in the specified scan we detected the feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:message-definition ((type (cl:eql 'DenseLaserPoint)))
  "Returns full string definition for message of type 'DenseLaserPoint"
  (cl:format cl:nil "# Stores the xy subpixel location of a point in a DenseLaserSnapshot~%float64 scan  # Which scan line we detected the feature~%float64 ray   # Which ray in the specified scan we detected the feature~%~%~%"))
(cl:defmethod roslisp-msg-protocol:serialization-length ((msg <DenseLaserPoint>))
  (cl:+ 0
     8
     8
))
(cl:defmethod roslisp-msg-protocol:ros-message-to-list ((msg <DenseLaserPoint>))
  "Converts a ROS message object to a list"
  (cl:list 'DenseLaserPoint
    (cl:cons ':scan (scan msg))
    (cl:cons ':ray (ray msg))
))
