// Auto-generated. Do not edit!

// (in-package srrg_core_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let TrajectoryNodeMsg = require('./TrajectoryNodeMsg.js');
let CloudMsg = require('./CloudMsg.js');
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class LocalMapMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.timestamp = null;
      this.transform = null;
      this.parents = null;
      this.trajectory = null;
      this.trajfull = null;
      this.relations = null;
      this.cloud_id = null;
      this.cloud = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('timestamp')) {
        this.timestamp = initObj.timestamp
      }
      else {
        this.timestamp = 0.0;
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('parents')) {
        this.parents = initObj.parents
      }
      else {
        this.parents = [];
      }
      if (initObj.hasOwnProperty('trajectory')) {
        this.trajectory = initObj.trajectory
      }
      else {
        this.trajectory = [];
      }
      if (initObj.hasOwnProperty('trajfull')) {
        this.trajfull = initObj.trajfull
      }
      else {
        this.trajfull = [];
      }
      if (initObj.hasOwnProperty('relations')) {
        this.relations = initObj.relations
      }
      else {
        this.relations = [];
      }
      if (initObj.hasOwnProperty('cloud_id')) {
        this.cloud_id = initObj.cloud_id
      }
      else {
        this.cloud_id = 0;
      }
      if (initObj.hasOwnProperty('cloud')) {
        this.cloud = initObj.cloud
      }
      else {
        this.cloud = new CloudMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalMapMsg
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [parents]
    bufferOffset = _arraySerializer.int32(obj.parents, buffer, bufferOffset, null);
    // Serialize message field [trajectory]
    bufferOffset = _arraySerializer.int32(obj.trajectory, buffer, bufferOffset, null);
    // Serialize message field [trajfull]
    // Serialize the length for message field [trajfull]
    bufferOffset = _serializer.uint32(obj.trajfull.length, buffer, bufferOffset);
    obj.trajfull.forEach((val) => {
      bufferOffset = TrajectoryNodeMsg.serialize(val, buffer, bufferOffset);
    });
    // Serialize message field [relations]
    bufferOffset = _arraySerializer.int32(obj.relations, buffer, bufferOffset, null);
    // Serialize message field [cloud_id]
    bufferOffset = _serializer.int32(obj.cloud_id, buffer, bufferOffset);
    // Serialize message field [cloud]
    bufferOffset = CloudMsg.serialize(obj.cloud, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalMapMsg
    let len;
    let data = new LocalMapMsg(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [parents]
    data.parents = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [trajectory]
    data.trajectory = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [trajfull]
    // Deserialize array length for message field [trajfull]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.trajfull = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.trajfull[i] = TrajectoryNodeMsg.deserialize(buffer, bufferOffset)
    }
    // Deserialize message field [relations]
    data.relations = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [cloud_id]
    data.cloud_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [cloud]
    data.cloud = CloudMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.parents.length;
    length += 4 * object.trajectory.length;
    object.trajfull.forEach((val) => {
      length += TrajectoryNodeMsg.getMessageSize(val);
    });
    length += 4 * object.relations.length;
    length += CloudMsg.getMessageSize(object.cloud);
    return length + 88;
  }

  static datatype() {
    // Returns string type for a message object
    return 'srrg_core_ros/LocalMapMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7bc12ac363b3ff95c3f4c0b85fdf820b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalMapMsg(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.timestamp !== undefined) {
      resolved.timestamp = msg.timestamp;
    }
    else {
      resolved.timestamp = 0.0
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Pose.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Pose()
    }

    if (msg.parents !== undefined) {
      resolved.parents = msg.parents;
    }
    else {
      resolved.parents = []
    }

    if (msg.trajectory !== undefined) {
      resolved.trajectory = msg.trajectory;
    }
    else {
      resolved.trajectory = []
    }

    if (msg.trajfull !== undefined) {
      resolved.trajfull = new Array(msg.trajfull.length);
      for (let i = 0; i < resolved.trajfull.length; ++i) {
        resolved.trajfull[i] = TrajectoryNodeMsg.Resolve(msg.trajfull[i]);
      }
    }
    else {
      resolved.trajfull = []
    }

    if (msg.relations !== undefined) {
      resolved.relations = msg.relations;
    }
    else {
      resolved.relations = []
    }

    if (msg.cloud_id !== undefined) {
      resolved.cloud_id = msg.cloud_id;
    }
    else {
      resolved.cloud_id = 0
    }

    if (msg.cloud !== undefined) {
      resolved.cloud = CloudMsg.Resolve(msg.cloud)
    }
    else {
      resolved.cloud = new CloudMsg()
    }

    return resolved;
    }
};

module.exports = LocalMapMsg;
