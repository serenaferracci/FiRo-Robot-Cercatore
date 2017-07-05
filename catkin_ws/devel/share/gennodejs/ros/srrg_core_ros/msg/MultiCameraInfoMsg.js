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

class MultiCameraInfoMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.id = null;
      this.offset = null;
      this.topic = null;
      this.frame_id = null;
      this.depth_scale = null;
      this.subcamera_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('id')) {
        this.id = initObj.id
      }
      else {
        this.id = 0;
      }
      if (initObj.hasOwnProperty('offset')) {
        this.offset = initObj.offset
      }
      else {
        this.offset = new geometry_msgs.msg.Pose();
      }
      if (initObj.hasOwnProperty('topic')) {
        this.topic = initObj.topic
      }
      else {
        this.topic = '';
      }
      if (initObj.hasOwnProperty('frame_id')) {
        this.frame_id = initObj.frame_id
      }
      else {
        this.frame_id = '';
      }
      if (initObj.hasOwnProperty('depth_scale')) {
        this.depth_scale = initObj.depth_scale
      }
      else {
        this.depth_scale = 0.0;
      }
      if (initObj.hasOwnProperty('subcamera_ids')) {
        this.subcamera_ids = initObj.subcamera_ids
      }
      else {
        this.subcamera_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type MultiCameraInfoMsg
    // Serialize message field [id]
    bufferOffset = _serializer.int32(obj.id, buffer, bufferOffset);
    // Serialize message field [offset]
    bufferOffset = geometry_msgs.msg.Pose.serialize(obj.offset, buffer, bufferOffset);
    // Serialize message field [topic]
    bufferOffset = _serializer.string(obj.topic, buffer, bufferOffset);
    // Serialize message field [frame_id]
    bufferOffset = _serializer.string(obj.frame_id, buffer, bufferOffset);
    // Serialize message field [depth_scale]
    bufferOffset = _serializer.float32(obj.depth_scale, buffer, bufferOffset);
    // Serialize message field [subcamera_ids]
    bufferOffset = _arraySerializer.int32(obj.subcamera_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type MultiCameraInfoMsg
    let len;
    let data = new MultiCameraInfoMsg(null);
    // Deserialize message field [id]
    data.id = _deserializer.int32(buffer, bufferOffset);
    // Deserialize message field [offset]
    data.offset = geometry_msgs.msg.Pose.deserialize(buffer, bufferOffset);
    // Deserialize message field [topic]
    data.topic = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [frame_id]
    data.frame_id = _deserializer.string(buffer, bufferOffset);
    // Deserialize message field [depth_scale]
    data.depth_scale = _deserializer.float32(buffer, bufferOffset);
    // Deserialize message field [subcamera_ids]
    data.subcamera_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += object.topic.length;
    length += object.frame_id.length;
    length += 4 * object.subcamera_ids.length;
    return length + 76;
  }

  static datatype() {
    // Returns string type for a message object
    return 'srrg_core_ros/MultiCameraInfoMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '59f10adeead6803979a53c6477d0fae4';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 id
    geometry_msgs/Pose offset
    string topic
    string frame_id
    float32 depth_scale
    int32[] subcamera_ids
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
    const resolved = new MultiCameraInfoMsg(null);
    if (msg.id !== undefined) {
      resolved.id = msg.id;
    }
    else {
      resolved.id = 0
    }

    if (msg.offset !== undefined) {
      resolved.offset = geometry_msgs.msg.Pose.Resolve(msg.offset)
    }
    else {
      resolved.offset = new geometry_msgs.msg.Pose()
    }

    if (msg.topic !== undefined) {
      resolved.topic = msg.topic;
    }
    else {
      resolved.topic = ''
    }

    if (msg.frame_id !== undefined) {
      resolved.frame_id = msg.frame_id;
    }
    else {
      resolved.frame_id = ''
    }

    if (msg.depth_scale !== undefined) {
      resolved.depth_scale = msg.depth_scale;
    }
    else {
      resolved.depth_scale = 0.0
    }

    if (msg.subcamera_ids !== undefined) {
      resolved.subcamera_ids = msg.subcamera_ids;
    }
    else {
      resolved.subcamera_ids = []
    }

    return resolved;
    }
};

module.exports = MultiCameraInfoMsg;
