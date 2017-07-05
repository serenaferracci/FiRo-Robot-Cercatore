// Auto-generated. Do not edit!

// (in-package move_robot.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class moveGoal {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.goal_d = null;
      this.goal_s = null;
    }
    else {
      if (initObj.hasOwnProperty('goal_d')) {
        this.goal_d = initObj.goal_d
      }
      else {
        this.goal_d = 0.0;
      }
      if (initObj.hasOwnProperty('goal_s')) {
        this.goal_s = initObj.goal_s
      }
      else {
        this.goal_s = 0.0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type moveGoal
    // Serialize message field [goal_d]
    bufferOffset = _serializer.float64(obj.goal_d, buffer, bufferOffset);
    // Serialize message field [goal_s]
    bufferOffset = _serializer.float64(obj.goal_s, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type moveGoal
    let len;
    let data = new moveGoal(null);
    // Deserialize message field [goal_d]
    data.goal_d = _deserializer.float64(buffer, bufferOffset);
    // Deserialize message field [goal_s]
    data.goal_s = _deserializer.float64(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 16;
  }

  static datatype() {
    // Returns string type for a message object
    return 'move_robot/moveGoal';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'c0d0d5608172733fa01040bf6dd50f0a';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # ====== DO NOT MODIFY! AUTOGENERATED FROM AN ACTION DEFINITION ======
    #goal definition
    float64 goal_d
    float64 goal_s
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new moveGoal(null);
    if (msg.goal_d !== undefined) {
      resolved.goal_d = msg.goal_d;
    }
    else {
      resolved.goal_d = 0.0
    }

    if (msg.goal_s !== undefined) {
      resolved.goal_s = msg.goal_s;
    }
    else {
      resolved.goal_s = 0.0
    }

    return resolved;
    }
};

module.exports = moveGoal;
