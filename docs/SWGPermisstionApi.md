# SWGPermisstionApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUsernameByLoginTokenUsingGET**](SWGPermisstionApi.md#getusernamebylogintokenusingget) | **GET** /permisstion/getUsernameByLoginToken | 登录令牌查询用户


# **getUsernameByLoginTokenUsingGET**
```objc
-(NSURLSessionTask*) getUsernameByLoginTokenUsingGETWithLoginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

登录令牌查询用户

### Example 
```objc

NSString* loginToken = @"loginToken_example"; // 登录令牌

SWGPermisstionApi*apiInstance = [[SWGPermisstionApi alloc] init];

// 登录令牌查询用户
[apiInstance getUsernameByLoginTokenUsingGETWithLoginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPermisstionApi->getUsernameByLoginTokenUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginToken** | **NSString***| 登录令牌 | 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

