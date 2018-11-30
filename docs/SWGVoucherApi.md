# SWGVoucherApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAvailableVoucherGroupsUsingGET**](SWGVoucherApi.md#getavailablevouchergroupsusingget) | **GET** /voucher/{username}/getAvailableVoucherGroups | 抵用券组列表
[**getAvailableVouchersUsingGET**](SWGVoucherApi.md#getavailablevouchersusingget) | **GET** /voucher/{username}/getAvailableVouchers | 抵用券列表


# **getAvailableVoucherGroupsUsingGET**
```objc
-(NSURLSessionTask*) getAvailableVoucherGroupsUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGVoucherGroupListApiResponse* output, NSError* error)) handler;
```

抵用券组列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGVoucherApi*apiInstance = [[SWGVoucherApi alloc] init];

// 抵用券组列表
[apiInstance getAvailableVoucherGroupsUsingGETWithUsername:username
              loginToken:loginToken
          completionHandler: ^(SWGVoucherGroupListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVoucherApi->getAvailableVoucherGroupsUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGVoucherGroupListApiResponse***](SWGVoucherGroupListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getAvailableVouchersUsingGET**
```objc
-(NSURLSessionTask*) getAvailableVouchersUsingGETWithUsername: (NSString*) username
    type: (NSString*) type
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGVoucherListApiResponse* output, NSError* error)) handler;
```

抵用券列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* type = @"type_example"; // 类型(1会员  2报告)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGVoucherApi*apiInstance = [[SWGVoucherApi alloc] init];

// 抵用券列表
[apiInstance getAvailableVouchersUsingGETWithUsername:username
              type:type
              loginToken:loginToken
          completionHandler: ^(SWGVoucherListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGVoucherApi->getAvailableVouchersUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **type** | **NSString***| 类型(1会员  2报告) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGVoucherListApiResponse***](SWGVoucherListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

