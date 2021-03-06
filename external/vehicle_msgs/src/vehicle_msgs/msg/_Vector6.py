"""autogenerated by genpy from vehicle_msgs/Vector6.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Vector6(genpy.Message):
  _md5sum = "49fffaeb8b23e9b33d73b2dc1dc4f709"
  _type = "vehicle_msgs/Vector6"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# vehicle_msgs/Vector6.msg
#
#   For instance it can be used as 6DOF force vector message:
#
#       tau = [X, Y, Z, K, M, N]  as used in modelling equations
#       X, Y, Z are forces in Newtons. K, M, N are torques in Newton metres.

float32[6] values       # vector

"""
  __slots__ = ['values']
  _slot_types = ['float32[6]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       values

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Vector6, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.values is None:
        self.values = [0.,0.,0.,0.,0.,0.]
    else:
      self.values = [0.,0.,0.,0.,0.,0.]

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
      buff.write(_struct_6f.pack(*self.values))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 24
      self.values = _struct_6f.unpack(str[start:end])
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
      buff.write(self.values.tostring())
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 24
      self.values = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=6)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6f = struct.Struct("<6f")
