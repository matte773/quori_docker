# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from pr2_mechanism_msgs/MechanismStatistics.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy
import pr2_mechanism_msgs.msg
import std_msgs.msg

class MechanismStatistics(genpy.Message):
  _md5sum = "b4a99069393681672c01f8c823458e04"
  _type = "pr2_mechanism_msgs/MechanismStatistics"
  _has_header = True  # flag to mark the presence of a Header object
  _full_text = """# This message describes the state of the pr2 mechanism. It contains the state of
# each actuator, each joint, and each controller that is spawned in pr2_mechanism_control.

Header header
ActuatorStatistics[] actuator_statistics
JointStatistics[] joint_statistics
ControllerStatistics[] controller_statistics

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
# * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
string frame_id

================================================================================
MSG: pr2_mechanism_msgs/ActuatorStatistics
# This message contains the state of an actuator on the pr2 robot.
# An actuator contains a motor and an encoder, and is connected
# to a joint by a transmission

# the name of the actuator
string name

# the sequence number of the MCB in the ethercat chain. 
# the first device in the chain gets deviced_id zero
int32 device_id

# the time at which this actuator state was measured
time timestamp

# the encoder position, represented by the number of encoder ticks
int32 encoder_count

# The angular offset (in radians) that is added to the encoder reading, 
# to get to the position of the actuator. This number is computed when the referece
# sensor is triggered during the calibration phase
float64 encoder_offset

# the encoder position in radians
float64 position

# the encoder velocity in encoder ticks per second
float64 encoder_velocity

# the encoder velocity in radians per second
float64 velocity

# the value of the calibration reading: low (false) or high (true)
bool calibration_reading

# bool to indicate if the joint already triggered the rising/falling edge of the reference sensor
bool calibration_rising_edge_valid
bool calibration_falling_edge_valid

# the encoder position when the last rising/falling edge was observed. 
# only read this value when the calibration_rising/falling_edge_valid is true
float64 last_calibration_rising_edge
float64 last_calibration_falling_edge

# flag to indicate if this actuator is enabled or not. 
# An actuator can only be commanded when it is enabled.
bool is_enabled

# indicates if the motor is halted. A motor can be halted because of a voltage or communication problem
bool halted

# the last current/effort command that was requested
float64 last_commanded_current
float64 last_commanded_effort

# the last current/effort command that was executed by the actuator
float64 last_executed_current
float64 last_executed_effort

# the last current/effort that was measured by the actuator
float64 last_measured_current
float64 last_measured_effort

# the motor voltate
float64 motor_voltage

# the number of detected encoder problems 
int32 num_encoder_errors


================================================================================
MSG: pr2_mechanism_msgs/JointStatistics
# This message contains the state of one joint of the pr2 robot.
# This message is specificly designed for the pr2 robot. 
# A generic joint state message can be found in sensor_msgs::JointState

# the name of the joint
string name

# the time at which these joint statistics were measured
time timestamp

# the position of the joint in radians
float64 position

# the velocity of the joint in radians per second
float64 velocity

# the measured joint effort 
float64 measured_effort

# the effort that was commanded to the joint.
# the actual applied effort might be different
# because the safety code can limit the effort
# a joint can apply
float64 commanded_effort

# a flag indicating if the joint is calibrated or not
bool is_calibrated

# a flag inidcating if the joint violated one of its position/velocity/effort limits
# in the last publish cycle
bool violated_limits

# the total distance travelled by the joint, measured in radians.
float64 odometer

# the lowest position reached by the joint in the last publish cycle
float64 min_position

# the highest position reached by the joint in the last publish cycle
float64 max_position

# the maximum absolute velocity reached by the joint in the last publish cycle
float64 max_abs_velocity

# the maximum absolute effort applied by the joint in the last publish cycle
float64 max_abs_effort

================================================================================
MSG: pr2_mechanism_msgs/ControllerStatistics
# This message contains the state of one realtime controller
# that was spawned in pr2_mechanism_control

# the name of the controller
string name

# the time at which these controller statistics were measured
time timestamp

# bool that indicates if the controller is currently
# in a running or a stopped state
bool running

# the maximum time the update loop of the controller ever needed to complete
duration max_time

# the average time the update loop of the controller needs to complete. 
# the average is computed in a sliding time window.
duration mean_time

# the variance on the time the update loop of the controller needs to complete.
# the variance applies to a sliding time window.
duration variance_time

# the number of times this controller broke the realtime loop
int32 num_control_loop_overruns

# the timestamp of the last time this controller broke the realtime loop
time time_last_control_loop_overrun"""
  __slots__ = ['header','actuator_statistics','joint_statistics','controller_statistics']
  _slot_types = ['std_msgs/Header','pr2_mechanism_msgs/ActuatorStatistics[]','pr2_mechanism_msgs/JointStatistics[]','pr2_mechanism_msgs/ControllerStatistics[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,actuator_statistics,joint_statistics,controller_statistics

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MechanismStatistics, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.actuator_statistics is None:
        self.actuator_statistics = []
      if self.joint_statistics is None:
        self.joint_statistics = []
      if self.controller_statistics is None:
        self.controller_statistics = []
    else:
      self.header = std_msgs.msg.Header()
      self.actuator_statistics = []
      self.joint_statistics = []
      self.controller_statistics = []

  def _get_types(self):
    """
    internal API method
    """
    return self._slot_types

  def serialize(self, buff):
    """
    serialize message into buffer
    :param buff: buffer, ``StringIO``
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.actuator_statistics)
      buff.write(_struct_I.pack(length))
      for val1 in self.actuator_statistics:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.device_id
        buff.write(_get_struct_i().pack(_x))
        _v1 = val1.timestamp
        _x = _v1
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = val1
        buff.write(_get_struct_i4d3B2d2B7di().pack(_x.encoder_count, _x.encoder_offset, _x.position, _x.encoder_velocity, _x.velocity, _x.calibration_reading, _x.calibration_rising_edge_valid, _x.calibration_falling_edge_valid, _x.last_calibration_rising_edge, _x.last_calibration_falling_edge, _x.is_enabled, _x.halted, _x.last_commanded_current, _x.last_commanded_effort, _x.last_executed_current, _x.last_executed_effort, _x.last_measured_current, _x.last_measured_effort, _x.motor_voltage, _x.num_encoder_errors))
      length = len(self.joint_statistics)
      buff.write(_struct_I.pack(length))
      for val1 in self.joint_statistics:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v2 = val1.timestamp
        _x = _v2
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = val1
        buff.write(_get_struct_4d2B5d().pack(_x.position, _x.velocity, _x.measured_effort, _x.commanded_effort, _x.is_calibrated, _x.violated_limits, _x.odometer, _x.min_position, _x.max_position, _x.max_abs_velocity, _x.max_abs_effort))
      length = len(self.controller_statistics)
      buff.write(_struct_I.pack(length))
      for val1 in self.controller_statistics:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v3 = val1.timestamp
        _x = _v3
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = val1.running
        buff.write(_get_struct_B().pack(_x))
        _v4 = val1.max_time
        _x = _v4
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _v5 = val1.mean_time
        _x = _v5
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _v6 = val1.variance_time
        _x = _v6
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _x = val1.num_control_loop_overruns
        buff.write(_get_struct_i().pack(_x))
        _v7 = val1.time_last_control_loop_overrun
        _x = _v7
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.actuator_statistics is None:
        self.actuator_statistics = None
      if self.joint_statistics is None:
        self.joint_statistics = None
      if self.controller_statistics is None:
        self.controller_statistics = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.actuator_statistics = []
      for i in range(0, length):
        val1 = pr2_mechanism_msgs.msg.ActuatorStatistics()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (val1.device_id,) = _get_struct_i().unpack(str[start:end])
        _v8 = val1.timestamp
        _x = _v8
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        _x = val1
        start = end
        end += 117
        (_x.encoder_count, _x.encoder_offset, _x.position, _x.encoder_velocity, _x.velocity, _x.calibration_reading, _x.calibration_rising_edge_valid, _x.calibration_falling_edge_valid, _x.last_calibration_rising_edge, _x.last_calibration_falling_edge, _x.is_enabled, _x.halted, _x.last_commanded_current, _x.last_commanded_effort, _x.last_executed_current, _x.last_executed_effort, _x.last_measured_current, _x.last_measured_effort, _x.motor_voltage, _x.num_encoder_errors,) = _get_struct_i4d3B2d2B7di().unpack(str[start:end])
        val1.calibration_reading = bool(val1.calibration_reading)
        val1.calibration_rising_edge_valid = bool(val1.calibration_rising_edge_valid)
        val1.calibration_falling_edge_valid = bool(val1.calibration_falling_edge_valid)
        val1.is_enabled = bool(val1.is_enabled)
        val1.halted = bool(val1.halted)
        self.actuator_statistics.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joint_statistics = []
      for i in range(0, length):
        val1 = pr2_mechanism_msgs.msg.JointStatistics()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _v9 = val1.timestamp
        _x = _v9
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        _x = val1
        start = end
        end += 74
        (_x.position, _x.velocity, _x.measured_effort, _x.commanded_effort, _x.is_calibrated, _x.violated_limits, _x.odometer, _x.min_position, _x.max_position, _x.max_abs_velocity, _x.max_abs_effort,) = _get_struct_4d2B5d().unpack(str[start:end])
        val1.is_calibrated = bool(val1.is_calibrated)
        val1.violated_limits = bool(val1.violated_limits)
        self.joint_statistics.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.controller_statistics = []
      for i in range(0, length):
        val1 = pr2_mechanism_msgs.msg.ControllerStatistics()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _v10 = val1.timestamp
        _x = _v10
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 1
        (val1.running,) = _get_struct_B().unpack(str[start:end])
        val1.running = bool(val1.running)
        _v11 = val1.max_time
        _x = _v11
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        _v12 = val1.mean_time
        _x = _v12
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        _v13 = val1.variance_time
        _x = _v13
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        start = end
        end += 4
        (val1.num_control_loop_overruns,) = _get_struct_i().unpack(str[start:end])
        _v14 = val1.time_last_control_loop_overrun
        _x = _v14
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        self.controller_statistics.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      _x = self
      buff.write(_get_struct_3I().pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.actuator_statistics)
      buff.write(_struct_I.pack(length))
      for val1 in self.actuator_statistics:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _x = val1.device_id
        buff.write(_get_struct_i().pack(_x))
        _v15 = val1.timestamp
        _x = _v15
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = val1
        buff.write(_get_struct_i4d3B2d2B7di().pack(_x.encoder_count, _x.encoder_offset, _x.position, _x.encoder_velocity, _x.velocity, _x.calibration_reading, _x.calibration_rising_edge_valid, _x.calibration_falling_edge_valid, _x.last_calibration_rising_edge, _x.last_calibration_falling_edge, _x.is_enabled, _x.halted, _x.last_commanded_current, _x.last_commanded_effort, _x.last_executed_current, _x.last_executed_effort, _x.last_measured_current, _x.last_measured_effort, _x.motor_voltage, _x.num_encoder_errors))
      length = len(self.joint_statistics)
      buff.write(_struct_I.pack(length))
      for val1 in self.joint_statistics:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v16 = val1.timestamp
        _x = _v16
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = val1
        buff.write(_get_struct_4d2B5d().pack(_x.position, _x.velocity, _x.measured_effort, _x.commanded_effort, _x.is_calibrated, _x.violated_limits, _x.odometer, _x.min_position, _x.max_position, _x.max_abs_velocity, _x.max_abs_effort))
      length = len(self.controller_statistics)
      buff.write(_struct_I.pack(length))
      for val1 in self.controller_statistics:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        _v17 = val1.timestamp
        _x = _v17
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = val1.running
        buff.write(_get_struct_B().pack(_x))
        _v18 = val1.max_time
        _x = _v18
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _v19 = val1.mean_time
        _x = _v19
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _v20 = val1.variance_time
        _x = _v20
        buff.write(_get_struct_2i().pack(_x.secs, _x.nsecs))
        _x = val1.num_control_loop_overruns
        buff.write(_get_struct_i().pack(_x))
        _v21 = val1.time_last_control_loop_overrun
        _x = _v21
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    if python3:
      codecs.lookup_error("rosmsg").msg_type = self._type
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.actuator_statistics is None:
        self.actuator_statistics = None
      if self.joint_statistics is None:
        self.joint_statistics = None
      if self.controller_statistics is None:
        self.controller_statistics = None
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _get_struct_3I().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.actuator_statistics = []
      for i in range(0, length):
        val1 = pr2_mechanism_msgs.msg.ActuatorStatistics()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        start = end
        end += 4
        (val1.device_id,) = _get_struct_i().unpack(str[start:end])
        _v22 = val1.timestamp
        _x = _v22
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        _x = val1
        start = end
        end += 117
        (_x.encoder_count, _x.encoder_offset, _x.position, _x.encoder_velocity, _x.velocity, _x.calibration_reading, _x.calibration_rising_edge_valid, _x.calibration_falling_edge_valid, _x.last_calibration_rising_edge, _x.last_calibration_falling_edge, _x.is_enabled, _x.halted, _x.last_commanded_current, _x.last_commanded_effort, _x.last_executed_current, _x.last_executed_effort, _x.last_measured_current, _x.last_measured_effort, _x.motor_voltage, _x.num_encoder_errors,) = _get_struct_i4d3B2d2B7di().unpack(str[start:end])
        val1.calibration_reading = bool(val1.calibration_reading)
        val1.calibration_rising_edge_valid = bool(val1.calibration_rising_edge_valid)
        val1.calibration_falling_edge_valid = bool(val1.calibration_falling_edge_valid)
        val1.is_enabled = bool(val1.is_enabled)
        val1.halted = bool(val1.halted)
        self.actuator_statistics.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joint_statistics = []
      for i in range(0, length):
        val1 = pr2_mechanism_msgs.msg.JointStatistics()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _v23 = val1.timestamp
        _x = _v23
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        _x = val1
        start = end
        end += 74
        (_x.position, _x.velocity, _x.measured_effort, _x.commanded_effort, _x.is_calibrated, _x.violated_limits, _x.odometer, _x.min_position, _x.max_position, _x.max_abs_velocity, _x.max_abs_effort,) = _get_struct_4d2B5d().unpack(str[start:end])
        val1.is_calibrated = bool(val1.is_calibrated)
        val1.violated_limits = bool(val1.violated_limits)
        self.joint_statistics.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.controller_statistics = []
      for i in range(0, length):
        val1 = pr2_mechanism_msgs.msg.ControllerStatistics()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.name = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.name = str[start:end]
        _v24 = val1.timestamp
        _x = _v24
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 1
        (val1.running,) = _get_struct_B().unpack(str[start:end])
        val1.running = bool(val1.running)
        _v25 = val1.max_time
        _x = _v25
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        _v26 = val1.mean_time
        _x = _v26
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        _v27 = val1.variance_time
        _x = _v27
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2i().unpack(str[start:end])
        start = end
        end += 4
        (val1.num_control_loop_overruns,) = _get_struct_i().unpack(str[start:end])
        _v28 = val1.time_last_control_loop_overrun
        _x = _v28
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        self.controller_statistics.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_3I = None
def _get_struct_3I():
    global _struct_3I
    if _struct_3I is None:
        _struct_3I = struct.Struct("<3I")
    return _struct_3I
_struct_4d2B5d = None
def _get_struct_4d2B5d():
    global _struct_4d2B5d
    if _struct_4d2B5d is None:
        _struct_4d2B5d = struct.Struct("<4d2B5d")
    return _struct_4d2B5d
_struct_B = None
def _get_struct_B():
    global _struct_B
    if _struct_B is None:
        _struct_B = struct.Struct("<B")
    return _struct_B
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_i4d3B2d2B7di = None
def _get_struct_i4d3B2d2B7di():
    global _struct_i4d3B2d2B7di
    if _struct_i4d3B2d2B7di is None:
        _struct_i4d3B2d2B7di = struct.Struct("<i4d3B2d2B7di")
    return _struct_i4d3B2d2B7di