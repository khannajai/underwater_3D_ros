"""autogenerated by genpy from auv_msgs/PositioningGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg

class PositioningGoal(genpy.Message):
  _md5sum = "397b2381cee775797a1f3e3a43052566"
  _type = "auv_msgs/PositioningGoal"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Position a marine vehicle at a given pose.

# Variable to specify final pose.
VehiclePose pose
float64 minimum_duration

# Boolean variable to support the above vehicle pose. True indicates
# that altitude mode control should preferably be used when sending
# that pose as a waypoint to the pilot, with the altitude specified in the
# request parameters.
bool altitude_mode   


================================================================================
MSG: auv_msgs/VehiclePose
# Position and orientation of the vehicle. 

NED position
RPY orientation

================================================================================
MSG: auv_msgs/NED
# Position or velocity in the right-handed NED coordinate frame.

# metres north, positive towards true north.
float64 north

# metres east, positive towards true east.
float64 east

# metres down, positive towards the centre of the earth.
float64 depth

================================================================================
MSG: auv_msgs/RPY
# Orientation or orientation velocity in a frame consistent with the right-handed NED coordinate frame.

# Fixed-axis roll, in radians. Positive clockwise rotation about the X axis, looking forward.
float32 roll

# Fixed-axis pitch, in radians. Positive upwards rotation of the vehicle nose about the Y axis.
float32 pitch

# Fixed-axis yaw, in radians. Positive clockwise rotation about the Z axis, looking down.
float32 yaw

"""
  __slots__ = ['pose','minimum_duration','altitude_mode']
  _slot_types = ['auv_msgs/VehiclePose','float64','bool']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       pose,minimum_duration,altitude_mode

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PositioningGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.pose is None:
        self.pose = auv_msgs.msg.VehiclePose()
      if self.minimum_duration is None:
        self.minimum_duration = 0.
      if self.altitude_mode is None:
        self.altitude_mode = False
    else:
      self.pose = auv_msgs.msg.VehiclePose()
      self.minimum_duration = 0.
      self.altitude_mode = False

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
      buff.write(_struct_3d3fdB.pack(_x.pose.position.north, _x.pose.position.east, _x.pose.position.depth, _x.pose.orientation.roll, _x.pose.orientation.pitch, _x.pose.orientation.yaw, _x.minimum_duration, _x.altitude_mode))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.pose is None:
        self.pose = auv_msgs.msg.VehiclePose()
      end = 0
      _x = self
      start = end
      end += 45
      (_x.pose.position.north, _x.pose.position.east, _x.pose.position.depth, _x.pose.orientation.roll, _x.pose.orientation.pitch, _x.pose.orientation.yaw, _x.minimum_duration, _x.altitude_mode,) = _struct_3d3fdB.unpack(str[start:end])
      self.altitude_mode = bool(self.altitude_mode)
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
      buff.write(_struct_3d3fdB.pack(_x.pose.position.north, _x.pose.position.east, _x.pose.position.depth, _x.pose.orientation.roll, _x.pose.orientation.pitch, _x.pose.orientation.yaw, _x.minimum_duration, _x.altitude_mode))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.pose is None:
        self.pose = auv_msgs.msg.VehiclePose()
      end = 0
      _x = self
      start = end
      end += 45
      (_x.pose.position.north, _x.pose.position.east, _x.pose.position.depth, _x.pose.orientation.roll, _x.pose.orientation.pitch, _x.pose.orientation.yaw, _x.minimum_duration, _x.altitude_mode,) = _struct_3d3fdB.unpack(str[start:end])
      self.altitude_mode = bool(self.altitude_mode)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3d3fdB = struct.Struct("<3d3fdB")