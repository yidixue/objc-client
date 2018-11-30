# SWGAppApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getVersionUsingGET**](SWGAppApi.md#getversionusingget) | **GET** /app/{type}/getVersion | 查询APP版本信息


# **getVersionUsingGET**
```objc
-(NSURLSessionTask*) getVersionUsingGETWithType: (NSString*) type
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGAppVersionApiResponse* output, NSError* error)) handler;
```

查询APP版本信息

### Example 
```objc

NSString* type = @"type_example"; // APP类型(android、ios)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGAppApi*apiInstance = [[SWGAppApi alloc] init];

// 查询APP版本信息
[apiInstance getVersionUsingGETWithType:type
              loginToken:loginToken
          completionHandler: ^(SWGAppVersionApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAppApi->getVersionUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **type** | **NSString***| APP类型(android、ios) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGAppVersionApiResponse***](SWGAppVersionApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

