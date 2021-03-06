"""autogenerated by genpy from auv_msgs/InterventionSpec.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import auv_msgs.msg
import geometry_msgs.msg
import genpy
import sensor_msgs.msg

class InterventionSpec(genpy.Message):
  _md5sum = "bd8e9cc17d96008b9cd94d4ad8d1c7fa"
  _type = "auv_msgs/InterventionSpec"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# Specification of an intervention operation, containing one or more
# intervention tasks.

# Unique identifier for this intervention specification
string id

# Frame of the camera that captured the image (may be virtual).
string camera_frame

# Timestamp of the image.
time stamp

ImageFeature[] view_feature

# Bounding box of the Target of Interest inside the view.
sensor_msgs/RegionOfInterest roi
float32 roi_rotation

ImageFeature[] object_feature

# Array of task specifications. All tasks must be completed for intervention
# to succeed.
InterventionTaskSpec[] task_spec

================================================================================
MSG: auv_msgs/ImageFeature
# A single feature within a 2D image.

# Position of feature in image (z is unused)
geometry_msgs/Point position

# Array of float32 values describing the feature.
float32[] descriptor

================================================================================
MSG: geometry_msgs/Point
# This contains the position of a point in free space
float64 x
float64 y
float64 z

================================================================================
MSG: sensor_msgs/RegionOfInterest
# This message is used to specify a region of interest within an image.
#
# When used to specify the ROI setting of the camera when the image was
# taken, the height and width fields should either match the height and
# width fields for the associated image; or height = width = 0
# indicates that the full resolution image was captured.

uint32 x_offset  # Leftmost pixel of the ROI
                 # (0 if the ROI includes the left edge of the image)
uint32 y_offset  # Topmost pixel of the ROI
                 # (0 if the ROI includes the top edge of the image)
uint32 height    # Height of ROI
uint32 width     # Width of ROI

# True if a distinct rectified ROI should be calculated from the "raw"
# ROI in this message. Typically this should be False if the full image
# is captured (ROI not used), and True if a subwindow is captured (ROI
# used).
bool do_rectify

================================================================================
MSG: auv_msgs/InterventionTaskSpec
# Specification of the intervention task, given as a task type to perform
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
  __slots__ = ['id','camera_frame','stamp','view_feature','roi','roi_rotation','object_feature','task_spec']
  _slot_types = ['string','string','time','auv_msgs/ImageFeature[]','sensor_msgs/RegionOfInterest','float32','auv_msgs/ImageFeature[]','auv_msgs/InterventionTaskSpec[]']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,camera_frame,stamp,view_feature,roi,roi_rotation,object_feature,task_spec

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(InterventionSpec, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = ''
      if self.camera_frame is None:
        self.camera_frame = ''
      if self.stamp is None:
        self.stamp = genpy.Time()
      if self.view_feature is None:
        self.view_feature = []
      if self.roi is None:
        self.roi = sensor_msgs.msg.RegionOfInterest()
      if self.roi_rotation is None:
        self.roi_rotation = 0.
      if self.object_feature is None:
        self.object_feature = []
      if self.task_spec is None:
        self.task_spec = []
    else:
      self.id = ''
      self.camera_frame = ''
      self.stamp = genpy.Time()
      self.view_feature = []
      self.roi = sensor_msgs.msg.RegionOfInterest()
      self.roi_rotation = 0.
      self.object_feature = []
      self.task_spec = []

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
      _x = self.id
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
      buff.write(_struct_2I.pack(_x.stamp.secs, _x.stamp.nsecs))
      length = len(self.view_feature)
      buff.write(_struct_I.pack(length))
      for val1 in self.view_feature:
        _v1 = val1.position
        _x = _v1
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        length = len(val1.descriptor)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.pack(pattern, *val1.descriptor))
      _x = self
      buff.write(_struct_4IBf.pack(_x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify, _x.roi_rotation))
      length = len(self.object_feature)
      buff.write(_struct_I.pack(length))
      for val1 in self.object_feature:
        _v2 = val1.position
        _x = _v2
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        length = len(val1.descriptor)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(struct.pack(pattern, *val1.descriptor))
      length = len(self.task_spec)
      buff.write(_struct_I.pack(length))
      for val1 in self.task_spec:
        buff.write(_struct_i.pack(val1.task_type))
        length = len(val1.strategy_spec)
        buff.write(_struct_I.pack(length))
        for val2 in val1.strategy_spec:
          _v3 = val2.grasp_frame
          _v4 = _v3.translation
          _x = _v4
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
          _v5 = _v3.rotation
          _x = _v5
          buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
          buff.write(_struct_i.pack(val2.preshape))
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
      if self.view_feature is None:
        self.view_feature = None
      if self.roi is None:
        self.roi = sensor_msgs.msg.RegionOfInterest()
      if self.object_feature is None:
        self.object_feature = None
      if self.task_spec is None:
        self.task_spec = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8')
      else:
        self.id = str[start:end]
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
      end += 8
      (_x.stamp.secs, _x.stamp.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.view_feature = []
      for i in range(0, length):
        val1 = auv_msgs.msg.ImageFeature()
        _v6 = val1.position
        _x = _v6
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.descriptor = struct.unpack(pattern, str[start:end])
        self.view_feature.append(val1)
      _x = self
      start = end
      end += 21
      (_x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify, _x.roi_rotation,) = _struct_4IBf.unpack(str[start:end])
      self.roi.do_rectify = bool(self.roi.do_rectify)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.object_feature = []
      for i in range(0, length):
        val1 = auv_msgs.msg.ImageFeature()
        _v7 = val1.position
        _x = _v7
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.descriptor = struct.unpack(pattern, str[start:end])
        self.object_feature.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.task_spec = []
      for i in range(0, length):
        val1 = auv_msgs.msg.InterventionTaskSpec()
        start = end
        end += 4
        (val1.task_type,) = _struct_i.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.strategy_spec = []
        for i in range(0, length):
          val2 = auv_msgs.msg.InterventionStrategySpec()
          _v8 = val2.grasp_frame
          _v9 = _v8.translation
          _x = _v9
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v10 = _v8.rotation
          _x = _v10
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
          start = end
          end += 4
          (val2.preshape,) = _struct_i.unpack(str[start:end])
          val1.strategy_spec.append(val2)
        self.task_spec.append(val1)
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
      _x = self.id
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
      buff.write(_struct_2I.pack(_x.stamp.secs, _x.stamp.nsecs))
      length = len(self.view_feature)
      buff.write(_struct_I.pack(length))
      for val1 in self.view_feature:
        _v11 = val1.position
        _x = _v11
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        length = len(val1.descriptor)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.descriptor.tostring())
      _x = self
      buff.write(_struct_4IBf.pack(_x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify, _x.roi_rotation))
      length = len(self.object_feature)
      buff.write(_struct_I.pack(length))
      for val1 in self.object_feature:
        _v12 = val1.position
        _x = _v12
        buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
        length = len(val1.descriptor)
        buff.write(_struct_I.pack(length))
        pattern = '<%sf'%length
        buff.write(val1.descriptor.tostring())
      length = len(self.task_spec)
      buff.write(_struct_I.pack(length))
      for val1 in self.task_spec:
        buff.write(_struct_i.pack(val1.task_type))
        length = len(val1.strategy_spec)
        buff.write(_struct_I.pack(length))
        for val2 in val1.strategy_spec:
          _v13 = val2.grasp_frame
          _v14 = _v13.translation
          _x = _v14
          buff.write(_struct_3d.pack(_x.x, _x.y, _x.z))
          _v15 = _v13.rotation
          _x = _v15
          buff.write(_struct_4d.pack(_x.x, _x.y, _x.z, _x.w))
          buff.write(_struct_i.pack(val2.preshape))
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
      if self.view_feature is None:
        self.view_feature = None
      if self.roi is None:
        self.roi = sensor_msgs.msg.RegionOfInterest()
      if self.object_feature is None:
        self.object_feature = None
      if self.task_spec is None:
        self.task_spec = None
      end = 0
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.id = str[start:end].decode('utf-8')
      else:
        self.id = str[start:end]
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
      end += 8
      (_x.stamp.secs, _x.stamp.nsecs,) = _struct_2I.unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.view_feature = []
      for i in range(0, length):
        val1 = auv_msgs.msg.ImageFeature()
        _v16 = val1.position
        _x = _v16
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.descriptor = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.view_feature.append(val1)
      _x = self
      start = end
      end += 21
      (_x.roi.x_offset, _x.roi.y_offset, _x.roi.height, _x.roi.width, _x.roi.do_rectify, _x.roi_rotation,) = _struct_4IBf.unpack(str[start:end])
      self.roi.do_rectify = bool(self.roi.do_rectify)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.object_feature = []
      for i in range(0, length):
        val1 = auv_msgs.msg.ImageFeature()
        _v17 = val1.position
        _x = _v17
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        pattern = '<%sf'%length
        start = end
        end += struct.calcsize(pattern)
        val1.descriptor = numpy.frombuffer(str[start:end], dtype=numpy.float32, count=length)
        self.object_feature.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.task_spec = []
      for i in range(0, length):
        val1 = auv_msgs.msg.InterventionTaskSpec()
        start = end
        end += 4
        (val1.task_type,) = _struct_i.unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        val1.strategy_spec = []
        for i in range(0, length):
          val2 = auv_msgs.msg.InterventionStrategySpec()
          _v18 = val2.grasp_frame
          _v19 = _v18.translation
          _x = _v19
          start = end
          end += 24
          (_x.x, _x.y, _x.z,) = _struct_3d.unpack(str[start:end])
          _v20 = _v18.rotation
          _x = _v20
          start = end
          end += 32
          (_x.x, _x.y, _x.z, _x.w,) = _struct_4d.unpack(str[start:end])
          start = end
          end += 4
          (val2.preshape,) = _struct_i.unpack(str[start:end])
          val1.strategy_spec.append(val2)
        self.task_spec.append(val1)
      self.stamp.canon()
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
_struct_i = struct.Struct("<i")
_struct_4d = struct.Struct("<4d")
_struct_2I = struct.Struct("<2I")
_struct_4IBf = struct.Struct("<4IBf")
_struct_3d = struct.Struct("<3d")
