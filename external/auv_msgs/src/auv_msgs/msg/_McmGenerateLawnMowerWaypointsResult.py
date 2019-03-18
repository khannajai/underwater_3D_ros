"""autogenerated by genpy from auv_msgs/McmGenerateLawnMowerWaypointsResult.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg
import std_msgs.msg

class McmGenerateLawnMowerWaypointsResult(genpy.Message):
  _md5sum = "567252045b1cbceaafc1fc3f6619e651"
  _type = "auv_msgs/McmGenerateLawnMowerWaypointsResult"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

#total waypoints suggested
VehiclePoseArray waypoints

bool success

# Error number if action failed.
int32 error_num
int32 ERROR_LOST_NAV=1
int32 ERROR_OTHER=-1
string error_string


================================================================================
MSG: auv_msgs/VehiclePoseArray
Header header
VehiclePose[] poses

================================================================================
MSG: std_msgs/Header
# Standard metadata for higher-level stamped data types.
# This is generally used to communicate timestamped data 
# in a particular coordinate frame.
# 
# sequence ID: consecutively increasing ID 
uint32 seq
#Two-integer timestamp that is expressed as:
# * stamp.secs: seconds (stamp_secs) since epoch
# * stamp.nsecs: nanoseconds since stamp_secs
# time-handling sugar is provided by the client library
time stamp
#Frame this data is associated with
# 0: no frame
# 1: global frame
string frame_id

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
  # Pseudo-constants
  ERROR_LOST_NAV = 1
  ERROR_OTHER = -1

  __slots__ = ['waypoints','success','error_num','error_string']
  _slot_types = ['auv_msgs/VehiclePoseArray','bool','int32','string']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       waypoints,success,error_num,error_string

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(McmGenerateLawnMowerWaypointsResult, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.waypoints is None:
        self.waypoints = auv_msgs.msg.VehiclePoseArray()
      if self.success is None:
        self.success = False
      if self.error_num is None:
        self.error_num = 0
      if self.error_string is None:
        self.error_string = ''
    else:
      self.waypoints = auv_msgs.msg.VehiclePoseArray()
      self.success = False
      self.error_num = 0
      self.error_string = ''

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
      buff.write(_struct_3I.pack(_x.waypoints.header.seq, _x.waypoints.header.stamp.secs, _x.waypoints.header.stamp.nsecs))
      _x = self.waypoints.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.waypoints.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.waypoints.poses:
        _v1 = val1.position
        _x = _v1
        buff.write(_struct_3d.pack(_x.north, _x.east, _x.depth))
        _v2 = val1.orientation
        _x = _v2
        buff.write(_struct_3f.pack(_x.roll, _x.pitch, _x.yaw))
      _x = self
      buff.write(_struct_Bi.pack(_x.success, _x.error_num))
      _x = self.error_string
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
      if self.waypoints is None:
        self.waypoints = auv_msgs.msg.VehiclePoseArray()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.waypoints.header.seq, _x.waypoints.header.stamp.secs, _x.waypoints.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.waypoints.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.waypoints.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.waypoints.poses = []
      for i in range(0, length):
        val1 = auv_msgs.msg.VehiclePose()
        _v3 = val1.position
        _x = _v3
        start = end
        end += 24
        (_x.north, _x.east, _x.depth,) = _struct_3d.unpack(str[start:end])
        _v4 = val1.orientation
        _x = _v4
        start = end
        end += 12
        (_x.roll, _x.pitch, _x.yaw,) = _struct_3f.unpack(str[start:end])
        self.waypoints.poses.append(val1)
      _x = self
      start = end
      end += 5
      (_x.success, _x.error_num,) = _struct_Bi.unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.error_string = str[start:end].decode('utf-8')
      else:
        self.error_string = str[start:end]
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
      buff.write(_struct_3I.pack(_x.waypoints.header.seq, _x.waypoints.header.stamp.secs, _x.waypoints.header.stamp.nsecs))
      _x = self.waypoints.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      length = len(self.waypoints.poses)
      buff.write(_struct_I.pack(length))
      for val1 in self.waypoints.poses:
        _v5 = val1.position
        _x = _v5
        buff.write(_struct_3d.pack(_x.north, _x.east, _x.depth))
        _v6 = val1.orientation
        _x = _v6
        buff.write(_struct_3f.pack(_x.roll, _x.pitch, _x.yaw))
      _x = self
      buff.write(_struct_Bi.pack(_x.success, _x.error_num))
      _x = self.error_string
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
      if self.waypoints is None:
        self.waypoints = auv_msgs.msg.VehiclePoseArray()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.waypoints.header.seq, _x.waypoints.header.stamp.secs, _x.waypoints.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.waypoints.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.waypoints.header.frame_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.waypoints.poses = []
      for i in range(0, length):
        val1 = auv_msgs.msg.VehiclePose()
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.north, _x.east, _x.depth,) = _struct_3d.unpack(str[start:end])
        _v8 = val1.orientation
        _x = _v8
        start = end
        end += 12
        (_x.roll, _x.pitch, _x.yaw,) = _struct_3f.unpack(str[start:end])
        self.waypoints.poses.append(val1)
      _x = self
      start = end
      end += 5
      (_x.success, _x.error_num,) = _struct_Bi.unpack(str[start:end])
      self.success = bool(self.success)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.error_string = str[start:end].decode('utf-8')
      else:
        self.error_string = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_Bi = struct.Struct("<Bi")
_struct_3I = struct.Struct("<3I")
_struct_3f = struct.Struct("<3f")
_struct_3d = struct.Struct("<3d")
