// Auto-generated. Do not edit!

// (in-package srrg_core_ros.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

let LocalMapMsg = require('../msg/LocalMapMsg.js');

//-----------------------------------------------------------

class LocalMapByIdSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.local_map_id = null;
    }
    else {
      if (initObj.hasOwnProperty('local_map_id')) {
        this.local_map_id = initObj.local_map_id
      }
      else {
        this.local_map_id = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalMapByIdSrvRequest
    // Serialize message field [local_map_id]
    bufferOffset = _serializer.int32(obj.local_map_id, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalMapByIdSrvRequest
    let len;
    let data = new LocalMapByIdSrvRequest(null);
    // Deserialize message field [local_map_id]
    data.local_map_id = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srrg_core_ros/LocalMapByIdSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a556acb0822fb8ff21c1dcc75d156a71';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 local_map_id
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalMapByIdSrvRequest(null);
    if (msg.local_map_id !== undefined) {
      resolved.local_map_id = msg.local_map_id;
    }
    else {
      resolved.local_map_id = 0
    }

    return resolved;
    }
};

class LocalMapByIdSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.local_map_id = null;
      this.local_map = null;
    }
    else {
      if (initObj.hasOwnProperty('local_map_id')) {
        this.local_map_id = initObj.local_map_id
      }
      else {
        this.local_map_id = 0;
      }
      if (initObj.hasOwnProperty('local_map')) {
        this.local_map = initObj.local_map
      }
      else {
        this.local_map = new LocalMapMsg();
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type LocalMapByIdSrvResponse
    // Serialize message field [local_map_id]
    bufferOffset = _serializer.int32(obj.local_map_id, buffer, bufferOffset);
    // Serialize message field [local_map]
    bufferOffset = LocalMapMsg.serialize(obj.local_map, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type LocalMapByIdSrvResponse
    let len;
    let data = new LocalMapByIdSrvResponse(null);
    // Deserialize message field [local_map_id]
    data.local_map_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [local_map]
    data.local_map = LocalMapMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += LocalMapMsg.getMessageSize(object.local_map);
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srrg_core_ros/LocalMapByIdSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '3c85a5d39698cf98a1f7177d18b7101e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 local_map_id
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
    float32 z
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new LocalMapByIdSrvResponse(null);
    if (msg.local_map_id !== undefined) {
      resolved.local_map_id = msg.local_map_id;
    }
    else {
      resolved.local_map_id = 0
    }

    if (msg.local_map !== undefined) {
      resolved.local_map = LocalMapMsg.Resolve(msg.local_map)
    }
    else {
      resolved.local_map = new LocalMapMsg()
    }

    return resolved;
    }
};

module.exports = {
  Request: LocalMapByIdSrvRequest,
  Response: LocalMapByIdSrvResponse,
  md5sum() { return '86714e02c2f6d08f328d93e752a3bf37'; },
  datatype() { return 'srrg_core_ros/LocalMapByIdSrv'; }
};
