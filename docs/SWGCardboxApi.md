# SWGCardboxApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCardsUsingGET**](SWGCardboxApi.md#getcardsusingget) | **GET** /cardbox/{username}/getCards | 获取名片列表
[**handNameCardUsingPOST**](SWGCardboxApi.md#handnamecardusingpost) | **POST** /cardbox/{username}/handNameCard | 投递名片
[**modifyCardLableUsingGET**](SWGCardboxApi.md#modifycardlableusingget) | **GET** /cardbox/{username}/modifyCardLable | 修改名片标签
[**removeUsingDELETE**](SWGCardboxApi.md#removeusingdelete) | **DELETE** /cardbox/{username}/{id} | 删除名片


# **getCardsUsingGET**
```objc
-(NSURLSessionTask*) getCardsUsingGETWithUsername: (NSString*) username
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    keyword: (NSString*) keyword
    clueId: (NSString*) clueId
    lable: (NSString*) lable
    handStatus: (NSNumber*) handStatus
        completionHandler: (void (^)(SWGPageCardApiResponse* output, NSError* error)) handler;
```

获取名片列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* keyword = @"keyword_example"; // 关键字 (optional)
NSString* clueId = @"clueId_example"; // 线索ID (optional)
NSString* lable = @"lable_example"; // 标签(normal普通的、important重要的) (optional)
NSNumber* handStatus = @56; // 投递状态(0未投递、1已投递) (optional)

SWGCardboxApi*apiInstance = [[SWGCardboxApi alloc] init];

// 获取名片列表
[apiInstance getCardsUsingGETWithUsername:username
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              keyword:keyword
              clueId:clueId
              lable:lable
              handStatus:handStatus
          completionHandler: ^(SWGPageCardApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCardboxApi->getCardsUsingGET: %@", error);
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
 **keyword** | **NSString***| 关键字 | [optional] 
 **clueId** | **NSString***| 线索ID | [optional] 
 **lable** | **NSString***| 标签(normal普通的、important重要的) | [optional] 
 **handStatus** | **NSNumber***| 投递状态(0未投递、1已投递) | [optional] 

### Return type

[**SWGPageCardApiResponse***](SWGPageCardApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **handNameCardUsingPOST**
```objc
-(NSURLSessionTask*) handNameCardUsingPOSTWithUsername: (NSString*) username
    createCard: (SWGCreateCard*) createCard
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

投递名片

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGCreateCard* createCard = [[SWGCreateCard alloc] init]; // 投递对象
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCardboxApi*apiInstance = [[SWGCardboxApi alloc] init];

// 投递名片
[apiInstance handNameCardUsingPOSTWithUsername:username
              createCard:createCard
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCardboxApi->handNameCardUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **createCard** | [**SWGCreateCard***](SWGCreateCard.md)| 投递对象 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyCardLableUsingGET**
```objc
-(NSURLSessionTask*) modifyCardLableUsingGETWithUsername: (NSString*) username
    _id: (NSString*) _id
    lable: (NSString*) lable
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

修改名片标签

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* _id = @"_id_example"; // 名片ID
NSString* lable = @"lable_example"; // 标签(normal普通的、important重要的)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCardboxApi*apiInstance = [[SWGCardboxApi alloc] init];

// 修改名片标签
[apiInstance modifyCardLableUsingGETWithUsername:username
              _id:_id
              lable:lable
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCardboxApi->modifyCardLableUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **_id** | **NSString***| 名片ID | 
 **lable** | **NSString***| 标签(normal普通的、important重要的) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUsingDELETE**
```objc
-(NSURLSessionTask*) removeUsingDELETEWithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

删除名片

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* _id = @"_id_example"; // 名片ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCardboxApi*apiInstance = [[SWGCardboxApi alloc] init];

// 删除名片
[apiInstance removeUsingDELETEWithUsername:username
              _id:_id
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCardboxApi->removeUsingDELETE: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **_id** | **NSString***| 名片ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

