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

class RichPointMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.point = null;
      this.normal = null;
      this.rgb = null;
      this.accumulator = null;
    }
    else {
      if (initObj.hasOwnProperty('point')) {
        this.point = initObj.point
      }
      else {
        this.point = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('normal')) {
        this.normal = initObj.normal
      }
      else {
        this.normal = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('rgb')) {
        this.rgb = initObj.rgb
      }
      else {
        this.rgb = new geometry_msgs.msg.Point32();
      }
      if (initObj.hasOwnProperty('accumulator')) {
        this.accumulator = initObj.accumulator
      }
      else {
        this.accumulator = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type RichPointMsg
    // Serialize message field [point]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.point, buffer, bufferOffset);
    // Serialize message field [normal]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.normal, buffer, bufferOffset);
    // Serialize message field [rgb]
    bufferOffset = geometry_msgs.msg.Point32.serialize(obj.rgb, buffer, bufferOffset);
    // Serialize message field [accumulator]
    bufferOffset = _serializer.float32(obj.accumulator, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type RichPointMsg
    let len;
    let data = new RichPointMsg(null);
    // Deserialize message field [point]
    data.point = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [normal]
    data.normal = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [rgb]
    data.rgb = geometry_msgs.msg.Point32.deserialize(buffer, bufferOffset);
    // Deserialize message field [accumulator]
    data.accumulator = _deserializer.float32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 40;
  }

  static datatype() {
    // Returns string type for a message object
    return 'srrg_core_ros/RichPointMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'fb348908cec5c5b4e77306999cb55d27';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
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
    const resolved = new RichPointMsg(null);
    if (msg.point !== undefined) {
      resolved.point = geometry_msgs.msg.Point32.Resolve(msg.point)
    }
    else {
      resolved.point = new geometry_msgs.msg.Point32()
    }

    if (msg.normal !== undefined) {
      resolved.normal = geometry_msgs.msg.Point32.Resolve(msg.normal)
    }
    else {
      resolved.normal = new geometry_msgs.msg.Point32()
    }

    if (msg.rgb !== undefined) {
      resolved.rgb = geometry_msgs.msg.Point32.Resolve(msg.rgb)
    }
    else {
      resolved.rgb = new geometry_msgs.msg.Point32()
    }

    if (msg.accumulator !== undefined) {
      resolved.accumulator = msg.accumulator;
    }
    else {
      resolved.accumulator = 0.0
    }

    return resolved;
    }
};

module.exports = RichPointMsg;
