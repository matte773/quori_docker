# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from speech_recognition_msgs/SpeechRecognitionRequest.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import speech_recognition_msgs.msg

class SpeechRecognitionRequest(genpy.Message):
  _md5sum = "af5602408bd36e4d9a80cde6f4453023"
  _type = "speech_recognition_msgs/SpeechRecognitionRequest"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """Vocabulary vocabulary  #  Specify isolated words candidates to be recognized (Enabled on isolated word mode)
Grammar grammar        #  Or, specify grammar to be recognized
string grammar_name    #  Or, simply specify grammar name which is already registered on the server

float32 duration
bool quiet
float32 threshold

================================================================================
MSG: speech_recognition_msgs/Vocabulary
string name  # register vocabulary with the name.
string[] words
string[] phonemes

================================================================================
MSG: speech_recognition_msgs/Grammar
string name  # register this grammar with the name
PhraseRule[] rules

string[] categories
Vocabulary[] vocabularies

================================================================================
MSG: speech_recognition_msgs/PhraseRule
string symbol
string[] definition
"""
  __slots__ = ['vocabulary','grammar','grammar_name','duration','quiet','threshold']
  _slot_types = ['speech_recognition_msgs/Vocabulary','speech_recognition_msgs/Grammar','string','float32','bool','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       vocabulary,grammar,grammar_name,duration,quiet,threshold

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SpeechRecognitionRequest, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.vocabulary is None:
        self.vocabulary = speech_recognition_msgs.msg.Vocabulary()
      if self.grammar is None:
        self.grammar = speech_recognition_msgs.msg.Grammar()
      if self.grammar_name is None:
        self.grammar_name = ''
      if self.duration is None:
        self.duration = 0.
      if self.quiet is None:
        self.quiet = False
      if self.threshold is None:
        self.threshold = 0.
    else:
      self.vocabulary = speech_recognition_msgs.msg.Vocabulary()
      self.grammar = speech_recognition_msgs.msg.Grammar()
      self.grammar_name = ''
      self.duration = 0.
      self.quiet = False
      self.threshold = 0.

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
      _x = self.vocabulary.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.vocabulary.words)
      buff.write(_struct_I.pack(length))
      for val1 in self.vocabulary.words:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.vocabulary.phonemes)
      buff.write(_struct_I.pack(length))
      for val1 in self.vocabulary.phonemes:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      _x = self.grammar.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.grammar.rules)
      buff.write(_struct_I.pack(length))
      for val1 in self.grammar.rules:
        _x = val1.symbol
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.definition)
        buff.write(_struct_I.pack(length))
        for val2 in val1.definition:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val2))
      length = len(self.grammar.categories)
      buff.write(_struct_I.pack(length))
      for val1 in self.grammar.categories:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.grammar.vocabularies)
      buff.write(_struct_I.pack(length))
      for val1 in self.grammar.vocabularies:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.words)
        buff.write(_struct_I.pack(length))
        for val2 in val1.words:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val2))
        length = len(val1.phonemes)
        buff.write(_struct_I.pack(length))
        for val2 in val1.phonemes:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val2))
      _x = self.grammar_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_fBf().pack(_x.duration, _x.quiet, _x.threshold))
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
      if self.vocabulary is None:
        self.vocabulary = speech_recognition_msgs.msg.Vocabulary()
      if self.grammar is None:
        self.grammar = speech_recognition_msgs.msg.Grammar()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.vocabulary.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.vocabulary.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.vocabulary.words = []
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
        self.vocabulary.words.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.vocabulary.phonemes = []
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
        self.vocabulary.phonemes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grammar.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.grammar.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.grammar.rules = []
      for i in range(0, length):
        val1 = speech_recognition_msgs.msg.PhraseRule()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.symbol = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.symbol = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.definition = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2 = str[start:end]
          val1.definition.append(val2)
        self.grammar.rules.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.grammar.categories = []
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
        self.grammar.categories.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.grammar.vocabularies = []
      for i in range(0, length):
        val1 = speech_recognition_msgs.msg.Vocabulary()
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
        (length,) = _struct_I.unpack(str[start:end])
        val1.words = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2 = str[start:end]
          val1.words.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.phonemes = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2 = str[start:end]
          val1.phonemes.append(val2)
        self.grammar.vocabularies.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grammar_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.grammar_name = str[start:end]
      _x = self
      start = end
      end += 9
      (_x.duration, _x.quiet, _x.threshold,) = _get_struct_fBf().unpack(str[start:end])
      self.quiet = bool(self.quiet)
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
      _x = self.vocabulary.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.vocabulary.words)
      buff.write(_struct_I.pack(length))
      for val1 in self.vocabulary.words:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.vocabulary.phonemes)
      buff.write(_struct_I.pack(length))
      for val1 in self.vocabulary.phonemes:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      _x = self.grammar.name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      length = len(self.grammar.rules)
      buff.write(_struct_I.pack(length))
      for val1 in self.grammar.rules:
        _x = val1.symbol
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.definition)
        buff.write(_struct_I.pack(length))
        for val2 in val1.definition:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val2))
      length = len(self.grammar.categories)
      buff.write(_struct_I.pack(length))
      for val1 in self.grammar.categories:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.grammar.vocabularies)
      buff.write(_struct_I.pack(length))
      for val1 in self.grammar.vocabularies:
        _x = val1.name
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
        length = len(val1.words)
        buff.write(_struct_I.pack(length))
        for val2 in val1.words:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val2))
        length = len(val1.phonemes)
        buff.write(_struct_I.pack(length))
        for val2 in val1.phonemes:
          length = len(val2)
          if python3 or type(val2) == unicode:
            val2 = val2.encode('utf-8')
            length = len(val2)
          buff.write(struct.Struct('<I%ss'%length).pack(length, val2))
      _x = self.grammar_name
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.Struct('<I%ss'%length).pack(length, _x))
      _x = self
      buff.write(_get_struct_fBf().pack(_x.duration, _x.quiet, _x.threshold))
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
      if self.vocabulary is None:
        self.vocabulary = speech_recognition_msgs.msg.Vocabulary()
      if self.grammar is None:
        self.grammar = speech_recognition_msgs.msg.Grammar()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.vocabulary.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.vocabulary.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.vocabulary.words = []
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
        self.vocabulary.words.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.vocabulary.phonemes = []
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
        self.vocabulary.phonemes.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grammar.name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.grammar.name = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.grammar.rules = []
      for i in range(0, length):
        val1 = speech_recognition_msgs.msg.PhraseRule()
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.symbol = str[start:end].decode('utf-8', 'rosmsg')
        else:
          val1.symbol = str[start:end]
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.definition = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2 = str[start:end]
          val1.definition.append(val2)
        self.grammar.rules.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.grammar.categories = []
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
        self.grammar.categories.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.grammar.vocabularies = []
      for i in range(0, length):
        val1 = speech_recognition_msgs.msg.Vocabulary()
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
        (length,) = _struct_I.unpack(str[start:end])
        val1.words = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2 = str[start:end]
          val1.words.append(val2)
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.phonemes = []
        for i in range(0, length):
          start = end
          end += 4
          (length,) = _struct_I.unpack(str[start:end])
          start = end
          end += length
          if python3:
            val2 = str[start:end].decode('utf-8', 'rosmsg')
          else:
            val2 = str[start:end]
          val1.phonemes.append(val2)
        self.grammar.vocabularies.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.grammar_name = str[start:end].decode('utf-8', 'rosmsg')
      else:
        self.grammar_name = str[start:end]
      _x = self
      start = end
      end += 9
      (_x.duration, _x.quiet, _x.threshold,) = _get_struct_fBf().unpack(str[start:end])
      self.quiet = bool(self.quiet)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_fBf = None
