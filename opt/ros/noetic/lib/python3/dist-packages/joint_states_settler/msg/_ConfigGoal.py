# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from joint_states_settler/ConfigGoal.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import genpy

class ConfigGoal(genpy.Message):
  _md5sum = "863b25359077f9aa231257b3d1612b63"
  _type = "joint_states_settler/ConfigGoal"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
string[] joint_names   # Names of the joints we're waiting to settle
float64[] tolerances   # Tolerance on each of the specified joints
duration max_step      # The maximum timestep between two elements in an interval
uint32 cache_size      # The size of our cache when searching for an interval
"""
  __slots__ = ['joint_names','tolerances','max_step','cache_size']
  _slot_types = ['string[]','float64[]','duration','uint32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       joint_names,tolerances,max_step,cache_size

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ConfigGoal, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.joint_names is None:
        self.joint_names = []
      if self.tolerances is None:
        self.tolerances = []
      if self.max_step is None:
        self.max_step = genpy.Duration()
      if self.cache_size is None:
        self.cache_size = 0
    else:
      self.joint_names = []
      self.tolerances = []
      self.max_step = genpy.Duration()
      self.cache_size = 0

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
      length = len(self.joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.tolerances)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(struct.Struct(pattern).pack(*self.tolerances))
      _x = self
      buff.write(_get_struct_2iI().pack(_x.max_step.secs, _x.max_step.nsecs, _x.cache_size))
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
      if self.max_step is None:
        self.max_step = genpy.Duration()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.tolerances = s.unpack(str[start:end])
      _x = self
      start = end
      end += 12
      (_x.max_step.secs, _x.max_step.nsecs, _x.cache_size,) = _get_struct_2iI().unpack(str[start:end])
      self.max_step.canon()
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
      length = len(self.joint_names)
      buff.write(_struct_I.pack(length))
      for val1 in self.joint_names:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.tolerances)
      buff.write(_struct_I.pack(length))
      pattern = '<%sd'%length
      buff.write(self.tolerances.tostring())
      _x = self
      buff.write(_get_struct_2iI().pack(_x.max_step.secs, _x.max_step.nsecs, _x.cache_size))
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
      if self.max_step is None:
        self.max_step = genpy.Duration()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.joint_names = []
      for i in range(0, length):
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1 = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1 = str[start:end]
        self.joint_names.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sd'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.tolerances = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=length)
      _x = self
      start = end
      end += 12
      (_x.max_step.secs, _x.max_step.nsecs, _x.cache_size,) = _get_struct_2iI().unpack(str[start:end])
      self.max_step.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2iI = None
def _get_struct_2iI():
    global _struct_2iI
    if _struct_2iI is None:
        _struct_2iI = struct.Struct("<2iI")
    return _struct_2iI