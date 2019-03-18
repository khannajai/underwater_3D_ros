"""autogenerated by genpy from auv_msgs/newbvtSonarOutputParam.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import std_msgs.msg

class newbvtSonarOutputParam(genpy.Message):
  _md5sum = "b02b060bb92976afbaf327dd6a53e51c"
  _type = "auv_msgs/newbvtSonarOutputParam"
  _has_header = True #flag to mark the presence of a Header object
  _full_text = """#represents outputs of bvt sonar accompanying the sonar image

#timestamp, FRAME OF REFERENCE!
Header header
#data
float32 originRow
float32 originCol
float32 minRange
float32 maxRange
float32 minFOV
float32 maxFOV
float32 imgWidth
float32 imgHeight

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

"""
  __slots__ = ['header','originRow','originCol','minRange','maxRange','minFOV','maxFOV','imgWidth','imgHeight']
  _slot_types = ['std_msgs/Header','float32','float32','float32','float32','float32','float32','float32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       header,originRow,originCol,minRange,maxRange,minFOV,maxFOV,imgWidth,imgHeight

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(newbvtSonarOutputParam, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.header is None:
        self.header = std_msgs.msg.Header()
      if self.originRow is None:
        self.originRow = 0.
      if self.originCol is None:
        self.originCol = 0.
      if self.minRange is None:
        self.minRange = 0.
      if self.maxRange is None:
        self.maxRange = 0.
      if self.minFOV is None:
        self.minFOV = 0.
      if self.maxFOV is None:
        self.maxFOV = 0.
      if self.imgWidth is None:
        self.imgWidth = 0.
      if self.imgHeight is None:
        self.imgHeight = 0.
    else:
      self.header = std_msgs.msg.Header()
      self.originRow = 0.
      self.originCol = 0.
      self.minRange = 0.
      self.maxRange = 0.
      self.minFOV = 0.
      self.maxFOV = 0.
      self.imgWidth = 0.
      self.imgHeight = 0.

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
      buff.write(_struct_8f.pack(_x.originRow, _x.originCol, _x.minRange, _x.maxRange, _x.minFOV, _x.maxFOV, _x.imgWidth, _x.imgHeight))
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
      end += 32
      (_x.originRow, _x.originCol, _x.minRange, _x.maxRange, _x.minFOV, _x.maxFOV, _x.imgWidth, _x.imgHeight,) = _struct_8f.unpack(str[start:end])
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
      buff.write(_struct_8f.pack(_x.originRow, _x.originCol, _x.minRange, _x.maxRange, _x.minFOV, _x.maxFOV, _x.imgWidth, _x.imgHeight))
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
      end += 32
      (_x.originRow, _x.originCol, _x.minRange, _x.maxRange, _x.minFOV, _x.maxFOV, _x.imgWidth, _x.imgHeight,) = _struct_8f.unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_3I = struct.Struct("<3I")
_struct_8f = struct.Struct("<8f")
