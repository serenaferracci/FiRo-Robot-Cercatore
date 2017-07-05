# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from srrg_core_ros/RichPointMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class RichPointMsg(genpy.Message):
  _md5sum = "fb348908cec5c5b4e77306999cb55d27"
  _type = "srrg_core_ros/RichPointMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """# rich point message, a point  with normal and confidence
geometry_msgs/Point32 point
geometry_msgs/Point32 normal
geometry_msgs/Point32 rgb
float32 accumulator

================================================================================
MSG: geometry_msgs/Point32
# This contains the position of a point in free space(with 32 bits of precision).
# It is recommeded to use Point wherever possible instead of Point32.  
# 
# This recommendation is to promote interoperability.  
#
# This message is designed to take up less space when sending
# lots of points at once, as in the case of a PointCloud.  

float32 x
float32 y
float32 z"""
  __slots__ = ['point','normal','rgb','accumulator']
  _slot_types = ['geometry_msgs/Point32','geometry_msgs/Point32','geometry_msgs/Point32','float32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       point,normal,rgb,accumulator

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(RichPointMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.point is None:
        self.point = geometry_msgs.msg.Point32()
      if self.normal is None:
        self.normal = geometry_msgs.msg.Point32()
      if self.rgb is None:
        self.rgb = geometry_msgs.msg.Point32()
      if self.accumulator is None:
        self.accumulator = 0.
    else:
      self.point = geometry_msgs.msg.Point32()
      self.normal = geometry_msgs.msg.Point32()
      self.rgb = geometry_msgs.msg.Point32()
      self.accumulator = 0.

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
      buff.write(_get_struct_10f().pack(_x.point.x, _x.point.y, _x.point.z, _x.normal.x, _x.normal.y, _x.normal.z, _x.rgb.x, _x.rgb.y, _x.rgb.z, _x.accumulator))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.point is None:
        self.point = geometry_msgs.msg.Point32()
      if self.normal is None:
        self.normal = geometry_msgs.msg.Point32()
      if self.rgb is None:
        self.rgb = geometry_msgs.msg.Point32()
      end = 0
      _x = self
      start = end
      end += 40
      (_x.point.x, _x.point.y, _x.point.z, _x.normal.x, _x.normal.y, _x.normal.z, _x.rgb.x, _x.rgb.y, _x.rgb.z, _x.accumulator,) = _get_struct_10f().unpack(str[start:end])
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
      buff.write(_get_struct_10f().pack(_x.point.x, _x.point.y, _x.point.z, _x.normal.x, _x.normal.y, _x.normal.z, _x.rgb.x, _x.rgb.y, _x.rgb.z, _x.accumulator))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.point is None:
        self.point = geometry_msgs.msg.Point32()
      if self.normal is None:
        self.normal = geometry_msgs.msg.Point32()
      if self.rgb is None:
        self.rgb = geometry_msgs.msg.Point32()
      end = 0
      _x = self
      start = end
      end += 40
      (_x.point.x, _x.point.y, _x.point.z, _x.normal.x, _x.normal.y, _x.normal.z, _x.rgb.x, _x.rgb.y, _x.rgb.z, _x.accumulator,) = _get_struct_10f().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_10f = None
def _get_struct_10f():
    global _struct_10f
    if _struct_10f is None:
        _struct_10f = struct.Struct("<10f")
    return _struct_10f
