# SWGAuthApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createUsingPOST1**](SWGAuthApi.md#createusingpost1) | **POST** /auth/{username}/create | 提交身份认证


# **createUsingPOST1**
```objc
-(NSURLSessionTask*) createUsingPOST1WithUsername: (NSString*) username
    body: (SWGCreateAuth*) body
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

提交身份认证

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGCreateAuth* body = [[SWGCreateAuth alloc] init]; // 认证对象
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGAuthApi*apiInstance = [[SWGAuthApi alloc] init];

// 提交身份认证
[apiInstance createUsingPOST1WithUsername:username
              body:body
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGAuthApi->createUsingPOST1: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **body** | [**SWGCreateAuth***](SWGCreateAuth.md)| 认证对象 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

