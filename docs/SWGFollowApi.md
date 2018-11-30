# SWGFollowApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addFollowUsingPOST**](SWGFollowApi.md#addfollowusingpost) | **POST** /follow/{username}/add | 添加关注
[**cancelFollowUsingDELETE**](SWGFollowApi.md#cancelfollowusingdelete) | **DELETE** /follow/{username}/{id} | 取消关注
[**getClueFollowIdsUsingGET**](SWGFollowApi.md#getcluefollowidsusingget) | **GET** /follow/{username}/getClueFollowIds | 查询线索关注ID
[**getCompanyFollowIdsUsingGET**](SWGFollowApi.md#getcompanyfollowidsusingget) | **GET** /follow/{username}/getCompanyFollowIds | 查询企业关注ID
[**getPageListUsingGET**](SWGFollowApi.md#getpagelistusingget) | **GET** /follow/{username}/getPageList | 关注分页列表


# **addFollowUsingPOST**
```objc
-(NSURLSessionTask*) addFollowUsingPOSTWithUsername: (NSString*) username
    addFollow: (SWGAddFollow*) addFollow
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

添加关注

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGAddFollow* addFollow = [[SWGAddFollow alloc] init]; // 订单内容
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGFollowApi*apiInstance = [[SWGFollowApi alloc] init];

// 添加关注
[apiInstance addFollowUsingPOSTWithUsername:username
              addFollow:addFollow
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFollowApi->addFollowUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **addFollow** | [**SWGAddFollow***](SWGAddFollow.md)| 订单内容 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **cancelFollowUsingDELETE**
```objc
-(NSURLSessionTask*) cancelFollowUsingDELETEWithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

取消关注

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* _id = @"_id_example"; // 关注ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGFollowApi*apiInstance = [[SWGFollowApi alloc] init];

// 取消关注
[apiInstance cancelFollowUsingDELETEWithUsername:username
              _id:_id
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFollowApi->cancelFollowUsingDELETE: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **_id** | **NSString***| 关注ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClueFollowIdsUsingGET**
```objc
-(NSURLSessionTask*) getClueFollowIdsUsingGETWithUsername: (NSString*) username
    clueIds: (NSString*) clueIds
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGFollowIdListApiResponse* output, NSError* error)) handler;
```

查询线索关注ID

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* clueIds = @"clueIds_example"; // 线索ID(多个ID逗号分割)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGFollowApi*apiInstance = [[SWGFollowApi alloc] init];

// 查询线索关注ID
[apiInstance getClueFollowIdsUsingGETWithUsername:username
              clueIds:clueIds
              loginToken:loginToken
          completionHandler: ^(SWGFollowIdListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFollowApi->getClueFollowIdsUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **clueIds** | **NSString***| 线索ID(多个ID逗号分割) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGFollowIdListApiResponse***](SWGFollowIdListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyFollowIdsUsingGET**
```objc
-(NSURLSessionTask*) getCompanyFollowIdsUsingGETWithUsername: (NSString*) username
    companyIds: (NSString*) companyIds
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGFollowIdListApiResponse* output, NSError* error)) handler;
```

查询企业关注ID

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* companyIds = @"companyIds_example"; // 企业ID(多个ID逗号分割)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGFollowApi*apiInstance = [[SWGFollowApi alloc] init];

// 查询企业关注ID
[apiInstance getCompanyFollowIdsUsingGETWithUsername:username
              companyIds:companyIds
              loginToken:loginToken
          completionHandler: ^(SWGFollowIdListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFollowApi->getCompanyFollowIdsUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **companyIds** | **NSString***| 企业ID(多个ID逗号分割) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGFollowIdListApiResponse***](SWGFollowIdListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPageListUsingGET**
```objc
-(NSURLSessionTask*) getPageListUsingGETWithUsername: (NSString*) username
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    type: (NSString*) type
        completionHandler: (void (^)(SWGPageFollowApiResponse* output, NSError* error)) handler;
```

关注分页列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 每页条数
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* type = @"type_example"; // 类型(company企业、clue线索) (optional)

SWGFollowApi*apiInstance = [[SWGFollowApi alloc] init];

// 关注分页列表
[apiInstance getPageListUsingGETWithUsername:username
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              type:type
          completionHandler: ^(SWGPageFollowApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGFollowApi->getPageListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 每页条数 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **type** | **NSString***| 类型(company企业、clue线索) | [optional] 

### Return type

[**SWGPageFollowApiResponse***](SWGPageFollowApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

