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


//-----------------------------------------------------------

class IdsSrvRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IdsSrvRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IdsSrvRequest
    let len;
    let data = new IdsSrvRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srrg_core_ros/IdsSrvRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IdsSrvRequest(null);
    return resolved;
    }
};

class IdsSrvResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.local_map_ids = null;
    }
    else {
      if (initObj.hasOwnProperty('local_map_ids')) {
        this.local_map_ids = initObj.local_map_ids
      }
      else {
        this.local_map_ids = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type IdsSrvResponse
    // Serialize message field [local_map_ids]
    bufferOffset = _arraySerializer.int32(obj.local_map_ids, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type IdsSrvResponse
    let len;
    let data = new IdsSrvResponse(null);
    // Deserialize message field [local_map_ids]
    data.local_map_ids = _arrayDeserializer.int32(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    length += 4 * object.local_map_ids.length;
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'srrg_core_ros/IdsSrvResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'a8cde7006a101b5bad3531b015ef87fb';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32[] local_map_ids
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new IdsSrvResponse(null);
    if (msg.local_map_ids !== undefined) {
      resolved.local_map_ids = msg.local_map_ids;
    }
    else {
      resolved.local_map_ids = []
    }

    return resolved;
    }
};

module.exports = {
  Request: IdsSrvRequest,
  Response: IdsSrvResponse,
  md5sum() { return 'a8cde7006a101b5bad3531b015ef87fb'; },
  datatype() { return 'srrg_core_ros/IdsSrv'; }
};
