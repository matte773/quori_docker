// Auto-generated. Do not edit!

// (in-package pr2_mechanism_msgs.srv)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------


//-----------------------------------------------------------

class ListControllerTypesRequest {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
    }
    else {
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListControllerTypesRequest
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListControllerTypesRequest
    let len;
    let data = new ListControllerTypesRequest(null);
    return data;
  }

  static getMessageSize(object) {
    return 0;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pr2_mechanism_msgs/ListControllerTypesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'd41d8cd98f00b204e9800998ecf8427e';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    # The ListControllers service returns a list of controller types that are known
    # to pr2_mechanism_control. 
    
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListControllerTypesRequest(null);
    return resolved;
    }
};

class ListControllerTypesResponse {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.types = null;
    }
    else {
      if (initObj.hasOwnProperty('types')) {
        this.types = initObj.types
      }
      else {
        this.types = [];
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type ListControllerTypesResponse
    // Serialize message field [types]
    bufferOffset = _arraySerializer.string(obj.types, buffer, bufferOffset, null);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type ListControllerTypesResponse
    let len;
    let data = new ListControllerTypesResponse(null);
    // Deserialize message field [types]
    data.types = _arrayDeserializer.string(buffer, bufferOffset, null)
    return data;
  }

  static getMessageSize(object) {
    let length = 0;
    object.types.forEach((val) => {
      length += 4 + _getByteLength(val);
    });
    return length + 4;
  }

  static datatype() {
    // Returns string type for a service object
    return 'pr2_mechanism_msgs/ListControllerTypesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '80aee506387f88339842e9a93044c959';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string[] types
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new ListControllerTypesResponse(null);
    if (msg.types !== undefined) {
      resolved.types = msg.types;
    }
    else {
      resolved.types = []
    }

    return resolved;
    }
};

module.exports = {
  Request: ListControllerTypesRequest,
  Response: ListControllerTypesResponse,
  md5sum() { return '80aee506387f88339842e9a93044c959'; },
  datatype() { return 'pr2_mechanism_msgs/ListControllerTypes'; }
};
