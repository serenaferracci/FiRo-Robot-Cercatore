// Auto-generated. Do not edit!

// (in-package srrg_core_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let geometry_msgs = _finder('geometry_msgs');

//-----------------------------------------------------------

class MapNodeMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.timestamp = null;
      this.transform = null;
      this.parents = null;
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
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MapNodeMsg
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [parents]
    bufferOffset = _arraySerializer.int32(obj.parents, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MapNodeMsg
    let len;
    let data = new MapNodeMsg(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [parents]
    data.parents = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.parents.length;
    return length + 72;
  }

  static datatype() {
    // Returns string type for a message object
    return 'srrg_core_ros/MapNodeMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b4dfc7503338e0289ba1dfed1cad276b';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    float64 timestamp
    geometry_msgs/Pose transform
    int32[] parents
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
    const resolved = new MapNodeMsg(null);
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

    return resolved;
    }
};

module.exports = MapNodeMsg;
