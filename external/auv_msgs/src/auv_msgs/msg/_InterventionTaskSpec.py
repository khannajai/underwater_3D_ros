"""autogenerated by genpy from auv_msgs/InterventionTaskSpec.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg
import geometry_msgs.msg

class InterventionTaskSpec(genpy.Message):
  _md5sum = "2b8fadd4bfa9a8a880fc736d196c3441"
  _type = "auv_msgs/InterventionTaskSpec"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Specification of the intervention task, given as a task type to perform
# on an object identified with a bounding box on an image.

# Type of intervention task to perform.
int32 task_type
int32 TASK_RECOVERY=1
int32 TASK_HOOK_CABLE=2
int32 TASK_PUSH_BUTTON=3
int32 TASK_OPEN_VALVE=4

# Array of strategy specifications, in descending order of preference.
InterventionStrategySpec[] strategy_spec

================================================================================
MSG: auv_msgs/InterventionStrategySpec
# Specification of the intervention strategy.

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
  TASK_RECOVERY = 1
  TASK_HOOK_CABLE = 2
  TASK_PUSH_BUTTON = 3
  TASK_OPEN_VALVE = 4

  __slots__ = ['task_type','strategy_spec']
  _slot_types = ['int32','auv_msgs/InterventionStrategySpec[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       task_type,strategy_spec

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InterventionTaskSpec, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.task_type is None:
        self.task_type = 0
      if self.strategy_spec is None:
        self.strategy_spec = []
    else:
      self.task_type = 0
      self.strategy_spec = []

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
      buff.write(_struct_i.pack(self.task_type))
      length = len(self.strategy_spec)
      buff.write(_struct_I.pack(length))
      for val1 in self.strategy_spec:
        _v1 = val1.grasp_frame
        _v2 = _v1.translation
        _x = _v2
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v3 = _v1.rotation
        _x = _v3
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_struct_i.pack(val1.preshape))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.strategy_spec is None:
        self.strategy_spec = None
      end = 0
      start = end
      end += 4
      (self.task_type,) = _struct_i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.strategy_spec = []
      for i in range(0, length):
        val1 = auv_msgs.msg.InterventionStrategySpec()
        _v4 = val1.grasp_frame
        _v5 = _v4.translation
        _x = _v5
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v6 = _v4.rotation
        _x = _v6
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        start = end
        end += 4
        (val1.preshape,) = _struct_i.unpack(str[start:end])
        self.strategy_spec.append(val1)
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
      buff.write(_struct_i.pack(self.task_type))
      length = len(self.strategy_spec)
      buff.write(_struct_I.pack(length))
      for val1 in self.strategy_spec:
        _v7 = val1.grasp_frame
        _v8 = _v7.translation
        _x = _v8
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        _v9 = _v7.rotation
        _x = _v9
        buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
        buff.write(_struct_i.pack(val1.preshape))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.strategy_spec is None:
        self.strategy_spec = None
      end = 0
      start = end
      end += 4
      (self.task_type,) = _struct_i.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.strategy_spec = []
      for i in range(0, length):
        val1 = auv_msgs.msg.InterventionStrategySpec()
        _v10 = val1.grasp_frame
        _v11 = _v10.translation
        _x = _v11
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        _v12 = _v10.rotation
        _x = _v12
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
        start = end
        end += 4
        (val1.preshape,) = _struct_i.unpack(str[start:end])
        self.strategy_spec.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_i = struct.Struct("<i")
_struct_4d = struct.Struct("<4d")
_struct_3d = struct.Struct("<3d")
