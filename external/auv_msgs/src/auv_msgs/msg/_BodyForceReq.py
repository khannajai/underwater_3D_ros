"""autogenerated by genpy from auv_msgs/BodyForceReq.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg
import geometry_msgs.msg
import std_msgs.msg

class BodyForceReq(genpy.Message):
  _md5sum = "fc3830ccd35475b5740ab2420d89c9cb"
  _type = "auv_msgs/BodyForceReq"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """# Body frame vehicle velocity request.
# No coordinate units, values range +/- 1.
# NB: Coordinate frame used is ROS standard [forward, left, up],
# to simplify integration with arm control systems.

# header.frame_id should be set to the base_link frame of the vehicle.
Header header

GoalDescriptor goal

geometry_msgs/Wrench wrench

# Axes of control to disable, in body frame.
Bool6Axis disable_axis
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
MSG: auv_msgs/GoalDescriptor
# Contains values common to all waypoint request and status messages.
# Waypoint goals with higher priority trump lower priority goals. For
# goals of the same priority, the pilot should follow the latest
# received.

# Name of the requesting node, used with id to identify the request.
string requester

# Goal ID for the request
uint32 id

uint32 priority
uint32 PRIORITY_LOW = 0
uint32 PRIORITY_NORMAL = 10
uint32 PRIORITY_AVOID_OBSTACLE = 20
uint32 PRIORITY_EMERGENCY = 30
uint32 PRIORITY_MANUAL_OVERRIDE  = 40

================================================================================
MSG: geometry_msgs/Wrench
# This represents force in free space, seperated into 
# it's linear and angular parts.  
Vector3  force
Vector3  torque

================================================================================
MSG: geometry_msgs/Vector3
# This represents a vector in free space. 

float64 x
float64 y
float64 z
================================================================================
MSG: auv_msgs/Bool6Axis
bool x
bool y
bool z
bool roll
bool pitch
bool yaw

"""
  __slots__ = ['header','goal','wrench','disable_axis']
  _slot_types = ['std_msgs/Header','auv_msgs/GoalDescriptor','geometry_msgs/Wrench','auv_msgs/Bool6Axis']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,goal,wrench,disable_axis

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(BodyForceReq, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.goal is None:
        self.goal = auv_msgs.msg.GoalDescriptor()
      if self.wrench is None:
        self.wrench = geometry_msgs.msg.Wrench()
      if self.disable_axis is None:
        self.disable_axis = auv_msgs.msg.Bool6Axis()
    else:
      self.header = std_msgs.msg.Header()
      self.goal = auv_msgs.msg.GoalDescriptor()
      self.wrench = geometry_msgs.msg.Wrench()
      self.disable_axis = auv_msgs.msg.Bool6Axis()

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
      _x = self.goal.requester
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I6d6B.pack(_x.goal.id, _x.goal.priority, _x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z, _x.disable_axis.x, _x.disable_axis.y, _x.disable_axis.z, _x.disable_axis.roll, _x.disable_axis.pitch, _x.disable_axis.yaw))
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
      if self.goal is None:
        self.goal = auv_msgs.msg.GoalDescriptor()
      if self.wrench is None:
        self.wrench = geometry_msgs.msg.Wrench()
      if self.disable_axis is None:
        self.disable_axis = auv_msgs.msg.Bool6Axis()
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.requester = str[start:end].decode('utf-8')
      else:
        self.goal.requester = str[start:end]
      _x = self
      start = end
      end += 62
      (_x.goal.id, _x.goal.priority, _x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z, _x.disable_axis.x, _x.disable_axis.y, _x.disable_axis.z, _x.disable_axis.roll, _x.disable_axis.pitch, _x.disable_axis.yaw,) = _struct_2I6d6B.unpack(str[start:end])
      self.disable_axis.x = bool(self.disable_axis.x)
      self.disable_axis.y = bool(self.disable_axis.y)
      self.disable_axis.z = bool(self.disable_axis.z)
      self.disable_axis.roll = bool(self.disable_axis.roll)
      self.disable_axis.pitch = bool(self.disable_axis.pitch)
      self.disable_axis.yaw = bool(self.disable_axis.yaw)
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
      _x = self.goal.requester
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2I6d6B.pack(_x.goal.id, _x.goal.priority, _x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z, _x.disable_axis.x, _x.disable_axis.y, _x.disable_axis.z, _x.disable_axis.roll, _x.disable_axis.pitch, _x.disable_axis.yaw))
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
      if self.goal is None:
        self.goal = auv_msgs.msg.GoalDescriptor()
      if self.wrench is None:
        self.wrench = geometry_msgs.msg.Wrench()
      if self.disable_axis is None:
        self.disable_axis = auv_msgs.msg.Bool6Axis()
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
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.goal.requester = str[start:end].decode('utf-8')
      else:
        self.goal.requester = str[start:end]
      _x = self
      start = end
      end += 62
      (_x.goal.id, _x.goal.priority, _x.wrench.force.x, _x.wrench.force.y, _x.wrench.force.z, _x.wrench.torque.x, _x.wrench.torque.y, _x.wrench.torque.z, _x.disable_axis.x, _x.disable_axis.y, _x.disable_axis.z, _x.disable_axis.roll, _x.disable_axis.pitch, _x.disable_axis.yaw,) = _struct_2I6d6B.unpack(str[start:end])
      self.disable_axis.x = bool(self.disable_axis.x)
      self.disable_axis.y = bool(self.disable_axis.y)
      self.disable_axis.z = bool(self.disable_axis.z)
      self.disable_axis.roll = bool(self.disable_axis.roll)
      self.disable_axis.pitch = bool(self.disable_axis.pitch)
      self.disable_axis.yaw = bool(self.disable_axis.yaw)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_2I6d6B = struct.Struct("<2I6d6B")
