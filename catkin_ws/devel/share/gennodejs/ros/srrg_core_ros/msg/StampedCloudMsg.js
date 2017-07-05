// Auto-generated. Do not edit!

// (in-package srrg_core_ros.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;
let CloudMsg = require('./CloudMsg.js');
let std_msgs = _finder('std_msgs');

//-----------------------------------------------------------

class StampedCloudMsg {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.header = null;
      this.cloud = null;
    }
    else {
      if (initObj.hasOwnProperty('header')) {
        this.header = initObj.header
      }
      else {
        this.header = new std_msgs.msg.Header();
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
    // Serializes a message object of type StampedCloudMsg
    // Serialize message field [header]
    bufferOffset = std_msgs.msg.Header.serialize(obj.header, buffer, bufferOffset);
    // Serialize message field [cloud]
    bufferOffset = CloudMsg.serialize(obj.cloud, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type StampedCloudMsg
    let len;
    let data = new StampedCloudMsg(null);
    // Deserialize message field [header]
    data.header = std_msgs.msg.Header.deserialize(buffer, bufferOffset);
    // Deserialize message field [cloud]
    data.cloud = CloudMsg.deserialize(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += std_msgs.msg.Header.getMessageSize(object.header);
    length += CloudMsg.getMessageSize(object.cloud);
    return length;
  }

  static datatype() {
    // Returns string type for a message object
    return 'srrg_core_ros/StampedCloudMsg';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'dda9aa0382bcc16b522a22ce9cda26e5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    #  cloud with header and frame id
    Header header
    CloudMsg cloud				
    
    ================================================================================
    MSG: std_msgs/Header
    # Standard metadata for higher-level stamped data types.
    # This is generally used to communicate timestamped data 
    # in a particular coordinate frame.
    # 
    # sequence ID: consecutively increasing ID 
    uint32 seq
    #Two-integer timestamp that is expressed as:
    # * stamp.sec: seconds (stamp_secs) since epoch (in Python the variable is called 'secs')
    # * stamp.nsec: nanoseconds since stamp_secs (in Python the variable is called 'nsecs')
    # time-handling sugar is provided by the client library
    time stamp
    #Frame this data is associated with
    # 0: no frame
    # 1: global frame
    string frame_id
    
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
    const resolved = new StampedCloudMsg(null);
    if (msg.header !== undefined) {
      resolved.header = std_msgs.msg.Header.Resolve(msg.header)
    }
    else {
      resolved.header = new std_msgs.msg.Header()
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

module.exports = StampedCloudMsg;
