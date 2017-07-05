// Auto-generated. Do not edit!

// (in-package srrg_core_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let MapNodeUpdateMsg = require('./MapNodeUpdateMsg.js');

//-----------------------------------------------------------

class MapUpdateMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.seq = null;
      this.updates = null;
    }
    else {
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('updates')) {
        this.updates = initObj.updates
      }
      else {
        this.updates = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapUpdateMsg
    // Serialize message field [seq]
    bufferOffset = _serializer.int32(obj.seq, buffer, bufferOffset);
    // Serialize message field [updates]
    // Serialize the length for message field [updates]
    bufferOffset = _serializer.uint32(obj.updates.length, buffer, bufferOffset);
    obj.updates.forEach((val) => {
      bufferOffset = MapNodeUpdateMsg.serialize(val, buffer, bufferOffset);
    });
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapUpdateMsg
    let len;
    let data = new MapUpdateMsg(null);
    // Deserialize message field [seq]
    data.seq = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [updates]
    // Deserialize array length for message field [updates]
    len = _deserializer.uint32(buffer, bufferOffset);
    data.updates = new Array(len);
    for (let i = 0; i < len; ++i) {
      data.updates[i] = MapNodeUpdateMsg.deserialize(buffer, bufferOffset)
    }
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 60 * object.updates.length;
    return length + 8;
  }

  static datatype() {
    // Returns string type for a message object
    return 'srrg_core_ros/MapUpdateMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '9e0d375602fbc50cf3d9837f15efb92a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 seq
    MapNodeUpdateMsg[] updates
    ================================================================================
    MSG: srrg_core_ros/MapNodeUpdateMsg
    int32 node_id
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new MapUpdateMsg(null);
    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.updates !== undefined) {
      resolved.updates = new Array(msg.updates.length);
      for (let i = 0; i < resolved.updates.length; ++i) {
        resolved.updates[i] = MapNodeUpdateMsg.Resolve(msg.updates[i]);
      }
    }
    else {
      resolved.updates = []
    }

    return resolved;
    }
};

module.exports = MapUpdateMsg;
