"""autogenerated by genpy from auv_msgs/InterventionStrategySpec.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class InterventionStrategySpec(genpy.Message):
  _md5sum = "3c4b77f7990aea517de29ed69dd3e105"
  _type = "auv_msgs/InterventionStrategySpec"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Specification of the intervention strategy.

# Grasp frame given wrt bounding box origin
geometry_msgs/Transform grasp_frame

# Hand preshape
int32 preshape
int32 PRESHAPE_CYLINDRICAL_PRECISION=1
int32 PRESHAPE_CYLINDRICAL_POWER=2
int32 PRESHAPE_ONE_FINGER=3
int32 PRESHAPE_HOOK=4

================================================================================
MSG: geometry_msgs/Transform
# This represents the transform between two coordinate frames in free space.

Vector3 translation
Quaternion rotation

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 

float64 x
float64 y
float64 z
================================================================================
MSG: geometry_msgs/Quaternion
# This represents an orientation in free space in quaternion form.

float64 x
float64 y
float64 z
float64 w

"""
  # Pseudo-constants
  PRESHAPE_CYLINDRICAL_PRECISION = 1
  PRESHAPE_CYLINDRICAL_POWER = 2
  PRESHAPE_ONE_FINGER = 3
  PRESHAPE_HOOK = 4

  __slots__ = ['grasp_frame','preshape']
  _slot_types = ['geometry_msgs/Transform','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       grasp_frame,preshape

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InterventionStrategySpec, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.grasp_frame is None:
        self.grasp_frame = geometry_msgs.msg.Transform()
      if self.preshape is None:
        self.preshape = 0
    else:
      self.grasp_frame = geometry_msgs.msg.Transform()
      self.preshape = 0

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
      buff.write(_struct_7di.pack(_x.grasp_frame.translation.x, _x.grasp_frame.translation.y, _x.grasp_frame.translation.z, _x.grasp_frame.rotation.x, _x.grasp_frame.rotation.y, _x.grasp_frame.rotation.z, _x.grasp_frame.rotation.w, _x.preshape))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.grasp_frame is None:
        self.grasp_frame = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 60
      (_x.grasp_frame.translation.x, _x.grasp_frame.translation.y, _x.grasp_frame.translation.z, _x.grasp_frame.rotation.x, _x.grasp_frame.rotation.y, _x.grasp_frame.rotation.z, _x.grasp_frame.rotation.w, _x.preshape,) = _struct_7di.unpack(str[start:end])
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
      buff.write(_struct_7di.pack(_x.grasp_frame.translation.x, _x.grasp_frame.translation.y, _x.grasp_frame.translation.z, _x.grasp_frame.rotation.x, _x.grasp_frame.rotation.y, _x.grasp_frame.rotation.z, _x.grasp_frame.rotation.w, _x.preshape))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.grasp_frame is None:
        self.grasp_frame = geometry_msgs.msg.Transform()
      end = 0
      _x = self
      start = end
      end += 60
      (_x.grasp_frame.translation.x, _x.grasp_frame.translation.y, _x.grasp_frame.translation.z, _x.grasp_frame.rotation.x, _x.grasp_frame.rotation.y, _x.grasp_frame.rotation.z, _x.grasp_frame.rotation.w, _x.preshape,) = _struct_7di.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_7di = struct.Struct("<7di")
