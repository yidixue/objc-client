# SWGNotifyApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getByIdUsingGET**](SWGNotifyApi.md#getbyidusingget) | **GET** /notify/{username}/{id} | ID查询通知
[**getListUsingGET1**](SWGNotifyApi.md#getlistusingget1) | **GET** /notify/{username}/getList | 获取通知分页列表
[**getUnreadNumUsingGET**](SWGNotifyApi.md#getunreadnumusingget) | **GET** /notify/{username}/getUnreadNum | 获取未读消息数
[**markReadUsingGET**](SWGNotifyApi.md#markreadusingget) | **GET** /notify/{username}/markRead | 标记已读
[**removeUsingDELETE2**](SWGNotifyApi.md#removeusingdelete2) | **DELETE** /notify/{username}/{id} | 移除


# **getByIdUsingGET**
```objc
-(NSURLSessionTask*) getByIdUsingGETWithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGNotifycationApiResponse* output, NSError* error)) handler;
```

ID查询通知

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* _id = @"_id_example"; // 通知ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGNotifyApi*apiInstance = [[SWGNotifyApi alloc] init];

// ID查询通知
[apiInstance getByIdUsingGETWithUsername:username
              _id:_id
              loginToken:loginToken
          completionHandler: ^(SWGNotifycationApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNotifyApi->getByIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **_id** | **NSString***| 通知ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGNotifycationApiResponse***](SWGNotifycationApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListUsingGET1**
```objc
-(NSURLSessionTask*) getListUsingGET1WithUsername: (NSString*) username
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    displayType: (NSString*) displayType
        completionHandler: (void (^)(SWGPageNotifycationApiResponse* output, NSError* error)) handler;
```

获取通知分页列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* displayType = @"displayType_example"; // 显示分类(system系统消息、recommend) (optional)

SWGNotifyApi*apiInstance = [[SWGNotifyApi alloc] init];

// 获取通知分页列表
[apiInstance getListUsingGET1WithUsername:username
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              displayType:displayType
          completionHandler: ^(SWGPageNotifycationApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNotifyApi->getListUsingGET1: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 数量 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **displayType** | **NSString***| 显示分类(system系统消息、recommend) | [optional] 

### Return type

[**SWGPageNotifycationApiResponse***](SWGPageNotifycationApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getUnreadNumUsingGET**
```objc
-(NSURLSessionTask*) getUnreadNumUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

获取未读消息数

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGNotifyApi*apiInstance = [[SWGNotifyApi alloc] init];

// 获取未读消息数
[apiInstance getUnreadNumUsingGETWithUsername:username
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNotifyApi->getUnreadNumUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **markReadUsingGET**
```objc
-(NSURLSessionTask*) markReadUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

标记已读

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGNotifyApi*apiInstance = [[SWGNotifyApi alloc] init];

// 标记已读
[apiInstance markReadUsingGETWithUsername:username
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNotifyApi->markReadUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUsingDELETE2**
```objc
-(NSURLSessionTask*) removeUsingDELETE2WithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

移除

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* _id = @"_id_example"; // 通知ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGNotifyApi*apiInstance = [[SWGNotifyApi alloc] init];

// 移除
[apiInstance removeUsingDELETE2WithUsername:username
              _id:_id
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGNotifyApi->removeUsingDELETE2: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **_id** | **NSString***| 通知ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

