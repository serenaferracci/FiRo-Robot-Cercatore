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

class ImageMapNodeMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.timestamp = null;
      this.transform = null;
      this.parents = null;
      this.topic = null;
      this.seq = null;
      this.camera_info = null;
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
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
      if (initObj.hasOwnProperty('seq')) {
        this.seq = initObj.seq
      }
      else {
        this.seq = 0;
      }
      if (initObj.hasOwnProperty('camera_info')) {
        this.camera_info = initObj.camera_info
      }
      else {
        this.camera_info = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ImageMapNodeMsg
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [timestamp]
    bufferOffset = _serializer.float64(obj.timestamp, buffer, bufferOffset);
    // Serialize message field [transform]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.transform, buffer, bufferOffset);
    // Serialize message field [parents]
    bufferOffset = _arraySerializer.int32(obj.parents, buffer, bufferOffset, null);
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    // Serialize message field [seq]
    bufferOffset = _serializer.int32(obj.seq, buffer, bufferOffset);
    // Serialize message field [camera_info]
    bufferOffset = _serializer.int32(obj.camera_info, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ImageMapNodeMsg
    let len;
    let data = new ImageMapNodeMsg(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [timestamp]
    data.timestamp = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [transform]
    data.transform = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [parents]
    data.parents = _arrayDeserializer.int32(buffer, bufferOffset, null)
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [seq]
    data.seq = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [camera_info]
    data.camera_info = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.parents.length;
    length += object.topic.length;
    return length + 84;
  }

  static datatype() {
    // Returns string type for a message object
    return 'srrg_core_ros/ImageMapNodeMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'e985cff8cfffd7e6dc32c72765456daa';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
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
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ImageMapNodeMsg(null);
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

    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    if (msg.seq !== undefined) {
      resolved.seq = msg.seq;
    }
    else {
      resolved.seq = 0
    }

    if (msg.camera_info !== undefined) {
      resolved.camera_info = msg.camera_info;
    }
    else {
      resolved.camera_info = 0
    }

    return resolved;
    }
};

module.exports = ImageMapNodeMsg;
