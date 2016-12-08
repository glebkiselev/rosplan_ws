// Auto-generated. Do not edit!

// (in-package visualization.srv)


"use strict";

let _serializer = require('../base_serialize.js');
let _deserializer = require('../base_deserialize.js');
let _finder = require('../find.js');

//-----------------------------------------------------------


//-----------------------------------------------------------

class PlanNodesRequest {
  constructor() {
    this.nodes = '';
    this.solution = '';
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type PlanNodesRequest
    // Serialize message field [nodes]
    bufferInfo = _serializer.string(obj.nodes, bufferInfo);
    // Serialize message field [solution]
    bufferInfo = _serializer.string(obj.solution, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type PlanNodesRequest
    let tmp;
    let len;
    let data = new PlanNodesRequest();
    // Deserialize message field [nodes]
    tmp = _deserializer.string(buffer);
    data.nodes = tmp.data;
    buffer = tmp.buffer;
    // Deserialize message field [solution]
    tmp = _deserializer.string(buffer);
    data.solution = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'visualization/PlanNodesRequest';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return '7df653d1b1362ece68e40d75369740b5';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    string nodes
    string solution
    
    `;
  }

};

class PlanNodesResponse {
  constructor() {
    this.sum = 0;
  }

  static serialize(obj, bufferInfo) {
    // Serializes a message object of type PlanNodesResponse
    // Serialize message field [sum]
    bufferInfo = _serializer.int64(obj.sum, bufferInfo);
    return bufferInfo;
  }

  static deserialize(buffer) {
    //deserializes a message object of type PlanNodesResponse
    let tmp;
    let len;
    let data = new PlanNodesResponse();
    // Deserialize message field [sum]
    tmp = _deserializer.int64(buffer);
    data.sum = tmp.data;
    buffer = tmp.buffer;
    return {
      data: data,
      buffer: buffer
    }
  }

  static datatype() {
    // Returns string type for a service object
    return 'visualization/PlanNodesResponse';
  }

  static md5sum() {
    //Returns md5sum for a message object
    return 'b88405221c77b1878a3cbbfff53428d7';
  }

  static messageDefinition() {
    // Returns full string definition for message
    return `
    int64 sum
    
    
    
    
    `;
  }

};

module.exports = {
  Request: PlanNodesRequest,
  Response: PlanNodesResponse
};
