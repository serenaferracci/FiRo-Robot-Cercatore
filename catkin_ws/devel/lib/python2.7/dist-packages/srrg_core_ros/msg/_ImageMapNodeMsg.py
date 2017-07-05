# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from srrg_core_ros/ImageMapNodeMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class ImageMapNodeMsg(genpy.Message):
  _md5sum = "e985cff8cfffd7e6dc32c72765456daa"
  _type = "srrg_core_ros/ImageMapNodeMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 id
float64 timestamp
geometry_msgs/Pose transform
int32[] parents
string topic
int32 seq
int32 camera_info
================================================================================
MSG: geometry_msgs/Pose
# A representation of pose in free space, composed of position and orientation. 
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
  __slots__ = ['id','timestamp','transform','parents','topic','seq','camera_info']
  _slot_types = ['int32','float64','geometry_msgs/Pose','int32[]','string','int32','int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       id,timestamp,transform,parents,topic,seq,camera_info

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(ImageMapNodeMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.id is None:
        self.id = 0
      if self.timestamp is None:
        self.timestamp = 0.
      if self.transform is None:
        self.transform = geometry_msgs.msg.Pose()
      if self.parents is None:
        self.parents = []
      if self.topic is None:
        self.topic = ''
      if self.seq is None:
        self.seq = 0
      if self.camera_info is None:
        self.camera_info = 0
    else:
      self.id = 0
      self.timestamp = 0.
      self.transform = geometry_msgs.msg.Pose()
      self.parents = []
      self.topic = ''
      self.seq = 0
      self.camera_info = 0

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
      buff.write(_get_struct_i8d().pack(_x.id, _x.timestamp, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w))
      length = len(self.parents)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.parents))
      _x = self.topic
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2i().pack(_x.seq, _x.camera_info))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.transform is None:
        self.transform = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 68
      (_x.id, _x.timestamp, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w,) = _get_struct_i8d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.parents = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.topic = str[start:end].decode('utf-8')
      else:
        self.topic = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.seq, _x.camera_info,) = _get_struct_2i().unpack(str[start:end])
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
      buff.write(_get_struct_i8d().pack(_x.id, _x.timestamp, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w))
      length = len(self.parents)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.parents.tostring())
      _x = self.topic
      length = len(_x)
      if python3 or type(_x) == unicode:
        _x = _x.encode('utf-8')
        length = len(_x)
      buff.write(struct.pack('<I%ss'%length, length, _x))
      _x = self
      buff.write(_get_struct_2i().pack(_x.seq, _x.camera_info))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.transform is None:
        self.transform = geometry_msgs.msg.Pose()
      end = 0
      _x = self
      start = end
      end += 68
      (_x.id, _x.timestamp, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w,) = _get_struct_i8d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.parents = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      start = end
      end += length
      if python3:
        self.topic = str[start:end].decode('utf-8')
      else:
        self.topic = str[start:end]
      _x = self
      start = end
      end += 8
      (_x.seq, _x.camera_info,) = _get_struct_2i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_2i = None
def _get_struct_2i():
    global _struct_2i
    if _struct_2i is None:
        _struct_2i = struct.Struct("<2i")
    return _struct_2i
_struct_i8d = None
def _get_struct_i8d():
    global _struct_i8d
    if _struct_i8d is None:
        _struct_i8d = struct.Struct("<i8d")
    return _struct_i8d
