# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from srrg_core_ros/LocalMapByIdSrvRequest.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct


class LocalMapByIdSrvRequest(genpy.Message):
  _md5sum = "a556acb0822fb8ff21c1dcc75d156a71"
  _type = "srrg_core_ros/LocalMapByIdSrvRequest"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 local_map_id
"""
  __slots__ = ['local_map_id']
  _slot_types = ['int32']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       local_map_id

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LocalMapByIdSrvRequest, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.local_map_id is None:
        self.local_map_id = 0
    else:
      self.local_map_id = 0

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
      buff.write(_get_struct_i().pack(self.local_map_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      end = 0
      start = end
      end += 4
      (self.local_map_id,) = _get_struct_i().unpack(str[start:end])
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
      buff.write(_get_struct_i().pack(self.local_map_id))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      end = 0
      start = end
      end += 4
      (self.local_map_id,) = _get_struct_i().unpack(str[start:end])
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
# This Python file uses the following encoding: utf-8
"""autogenerated by genpy from srrg_core_ros/LocalMapByIdSrvResponse.msg. Do not edit."""
import sys
python3 = True if sys.hexversion > 0x03000000 else False
import genpy
import struct

import geometry_msgs.msg
import genpy
import srrg_core_ros.msg

class LocalMapByIdSrvResponse(genpy.Message):
  _md5sum = "3c85a5d39698cf98a1f7177d18b7101e"
  _type = "srrg_core_ros/LocalMapByIdSrvResponse"
  _has_header = False #flag to mark the presence of a Header object
  _full_text = """int32 local_map_id
LocalMapMsg local_map

================================================================================
MSG: srrg_core_ros/LocalMapMsg
#cloud with trajectory, id and pose
int32 id
float64 timestamp
geometry_msgs/Pose transform
int32[] parents
int32[] trajectory
TrajectoryNodeMsg[] trajfull
int32[] relations
int32 cloud_id
CloudMsg cloud

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

================================================================================
MSG: srrg_core_ros/TrajectoryNodeMsg
#node of a trajectory
uint32 seq
time stamp
string topic
geometry_msgs/Pose transform

