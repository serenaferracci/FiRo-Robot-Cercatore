# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from srrg_core_ros/MapNodeUpdateMsg.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg

class MapNodeUpdateMsg(genpy.Message):
  _md5sum = "eb2be7510cb456fa24aa7a97c30dafbc"
  _type = "srrg_core_ros/MapNodeUpdateMsg"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 node_id
geometry_msgs/Pose transform

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
  __slots__ = ['node_id','transform']
  _slot_types = ['int32','geometry_msgs/Pose']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       node_id,transform

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(MapNodeUpdateMsg, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.node_id is None:
        self.node_id = 0
      if self.transform is None:
        self.transform = geometry_msgs.msg.Pose()
    else:
      self.node_id = 0
      self.transform = geometry_msgs.msg.Pose()

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
      buff.write(_get_struct_i7d().pack(_x.node_id, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w))
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
      end += 60
      (_x.node_id, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w,) = _get_struct_i7d().unpack(str[start:end])
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
      buff.write(_get_struct_i7d().pack(_x.node_id, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w))
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
      end += 60
      (_x.node_id, _x.transform.position.x, _x.transform.position.y, _x.transform.position.z, _x.transform.orientation.x, _x.transform.orientation.y, _x.transform.orientation.z, _x.transform.orientation.w,) = _get_struct_i7d().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i7d = None
def _get_struct_i7d():
    global _struct_i7d
    if _struct_i7d is None:
        _struct_i7d = struct.Struct("<i7d")
    return _struct_i7d