def _get_struct_fBf():
    global _struct_fBf
    if _struct_fBf is None:
        _struct_fBf = struct.Struct("<fBf")
    return _struct_fBf
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from speech_recognition_msgs/SpeechRecognitionResponse.msg. Do not edit."""
import codecs
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import speech_recognition_msgs.msg

class SpeechRecognitionResponse(genpy.Message):
  _md5sum = "46fe009ac10a19a0e861b8792ad42e0b"
  _type = "speech_recognition_msgs/SpeechRecognitionResponse"
  _has_header = False  # flag to mark the presence of a Header object
  _full_text = """speech_recognition_msgs/SpeechRecognitionCandidates result


================================================================================
MSG: speech_recognition_msgs/SpeechRecognitionCandidates
string[] transcript   # candidate words of speech-to-text API
float32[] confidence  # confidence of transcript"""
  __slots__ = ['result']
  _slot_types = ['speech_recognition_msgs/SpeechRecognitionCandidates']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       result

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(SpeechRecognitionResponse, self).__init__(*args, **kwds)
      # message fields cannot be None, assign default values for those that are
      if self.result is None:
        self.result = speech_recognition_msgs.msg.SpeechRecognitionCandidates()
    else:
      self.result = speech_recognition_msgs.msg.SpeechRecognitionCandidates()

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
      length = len(self.result.transcript)
      buff.write(_struct_I.pack(length))
      for val1 in self.result.transcript:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.result.confidence)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(struct.Struct(pattern).pack(*self.result.confidence))
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
      if self.result is None:
        self.result = speech_recognition_msgs.msg.SpeechRecognitionCandidates()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.result.transcript = []
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
        self.result.transcript.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.result.confidence = s.unpack(str[start:end])
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
      length = len(self.result.transcript)
      buff.write(_struct_I.pack(length))
      for val1 in self.result.transcript:
        length = len(val1)
        if python3 or type(val1) == unicode:
          val1 = val1.encode('utf-8')
          length = len(val1)
        buff.write(struct.Struct('<I%ss'%length).pack(length, val1))
      length = len(self.result.confidence)
      buff.write(_struct_I.pack(length))
      pattern = '<%sf'%length
      buff.write(self.result.confidence.tostring())
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
      if self.result is None:
        self.result = speech_recognition_msgs.msg.SpeechRecognitionCandidates()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.result.transcript = []
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
        self.result.transcript.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sf'%length
      start = end
      s = struct.Struct(pattern)
      end += s.size
      self.result.confidence = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e)  # most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
class SpeechRecognition(object):
  _type          = 'speech_recognition_msgs/SpeechRecognition'
  _md5sum = 'fa1c2822647ba139ac562b2fdc05f1fb'
  _request_class  = SpeechRecognitionRequest
  _response_class = SpeechRecognitionResponse