================================================================================
MSG: srrg_core_ros/CloudMsg
#RawCloud msg s simple float32 collection of rich points
RichPointMsg[] points
================================================================================
MSG: srrg_core_ros/RichPointMsg
# rich point message, a point  with normal and confidence
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
  __slots__ = ['local_map_id','local_map']
  _slot_types = ['int32','srrg_core_ros/LocalMapMsg']

  def __init__(self, *args, **kwds):
    """
    Constructor. Any message fields that are implicitly/explicitly
    set to None will be assigned a default value. The recommend
    use is keyword arguments as this is more robust to future message
    changes.  You cannot mix in-order arguments and keyword arguments.

    The available fields are:
       local_map_id,local_map

    :param args: complete set of field values, in .msg order
    :param kwds: use keyword arguments corresponding to message field names
    to set specific fields.
    """
    if args or kwds:
      super(LocalMapByIdSrvResponse, self).__init__(*args, **kwds)
      #message fields cannot be None, assign default values for those that are
      if self.local_map_id is None:
        self.local_map_id = 0
      if self.local_map is None:
        self.local_map = srrg_core_ros.msg.LocalMapMsg()
    else:
      self.local_map_id = 0
      self.local_map = srrg_core_ros.msg.LocalMapMsg()

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
      buff.write(_get_struct_2i8d().pack(_x.local_map_id, _x.local_map.id, _x.local_map.timestamp, _x.local_map.transform.position.x, _x.local_map.transform.position.y, _x.local_map.transform.position.z, _x.local_map.transform.orientation.x, _x.local_map.transform.orientation.y, _x.local_map.transform.orientation.z, _x.local_map.transform.orientation.w))
      length = len(self.local_map.parents)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.local_map.parents))
      length = len(self.local_map.trajectory)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.local_map.trajectory))
      length = len(self.local_map.trajfull)
      buff.write(_struct_I.pack(length))
      for val1 in self.local_map.trajfull:
        buff.write(_get_struct_I().pack(val1.seq))
        _v1 = val1.stamp
        _x = _v1
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = val1.topic
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v2 = val1.transform
        _v3 = _v2.position
        _x = _v3
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v4 = _v2.orientation
        _x = _v4
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      length = len(self.local_map.relations)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(struct.pack(pattern, *self.local_map.relations))
      buff.write(_get_struct_i().pack(self.local_map.cloud_id))
      length = len(self.local_map.cloud.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.local_map.cloud.points:
        _v5 = val1.point
        _x = _v5
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        _v6 = val1.normal
        _x = _v6
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        _v7 = val1.rgb
        _x = _v7
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_f().pack(val1.accumulator))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize(self, str):
    """
    unpack serialized message in str into this message instance
    :param str: byte array of serialized message, ``str``
    """
    try:
      if self.local_map is None:
        self.local_map = srrg_core_ros.msg.LocalMapMsg()
      end = 0
      _x = self
      start = end
      end += 72
      (_x.local_map_id, _x.local_map.id, _x.local_map.timestamp, _x.local_map.transform.position.x, _x.local_map.transform.position.y, _x.local_map.transform.position.z, _x.local_map.transform.orientation.x, _x.local_map.transform.orientation.y, _x.local_map.transform.orientation.z, _x.local_map.transform.orientation.w,) = _get_struct_2i8d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.local_map.parents = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.local_map.trajectory = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.local_map.trajfull = []
      for i in range(0, length):
        val1 = srrg_core_ros.msg.TrajectoryNodeMsg()
        start = end
        end += 4
        (val1.seq,) = _get_struct_I().unpack(str[start:end])
        _v8 = val1.stamp
        _x = _v8
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.topic = str[start:end].decode('utf-8')
        else:
          val1.topic = str[start:end]
        _v9 = val1.transform
        _v10 = _v9.position
        _x = _v10
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v11 = _v9.orientation
        _x = _v11
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.local_map.trajfull.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.local_map.relations = struct.unpack(pattern, str[start:end])
      start = end
      end += 4
      (self.local_map.cloud_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.local_map.cloud.points = []
      for i in range(0, length):
        val1 = srrg_core_ros.msg.RichPointMsg()
        _v12 = val1.point
        _x = _v12
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        _v13 = val1.normal
        _x = _v13
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        _v14 = val1.rgb
        _x = _v14
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        start = end
        end += 4
        (val1.accumulator,) = _get_struct_f().unpack(str[start:end])
        self.local_map.cloud.points.append(val1)
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
      buff.write(_get_struct_2i8d().pack(_x.local_map_id, _x.local_map.id, _x.local_map.timestamp, _x.local_map.transform.position.x, _x.local_map.transform.position.y, _x.local_map.transform.position.z, _x.local_map.transform.orientation.x, _x.local_map.transform.orientation.y, _x.local_map.transform.orientation.z, _x.local_map.transform.orientation.w))
      length = len(self.local_map.parents)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.local_map.parents.tostring())
      length = len(self.local_map.trajectory)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.local_map.trajectory.tostring())
      length = len(self.local_map.trajfull)
      buff.write(_struct_I.pack(length))
      for val1 in self.local_map.trajfull:
        buff.write(_get_struct_I().pack(val1.seq))
        _v15 = val1.stamp
        _x = _v15
        buff.write(_get_struct_2I().pack(_x.secs, _x.nsecs))
        _x = val1.topic
        length = len(_x)
        if python3 or type(_x) == unicode:
          _x = _x.encode('utf-8')
          length = len(_x)
        buff.write(struct.pack('<I%ss'%length, length, _x))
        _v16 = val1.transform
        _v17 = _v16.position
        _x = _v17
        buff.write(_get_struct_3d().pack(_x.x, _x.y, _x.z))
        _v18 = _v16.orientation
        _x = _v18
        buff.write(_get_struct_4d().pack(_x.x, _x.y, _x.z, _x.w))
      length = len(self.local_map.relations)
      buff.write(_struct_I.pack(length))
      pattern = '<%si'%length
      buff.write(self.local_map.relations.tostring())
      buff.write(_get_struct_i().pack(self.local_map.cloud_id))
      length = len(self.local_map.cloud.points)
      buff.write(_struct_I.pack(length))
      for val1 in self.local_map.cloud.points:
        _v19 = val1.point
        _x = _v19
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        _v20 = val1.normal
        _x = _v20
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        _v21 = val1.rgb
        _x = _v21
        buff.write(_get_struct_3f().pack(_x.x, _x.y, _x.z))
        buff.write(_get_struct_f().pack(val1.accumulator))
    except struct.error as se: self._check_types(struct.error("%s: '%s' when writing '%s'" % (type(se), str(se), str(locals().get('_x', self)))))
    except TypeError as te: self._check_types(ValueError("%s: '%s' when writing '%s'" % (type(te), str(te), str(locals().get('_x', self)))))

  def deserialize_numpy(self, str, numpy):
    """
    unpack serialized message in str into this message instance using numpy for array types
    :param str: byte array of serialized message, ``str``
    :param numpy: numpy python module
    """
    try:
      if self.local_map is None:
        self.local_map = srrg_core_ros.msg.LocalMapMsg()
      end = 0
      _x = self
      start = end
      end += 72
      (_x.local_map_id, _x.local_map.id, _x.local_map.timestamp, _x.local_map.transform.position.x, _x.local_map.transform.position.y, _x.local_map.transform.position.z, _x.local_map.transform.orientation.x, _x.local_map.transform.orientation.y, _x.local_map.transform.orientation.z, _x.local_map.transform.orientation.w,) = _get_struct_2i8d().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.local_map.parents = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.local_map.trajectory = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.local_map.trajfull = []
      for i in range(0, length):
        val1 = srrg_core_ros.msg.TrajectoryNodeMsg()
        start = end
        end += 4
        (val1.seq,) = _get_struct_I().unpack(str[start:end])
        _v22 = val1.stamp
        _x = _v22
        start = end
        end += 8
        (_x.secs, _x.nsecs,) = _get_struct_2I().unpack(str[start:end])
        start = end
        end += 4
        (length,) = _struct_I.unpack(str[start:end])
        start = end
        end += length
        if python3:
          val1.topic = str[start:end].decode('utf-8')
        else:
          val1.topic = str[start:end]
        _v23 = val1.transform
        _v24 = _v23.position
        _x = _v24
        start = end
        end += 24
        (_x.x, _x.y, _x.z,) = _get_struct_3d().unpack(str[start:end])
        _v25 = _v23.orientation
        _x = _v25
        start = end
        end += 32
        (_x.x, _x.y, _x.z, _x.w,) = _get_struct_4d().unpack(str[start:end])
        self.local_map.trajfull.append(val1)
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      pattern = '<%si'%length
      start = end
      end += struct.calcsize(pattern)
      self.local_map.relations = numpy.frombuffer(str[start:end], dtype=numpy.int32, count=length)
      start = end
      end += 4
      (self.local_map.cloud_id,) = _get_struct_i().unpack(str[start:end])
      start = end
      end += 4
      (length,) = _struct_I.unpack(str[start:end])
      self.local_map.cloud.points = []
      for i in range(0, length):
        val1 = srrg_core_ros.msg.RichPointMsg()
        _v26 = val1.point
        _x = _v26
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        _v27 = val1.normal
        _x = _v27
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        _v28 = val1.rgb
        _x = _v28
        start = end
        end += 12
        (_x.x, _x.y, _x.z,) = _get_struct_3f().unpack(str[start:end])
        start = end
        end += 4
        (val1.accumulator,) = _get_struct_f().unpack(str[start:end])
        self.local_map.cloud.points.append(val1)
      return self
    except struct.error as e:
      raise genpy.DeserializationError(e) #most likely buffer underfill

