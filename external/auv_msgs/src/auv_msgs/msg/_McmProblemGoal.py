"""autogenerated by genpy from auv_msgs/McmProblemGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg

class McmProblemGoal(genpy.Message):
  _md5sum = "96e1df3587abcc0fc49e301e3f89af4f"
  _type = "auv_msgs/McmProblemGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# something (needs to be changed into somethong meaningful)
Test testing

================================================================================
MSG: auv_msgs/Test
float64 radius

"""
  __slots__ = ['testing']
  _slot_types = ['auv_msgs/Test']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       testing

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(McmProblemGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.testing is None:
        self.testing = auv_msgs.msg.Test()
    else:
      self.testing = auv_msgs.msg.Test()

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
      buff.write(_struct_d.pack(self.testing.radius))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.testing is None:
        self.testing = auv_msgs.msg.Test()
      end = 0
      start = end
      end += 8
      (self.testing.radius,) = _struct_d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill


  def serialize_numpy(self, buff, numpy):
    """
    serialize message with numpy array types into buffer
    :param buff: buffer, ``StringIO``
    :param numpy: numpy python module
    """
    try:
      buff.write(_struct_d.pack(self.testing.radius))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.testing is None:
        self.testing = auv_msgs.msg.Test()
      end = 0
      start = end
      end += 8
      (self.testing.radius,) = _struct_d.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_d = struct.Struct("<d")