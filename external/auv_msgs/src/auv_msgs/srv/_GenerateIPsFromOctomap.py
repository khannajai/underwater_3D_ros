"""autogenerated by genpy from auv_msgs/GenerateIPsFromOctomapRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg
import geometry_msgs.msg

class GenerateIPsFromOctomapRequest(genpy.Message):
  _md5sum = "f85f2ed9b8b9f0adb1674e19ebcde012"
  _type = "auv_msgs/GenerateIPsFromOctomapRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """

string octomap_id
SphereArray inspection_volume

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
  __slots__ = ['octomap_id','inspection_volume']
  _slot_types = ['string','auv_msgs/SphereArray']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       octomap_id,inspection_volume

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GenerateIPsFromOctomapRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.octomap_id is None:
        self.octomap_id = ''
      if self.inspection_volume is None:
        self.inspection_volume = auv_msgs.msg.SphereArray()
    else:
      self.octomap_id = ''
      self.inspection_volume = auv_msgs.msg.SphereArray()

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
      _x = self.octomap_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.inspection_volume.spheres)
      buff.write(_struct_I.pack(length))
      for val1 in self.inspection_volume.spheres:
        _v1 = val1.center
        _x = _v1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        buff.write(_struct_d.pack(val1.radius))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.inspection_volume is None:
        self.inspection_volume = auv_msgs.msg.SphereArray()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.octomap_id = str[start:end].decode('utf-8')
      else:
        self.octomap_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.inspection_volume.spheres = []
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
        self.inspection_volume.spheres.append(val1)
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
      _x = self.octomap_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.inspection_volume.spheres)
      buff.write(_struct_I.pack(length))
      for val1 in self.inspection_volume.spheres:
        _v3 = val1.center
        _x = _v3
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        buff.write(_struct_d.pack(val1.radius))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.inspection_volume is None:
        self.inspection_volume = auv_msgs.msg.SphereArray()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.octomap_id = str[start:end].decode('utf-8')
      else:
        self.octomap_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.inspection_volume.spheres = []
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
        self.inspection_volume.spheres.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_d = struct.Struct("<d")
_struct_3d = struct.Struct("<3d")
"""autogenerated by genpy from auv_msgs/GenerateIPsFromOctomapResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg

class GenerateIPsFromOctomapResponse(genpy.Message):
  _md5sum = "b432245c714a0cad9b27ca2d20859f85"
  _type = "auv_msgs/GenerateIPsFromOctomapResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """
NEDArray ips


================================================================================
MSG: auv_msgs/NEDArray
NED[] neds

================================================================================
MSG: auv_msgs/NED
# Position or velocity in the right-handed NED coordinate frame.

# metres north, positive towards true north.
float64 north

# metres east, positive towards true east.
float64 east

# metres down, positive towards the centre of the earth.
float64 depth

"""
  __slots__ = ['ips']
  _slot_types = ['auv_msgs/NEDArray']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       ips

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(GenerateIPsFromOctomapResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.ips is None:
        self.ips = auv_msgs.msg.NEDArray()
    else:
      self.ips = auv_msgs.msg.NEDArray()

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
      length = len(self.ips.neds)
      buff.write(_struct_I.pack(length))
      for val1 in self.ips.neds:
        _x = val1
        buff.write(_struct_3d.pack(_x.north, _x.east, _x.depth))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.ips is None:
        self.ips = auv_msgs.msg.NEDArray()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.ips.neds = []
      for i in range(0, length):
        val1 = auv_msgs.msg.NED()
        _x = val1
        start = end
        end += 24
        (_x.north, _x.east, _x.depth,) = _struct_3d.unpack(str[start:end])
        self.ips.neds.append(val1)
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
      length = len(self.ips.neds)
      buff.write(_struct_I.pack(length))
      for val1 in self.ips.neds:
        _x = val1
        buff.write(_struct_3d.pack(_x.north, _x.east, _x.depth))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.ips is None:
        self.ips = auv_msgs.msg.NEDArray()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.ips.neds = []
      for i in range(0, length):
        val1 = auv_msgs.msg.NED()
        _x = val1
        start = end
        end += 24
        (_x.north, _x.east, _x.depth,) = _struct_3d.unpack(str[start:end])
        self.ips.neds.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3d = struct.Struct("<3d")
class GenerateIPsFromOctomap(object):
  _type          = 'auv_msgs/GenerateIPsFromOctomap'
  _md5sum = 'ae1fc104a517cdd815ff2270e013be6c'
  _request_class  = GenerateIPsFromOctomapRequest
  _response_class = GenerateIPsFromOctomapResponse
