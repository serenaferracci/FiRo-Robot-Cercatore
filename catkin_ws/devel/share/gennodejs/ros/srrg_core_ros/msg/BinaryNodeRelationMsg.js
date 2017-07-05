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

class BinaryNodeRelationMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.from_id = null;
      this.to_id = null;
      this.parent_id = null;
      this.transform = null;
      this.information_matrix = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('from_id')) {
        this.from_id = initObj.from_id
      }
      else {
        this.from_id = 0;
      }
      if (initObj.hasOwnProperty('to_id')) {
        this.to_id = initObj.to_id
      }
      else {
        this.to_id = 0;
      }
      if (initObj.hasOwnProperty('parent_id')) {
        this.parent_id = initObj.parent_id
      }
      else {
        this.parent_id = 0;
      }
      if (initObj.hasOwnProperty('transform')) {
        this.transform = initObj.transform
      }
      else {
        this.transform = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('information_matrix')) {
        this.information_matrix = initObj.information_matrix
      }
      else {
        this.information_matrix = new Array(36).fill(0);
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type BinaryNodeRelationMsg
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [from_id]
    bufferOffset = _serializer.int32(obj.from_id, buffer, bufferOffset);
    // Serialize message field [to_id]
    bufferOffset = _serializer.int32(obj.to_id, buffer, bufferOffset);
    // Serialize message field [parent_id]
    bufferOffset = _serializer.int32(obj.parent_id, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.transform, buffer, bufferOffset);
    // Check that the constant length array field [information_matrix] has the right length
    if (obj.information_matrix.length !== 36) {
      throw new Error('Unable to serialize array field information_matrix - length must be 36')
    }
    // Serialize message field [information_matrix]
    bufferOffset = _arraySerializer.float32(obj.information_matrix, buffer, bufferOffset, 36);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type BinaryNodeRelationMsg
    let len;
    let data = new BinaryNodeRelationMsg(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [from_id]
    data.from_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [to_id]
    data.to_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [parent_id]
    data.parent_id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [information_matrix]
    data.information_matrix = _arrayDeserializer.float32(buffer, bufferOffset, 36)
    return data;
  }

  static getMessageSize(object) {
    return 216;
  }

  static datatype() {
    // Returns string type for a message object
    return 'srrg_core_ros/BinaryNodeRelationMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c68e53a93d9563d0a4c40ba0ca0c3435';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    int32 from_id
    int32 to_id
    int32 parent_id
    geometry_msgs/Pose transform
    float32[36] information_matrix
    
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
    const resolved = new BinaryNodeRelationMsg(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.from_id !== undefined) {
      resolved.from_id = msg.from_id;
    }
    else {
      resolved.from_id = 0
    }

    if (msg.to_id !== undefined) {
      resolved.to_id = msg.to_id;
    }
    else {
      resolved.to_id = 0
    }

    if (msg.parent_id !== undefined) {
      resolved.parent_id = msg.parent_id;
    }
    else {
      resolved.parent_id = 0
    }

    if (msg.transform !== undefined) {
      resolved.transform = geometry_msgs.msg.Pose.Resolve(msg.transform)
    }
    else {
      resolved.transform = new geometry_msgs.msg.Pose()
    }

    if (msg.information_matrix !== undefined) {
      resolved.information_matrix = msg.information_matrix;
    }
    else {
      resolved.information_matrix = new Array(36).fill(0)
    }

    return resolved;
    }
};

module.exports = BinaryNodeRelationMsg;
