// Generated by gencpp from file visualization/PlanNodes.msg
// DO NOT EDIT!


#ifndef VISUALIZATION_MESSAGE_PLANNODES_H
#define VISUALIZATION_MESSAGE_PLANNODES_H

#include <ros/service_traits.h>


#include <visualization/PlanNodesRequest.h>
#include <visualization/PlanNodesResponse.h>


namespace visualization
{

struct PlanNodes
{

typedef PlanNodesRequest Request;
typedef PlanNodesResponse Response;
Request request;
Response response;

typedef Request RequestType;
typedef Response ResponseType;

}; // struct PlanNodes
} // namespace visualization


namespace ros
{
namespace service_traits
{


template<>
struct MD5Sum< ::visualization::PlanNodes > {
  static const char* value()
  {
    return "44e8501b86ff5277c89b9e82d7c4f61a";
  }

  static const char* value(const ::visualization::PlanNodes&) { return value(); }
};

template<>
struct DataType< ::visualization::PlanNodes > {
  static const char* value()
  {
    return "visualization/PlanNodes";
  }

  static const char* value(const ::visualization::PlanNodes&) { return value(); }
};


// service_traits::MD5Sum< ::visualization::PlanNodesRequest> should match 
// service_traits::MD5Sum< ::visualization::PlanNodes > 
template<>
struct MD5Sum< ::visualization::PlanNodesRequest>
{
  static const char* value()
  {
    return MD5Sum< ::visualization::PlanNodes >::value();
  }
  static const char* value(const ::visualization::PlanNodesRequest&)
  {
    return value();
  }
};

// service_traits::DataType< ::visualization::PlanNodesRequest> should match 
// service_traits::DataType< ::visualization::PlanNodes > 
template<>
struct DataType< ::visualization::PlanNodesRequest>
{
  static const char* value()
  {
    return DataType< ::visualization::PlanNodes >::value();
  }
  static const char* value(const ::visualization::PlanNodesRequest&)
  {
    return value();
  }
};

// service_traits::MD5Sum< ::visualization::PlanNodesResponse> should match 
// service_traits::MD5Sum< ::visualization::PlanNodes > 
template<>
struct MD5Sum< ::visualization::PlanNodesResponse>
{
  static const char* value()
  {
    return MD5Sum< ::visualization::PlanNodes >::value();
  }
  static const char* value(const ::visualization::PlanNodesResponse&)
  {
    return value();
  }
};

// service_traits::DataType< ::visualization::PlanNodesResponse> should match 
// service_traits::DataType< ::visualization::PlanNodes > 
template<>
struct DataType< ::visualization::PlanNodesResponse>
{
  static const char* value()
  {
    return DataType< ::visualization::PlanNodes >::value();
  }
  static const char* value(const ::visualization::PlanNodesResponse&)
  {
    return value();
  }
};

} // namespace service_traits
} // namespace ros

#endif // VISUALIZATION_MESSAGE_PLANNODES_H
