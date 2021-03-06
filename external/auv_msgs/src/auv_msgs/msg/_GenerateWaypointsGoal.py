"""autogenerated by genpy from auv_msgs/GenerateWaypointsGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg
import geometry_msgs.msg

class GenerateWaypointsGoal(genpy.Message):
  _md5sum = "738616ab94abb4608b3a4a1855f69cec"
  _type = "auv_msgs/GenerateWaypointsGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
#areas of observed occupancy that we want to inspect around
SphereArray occupancy
#the pddl name to store the result in, WP maps to WP1, WP2 .. WPn
string wp_variable_prefix
string ip_variable_prefix

================================================================================
MSG: auv_msgs/SphereArray
Sphere[] spheres

================================================================================
MSG: auv_msgs/Sphere
geometry_msgs/Point center
float64 radius

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

"""
  __slots__ = ['occupancy','wp_variable_prefix','ip_variable_prefix']
  _slot_types = ['auv_msgs/SphereArray','string','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       occupancy,wp_variable_prefix,ip_variable_prefix

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GenerateWaypointsGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.occupancy is None:
        self.occupancy = auv_msgs.msg.SphereArray()
      if self.wp_variable_prefix is None:
        self.wp_variable_prefix = ''
      if self.ip_variable_prefix is None:
        self.ip_variable_prefix = ''
    else:
      self.occupancy = auv_msgs.msg.SphereArray()
      self.wp_variable_prefix = ''
      self.ip_variable_prefix = ''

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
      length = len(self.occupancy.spheres)
      buff.write(_struct_I.pack(length))
      for val1 in self.occupancy.spheres:
        _v1 = val1.center
        _x = _v1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        buff.write(_struct_d.pack(val1.radius))
      _x = self.wp_variable_prefix
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.ip_variable_prefix
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.occupancy is None:
        self.occupancy = auv_msgs.msg.SphereArray()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.occupancy.spheres = []
      for i in range(0, length):
        val1 = auv_msgs.msg.Sphere()
        _v2 = val1.center
        _x = _v2
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        start = end
        end += 8
        (val1.radius,) = _struct_d.unpack(str[start:end])
        self.occupancy.spheres.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.wp_variable_prefix = str[start:end].decode('utf-8')
      else:
        self.wp_variable_prefix = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ip_variable_prefix = str[start:end].decode('utf-8')
      else:
        self.ip_variable_prefix = str[start:end]
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
      length = len(self.occupancy.spheres)
      buff.write(_struct_I.pack(length))
      for val1 in self.occupancy.spheres:
        _v3 = val1.center
        _x = _v3
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        buff.write(_struct_d.pack(val1.radius))
      _x = self.wp_variable_prefix
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.ip_variable_prefix
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.occupancy is None:
        self.occupancy = auv_msgs.msg.SphereArray()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.occupancy.spheres = []
      for i in range(0, length):
        val1 = auv_msgs.msg.Sphere()
        _v4 = val1.center
        _x = _v4
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        start = end
        end += 8
        (val1.radius,) = _struct_d.unpack(str[start:end])
        self.occupancy.spheres.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.wp_variable_prefix = str[start:end].decode('utf-8')
      else:
        self.wp_variable_prefix = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.ip_variable_prefix = str[start:end].decode('utf-8')
      else:
        self.ip_variable_prefix = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_d = struct.Struct("<d")
_struct_3d = struct.Struct("<3d")
