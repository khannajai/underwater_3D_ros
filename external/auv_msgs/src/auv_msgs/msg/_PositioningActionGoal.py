"""autogenerated by genpy from auv_msgs/PositioningActionGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg
import genpy
import actionlib_msgs.msg
import std_msgs.msg

class PositioningActionGoal(genpy.Message):
  _md5sum = "07f937212f8191cb780d09e6f24705d6"
  _type = "auv_msgs/PositioningActionGoal"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
PositioningGoal goal

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
MSG: actionlib_msgs/GoalID
# The stamp should store the time at which this goal was requested.
# It is used by an action server when it tries to preempt all
# goals that were requested before a certain time
time stamp

# The id provides a way to associate feedback and
# result message with specific goal requests. The id
# specified must be unique.
string id


================================================================================
MSG: auv_msgs/PositioningGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
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
  __slots__ = ['header','goal_id','goal']
  _slot_types = ['std_msgs/Header','actionlib_msgs/GoalID','auv_msgs/PositioningGoal']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,goal_id,goal

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(PositioningActionGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_id is None:
        self.goal_id = actionlib_msgs.msg.GoalID()
      if self.goal is None:
        self.goal = auv_msgs.msg.PositioningGoal()
    else:
      self.header = std_msgs.msg.Header()
      self.goal_id = actionlib_msgs.msg.GoalID()
      self.goal = auv_msgs.msg.PositioningGoal()

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
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.goal_id.stamp.secs, _x.goal_id.stamp.nsecs))
      _x = self.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3d3fdB.pack(_x.goal.pose.position.north, _x.goal.pose.position.east, _x.goal.pose.position.depth, _x.goal.pose.orientation.roll, _x.goal.pose.orientation.pitch, _x.goal.pose.orientation.yaw, _x.goal.minimum_duration, _x.goal.altitude_mode))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_id is None:
        self.goal_id = actionlib_msgs.msg.GoalID()
      if self.goal is None:
        self.goal = auv_msgs.msg.PositioningGoal()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.goal_id.stamp.secs, _x.goal_id.stamp.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 45
      (_x.goal.pose.position.north, _x.goal.pose.position.east, _x.goal.pose.position.depth, _x.goal.pose.orientation.roll, _x.goal.pose.orientation.pitch, _x.goal.pose.orientation.yaw, _x.goal.minimum_duration, _x.goal.altitude_mode,) = _struct_3d3fdB.unpack(str[start:end])
      self.goal.altitude_mode = bool(self.goal.altitude_mode)
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
      buff.write(_struct_3I.pack(_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs))
      _x = self.header.frame_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I.pack(_x.goal_id.stamp.secs, _x.goal_id.stamp.nsecs))
      _x = self.goal_id.id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_3d3fdB.pack(_x.goal.pose.position.north, _x.goal.pose.position.east, _x.goal.pose.position.depth, _x.goal.pose.orientation.roll, _x.goal.pose.orientation.pitch, _x.goal.pose.orientation.yaw, _x.goal.minimum_duration, _x.goal.altitude_mode))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_id is None:
        self.goal_id = actionlib_msgs.msg.GoalID()
      if self.goal is None:
        self.goal = auv_msgs.msg.PositioningGoal()
      end = 0
      _x = self
      start = end
      end += 12
      (_x.header.seq, _x.header.stamp.secs, _x.header.stamp.nsecs,) = _struct_3I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.header.frame_id = str[start:end].decode('utf-8')
      else:
        self.header.frame_id = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.goal_id.stamp.secs, _x.goal_id.stamp.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal_id.id = str[start:end].decode('utf-8')
      else:
        self.goal_id.id = str[start:end]
      _x = self
      start = end
      end += 45
      (_x.goal.pose.position.north, _x.goal.pose.position.east, _x.goal.pose.position.depth, _x.goal.pose.orientation.roll, _x.goal.pose.orientation.pitch, _x.goal.pose.orientation.yaw, _x.goal.minimum_duration, _x.goal.altitude_mode,) = _struct_3d3fdB.unpack(str[start:end])
      self.goal.altitude_mode = bool(self.goal.altitude_mode)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_2I = struct.Struct("<2I")
_struct_3d3fdB = struct.Struct("<3d3fdB")
