// Auto-generated. Do not edit!

// (in-package serial_test.msg)


"use strict";

const _serializer = _ros_msg_utils.Serialize;
const _arraySerializer = _serializer.Array;
const _deserializer = _ros_msg_utils.Deserialize;
const _arrayDeserializer = _deserializer.Array;
const _finder = _ros_msg_utils.Find;
const _getByteLength = _ros_msg_utils.getByteLength;

//-----------------------------------------------------------

class velocity {
  constructor(initObj={}) {
    if (initObj === null) {
      // initObj === null is a special case for deserialization where we don't initialize fields
      this.VelocityMotor = null;
    }
    else {
      if (initObj.hasOwnProperty('VelocityMotor')) {
        this.VelocityMotor = initObj.VelocityMotor
      }
      else {
        this.VelocityMotor = 0;
      }
    }
  }

  static serialize(obj, buffer, bufferOffset) {
    // Serializes a message object of type velocity
    // Serialize message field [VelocityMotor]
    bufferOffset = _serializer.int32(obj.VelocityMotor, buffer, bufferOffset);
    return bufferOffset;
  }

  static deserialize(buffer, bufferOffset=[0]) {
    //deserializes a message object of type velocity
    let len;
    let data = new velocity(null);
    // Deserialize message field [VelocityMotor]
    data.VelocityMotor = _deserializer.int32(buffer, bufferOffset);
    return data;
  }

  static getMessageSize(object) {
    return 4;
  }

  static datatype() {
    // Returns string type for a message object
    return 'serial_test/velocity';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '87e9b3f456f7fcb4b57cfde083310f87';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int32 VelocityMotor
    
    `;
  }

  static Resolve(msg) {
    // deep-construct a valid message object instance of whatever was passed in
    if (typeof msg !== 'object' || msg === null) {
      msg = {};
    }
    const resolved = new velocity(null);
    if (msg.VelocityMotor !== undefined) {
      resolved.VelocityMotor = msg.VelocityMotor;
    }
    else {
      resolved.VelocityMotor = 0
    }

    return resolved;
    }
};

module.exports = velocity;
