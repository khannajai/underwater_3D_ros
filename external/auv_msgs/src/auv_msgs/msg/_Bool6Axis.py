"""autogenerated by genpy from auv_msgs/Bool6Axis.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class Bool6Axis(genpy.Message):
  _md5sum = "38f836659cedbc069e466741ffb25422"
  _type = "auv_msgs/Bool6Axis"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """bool x
bool y
bool z
bool roll
bool pitch
bool yaw

"""
  __slots__ = ['x','y','z','roll','pitch','yaw']
  _slot_types = ['bool','bool','bool','bool','bool','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       x,y,z,roll,pitch,yaw

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(Bool6Axis, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.x is None:
        self.x = False
      if self.y is None:
        self.y = False
      if self.z is None:
        self.z = False
      if self.roll is None:
        self.roll = False
      if self.pitch is None:
        self.pitch = False
      if self.yaw is None:
        self.yaw = False
    else:
      self.x = False
      self.y = False
      self.z = False
      self.roll = False
      self.pitch = False
      self.yaw = False

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
      buff.write(_struct_6B.pack(_x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      _x = self
      start = end
      end += 6
      (_x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw,) = _struct_6B.unpack(str[start:end])
      self.x = bool(self.x)
      self.y = bool(self.y)
      self.z = bool(self.z)
      self.roll = bool(self.roll)
      self.pitch = bool(self.pitch)
      self.yaw = bool(self.yaw)
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
      _x = self
      buff.write(_struct_6B.pack(_x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw))
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
      _x = self
      start = end
      end += 6
      (_x.x, _x.y, _x.z, _x.roll, _x.pitch, _x.yaw,) = _struct_6B.unpack(str[start:end])
      self.x = bool(self.x)
      self.y = bool(self.y)
      self.z = bool(self.z)
      self.roll = bool(self.roll)
      self.pitch = bool(self.pitch)
      self.yaw = bool(self.yaw)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_6B = struct.Struct("<6B")