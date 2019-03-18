"""autogenerated by genpy from auv_msgs/LocaliseInMosaicFeedback.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import genpy

class LocaliseInMosaicFeedback(genpy.Message):
  _md5sum = "b7bdc09431e6b44fddff0b521b94cbb5"
  _type = "auv_msgs/LocaliseInMosaicFeedback"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======

# Image ID repeated from request
string view_image_id

# Frame of the camera used to localise.
string camera_frame

# Timestamp of the camera image used.
time stamp

# True if view is identified.
bool identified

# Pose is specified in view image frame.
geometry_msgs/PoseWithCovariance vehicle_relative_to_view


================================================================================
MSG: geometry_msgs/PoseWithCovariance
# This represents a pose in free space with uncertainty.

Pose pose

# Row-major representation of the 6x6 covariance matrix
# The orientation parameters use a fixed-axis representation.
# In order, the parameters are:
# (x, y, z, rotation about X axis, rotation about Y axis, rotation about Z axis)
float64[36] covariance

================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of postion and orientation. 
Point position
Quaternion orientation

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
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
  __slots__ = ['view_image_id','camera_frame','stamp','identified','vehicle_relative_to_view']
  _slot_types = ['string','string','time','bool','geometry_msgs/PoseWithCovariance']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       view_image_id,camera_frame,stamp,identified,vehicle_relative_to_view

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LocaliseInMosaicFeedback, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.view_image_id is None:
        self.view_image_id = ''
      if self.camera_frame is None:
        self.camera_frame = ''
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.identified is None:
        self.identified = False
      if self.vehicle_relative_to_view is None:
        self.vehicle_relative_to_view = geometry_msgs.msg.PoseWithCovariance()
    else:
      self.view_image_id = ''
      self.camera_frame = ''
      self.stamp = genpy.Time()
      self.identified = False
      self.vehicle_relative_to_view = geometry_msgs.msg.PoseWithCovariance()

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
      _x = self.view_image_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.camera_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2IB7d.pack(_x.stamp.secs, _x.stamp.nsecs, _x.identified, _x.vehicle_relative_to_view.pose.position.x, _x.vehicle_relative_to_view.pose.position.y, _x.vehicle_relative_to_view.pose.position.z, _x.vehicle_relative_to_view.pose.orientation.x, _x.vehicle_relative_to_view.pose.orientation.y, _x.vehicle_relative_to_view.pose.orientation.z, _x.vehicle_relative_to_view.pose.orientation.w))
      buff.write(_struct_36d.pack(*self.vehicle_relative_to_view.covariance))
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.vehicle_relative_to_view is None:
        self.vehicle_relative_to_view = geometry_msgs.msg.PoseWithCovariance()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.view_image_id = str[start:end].decode('utf-8')
      else:
        self.view_image_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.camera_frame = str[start:end].decode('utf-8')
      else:
        self.camera_frame = str[start:end]
      _x = self
      start = end
      end += 65
      (_x.stamp.secs, _x.stamp.nsecs, _x.identified, _x.vehicle_relative_to_view.pose.position.x, _x.vehicle_relative_to_view.pose.position.y, _x.vehicle_relative_to_view.pose.position.z, _x.vehicle_relative_to_view.pose.orientation.x, _x.vehicle_relative_to_view.pose.orientation.y, _x.vehicle_relative_to_view.pose.orientation.z, _x.vehicle_relative_to_view.pose.orientation.w,) = _struct_2IB7d.unpack(str[start:end])
      self.identified = bool(self.identified)
      start = end
      end += 288
      self.vehicle_relative_to_view.covariance = _struct_36d.unpack(str[start:end])
      self.stamp.canon()
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
      _x = self.view_image_id
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self.camera_frame
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_struct_2IB7d.pack(_x.stamp.secs, _x.stamp.nsecs, _x.identified, _x.vehicle_relative_to_view.pose.position.x, _x.vehicle_relative_to_view.pose.position.y, _x.vehicle_relative_to_view.pose.position.z, _x.vehicle_relative_to_view.pose.orientation.x, _x.vehicle_relative_to_view.pose.orientation.y, _x.vehicle_relative_to_view.pose.orientation.z, _x.vehicle_relative_to_view.pose.orientation.w))
      buff.write(self.vehicle_relative_to_view.covariance.tostring())
    except struct.error as se: self._check_types(se)
    except TypeError as te: self._check_types(te)

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.vehicle_relative_to_view is None:
        self.vehicle_relative_to_view = geometry_msgs.msg.PoseWithCovariance()
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.view_image_id = str[start:end].decode('utf-8')
      else:
        self.view_image_id = str[start:end]
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.camera_frame = str[start:end].decode('utf-8')
      else:
        self.camera_frame = str[start:end]
      _x = self
      start = end
      end += 65
      (_x.stamp.secs, _x.stamp.nsecs, _x.identified, _x.vehicle_relative_to_view.pose.position.x, _x.vehicle_relative_to_view.pose.position.y, _x.vehicle_relative_to_view.pose.position.z, _x.vehicle_relative_to_view.pose.orientation.x, _x.vehicle_relative_to_view.pose.orientation.y, _x.vehicle_relative_to_view.pose.orientation.z, _x.vehicle_relative_to_view.pose.orientation.w,) = _struct_2IB7d.unpack(str[start:end])
      self.identified = bool(self.identified)
      start = end
      end += 288
      self.vehicle_relative_to_view.covariance = numpy.frombuffer(str[start:end], dtype=numpy.float64, count=36)
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_36d = struct.Struct("<36d")
_struct_2IB7d = struct.Struct("<2IB7d")
