"""autogenerated by genpy from auv_msgs/ObjectOperationActionGoal.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg
import genpy
import actionlib_msgs.msg
import std_msgs.msg

class ObjectOperationActionGoal(genpy.Message):
  _md5sum = "0cd4b1849f003d311accf33847d2f77d"
  _type = "auv_msgs/ObjectOperationActionGoal"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

Header header
actionlib_msgs/GoalID goal_id
ObjectOperationGoal goal

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
MSG: auv_msgs/ObjectOperationGoal
# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
# Follow the specified path, which may include both depth-mode and bottom
# following altitude-mode sections.

# Variable length array of vehicle trajectory poses.
VehiclePose[] pose

# Boolean array the same length as pose, where true indicates
# that altitude mode control should preferably be used when sending
# that pose as a waypoint to the pilot, with the altitude specified in the
# request parameters.
bool[] altitude_mode

#ID Intervention

string id_intervention   


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
  _slot_types = ['std_msgs/Header','actionlib_msgs/GoalID','auv_msgs/ObjectOperationGoal']

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
      super(ObjectOperationActionGoal, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_id is None:
        self.goal_id = actionlib_msgs.msg.GoalID()
      if self.goal is None:
        self.goal = auv_msgs.msg.ObjectOperationGoal()
    else:
      self.header = std_msgs.msg.Header()
      self.goal_id = actionlib_msgs.msg.GoalID()
      self.goal = auv_msgs.msg.ObjectOperationGoal()

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
      length = len(self.goal.pose)
      buff.write(_struct_I.pack(length))
      for val1 in self.goal.pose:
        _v1 = val1.position
        _x = _v1
        buff.write(_struct_3d.pack(_x.north, _x.east, _x.depth))
        _v2 = val1.orientation
        _x = _v2
        buff.write(_struct_3f.pack(_x.roll, _x.pitch, _x.yaw))
      length = len(self.goal.altitude_mode)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(struct.pack(pattern, *self.goal.altitude_mode))
      _x = self.goal.id_intervention
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_id is None:
        self.goal_id = actionlib_msgs.msg.GoalID()
      if self.goal is None:
        self.goal = auv_msgs.msg.ObjectOperationGoal()
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.goal.pose = []
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
        self.goal.pose.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.altitude_mode = struct.unpack(pattern, str[start:end])
      self.goal.altitude_mode = map(bool, self.goal.altitude_mode)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.id_intervention = str[start:end].decode('utf-8')
      else:
        self.goal.id_intervention = str[start:end]
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
      length = len(self.goal.pose)
      buff.write(_struct_I.pack(length))
      for val1 in self.goal.pose:
        _v5 = val1.position
        _x = _v5
        buff.write(_struct_3d.pack(_x.north, _x.east, _x.depth))
        _v6 = val1.orientation
        _x = _v6
        buff.write(_struct_3f.pack(_x.roll, _x.pitch, _x.yaw))
      length = len(self.goal.altitude_mode)
      buff.write(_struct_I.pack(length))
      pattern = '<%sB'%length
      buff.write(self.goal.altitude_mode.tostring())
      _x = self.goal.id_intervention
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
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal_id is None:
        self.goal_id = actionlib_msgs.msg.GoalID()
      if self.goal is None:
        self.goal = auv_msgs.msg.ObjectOperationGoal()
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.goal.pose = []
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
        self.goal.pose.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%sB'%length
      start = end
      end += struct.calcsize(pattern)
      self.goal.altitude_mode = numpy.frombuffer(str[start:end], dtype=numpy.bool, count=length)
      self.goal.altitude_mode = map(bool, self.goal.altitude_mode)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.id_intervention = str[start:end].decode('utf-8')
      else:
        self.goal.id_intervention = str[start:end]
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3f = struct.Struct("<3f")
_struct_3I = struct.Struct("<3I")
_struct_2I = struct.Struct("<2I")
_struct_3d = struct.Struct("<3d")
