# SWGPayApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getPayOrderInfoUsingGET**](SWGPayApi.md#getpayorderinfousingget) | **GET** /pay/{username}/getPayOrderInfo | 获取订单支付信息


# **getPayOrderInfoUsingGET**
```objc
-(NSURLSessionTask*) getPayOrderInfoUsingGETWithUsername: (NSString*) username
    orderId: (NSString*) orderId
    type: (NSNumber*) type
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPayApiResponse* output, NSError* error)) handler;
```

获取订单支付信息

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* orderId = @"orderId_example"; // 订单编号
NSNumber* type = @56; // 支付类型(1微信扫码、2微信APP、3支付宝扫码、4支付宝APP)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPayApi*apiInstance = [[SWGPayApi alloc] init];

// 获取订单支付信息
[apiInstance getPayOrderInfoUsingGETWithUsername:username
              orderId:orderId
              type:type
              loginToken:loginToken
          completionHandler: ^(SWGPayApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPayApi->getPayOrderInfoUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **orderId** | **NSString***| 订单编号 | 
 **type** | **NSNumber***| 支付类型(1微信扫码、2微信APP、3支付宝扫码、4支付宝APP) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPayApiResponse***](SWGPayApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