_struct_I = genpy.struct_I
def _get_struct_I():
    global _struct_I
    return _struct_I
_struct_f = None
def _get_struct_f():
    global _struct_f
    if _struct_f is None:
        _struct_f = struct.Struct("<f")
    return _struct_f
_struct_3f = None
def _get_struct_3f():
    global _struct_3f
    if _struct_3f is None:
        _struct_3f = struct.Struct("<3f")
    return _struct_3f
_struct_2i8d = None
def _get_struct_2i8d():
    global _struct_2i8d
    if _struct_2i8d is None:
        _struct_2i8d = struct.Struct("<2i8d")
    return _struct_2i8d
_struct_i = None
def _get_struct_i():
    global _struct_i
    if _struct_i is None:
        _struct_i = struct.Struct("<i")
    return _struct_i
_struct_4d = None
def _get_struct_4d():
    global _struct_4d
    if _struct_4d is None:
        _struct_4d = struct.Struct("<4d")
    return _struct_4d
_struct_2I = None
def _get_struct_2I():
    global _struct_2I
    if _struct_2I is None:
        _struct_2I = struct.Struct("<2I")
    return _struct_2I
_struct_3d = None
def _get_struct_3d():
    global _struct_3d
    if _struct_3d is None:
        _struct_3d = struct.Struct("<3d")
    return _struct_3d
class LocalMapByIdSrv(object):
  _type          = 'srrg_core_ros/LocalMapByIdSrv'
  _md5sum = '86714e02c2f6d08f328d93e752a3bf37'
  _request_class  = LocalMapByIdSrvRequest
  _response_class = LocalMapByIdSrvResponse
