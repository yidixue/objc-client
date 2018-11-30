# SWGFileApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getSecurityTokenUsingGET**](SWGFileApi.md#getsecuritytokenusingget) | **GET** /file/{username}/getSecurityToken | 获取文件安全令牌


# **getSecurityTokenUsingGET**
```objc
-(NSURLSessionTask*) getSecurityTokenUsingGETWithUsername: (NSString*) username
    filename: (NSString*) filename
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGStsApiResponse* output, NSError* error)) handler;
```

获取文件安全令牌

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* filename = @"filename_example"; // 文件名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGFileApi*apiInstance = [[SWGFileApi alloc] init];

// 获取文件安全令牌
[apiInstance getSecurityTokenUsingGETWithUsername:username
              filename:filename
              loginToken:loginToken
          completionHandler: ^(SWGStsApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFileApi->getSecurityTokenUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **filename** | **NSString***| 文件名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGStsApiResponse***](SWGStsApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

