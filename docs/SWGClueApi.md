# SWGClueApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**complaintUsingPOST**](SWGClueApi.md#complaintusingpost) | **POST** /myclue/{username}/complaint | 线索举报
[**createUsingPOST**](SWGClueApi.md#createusingpost) | **POST** /myclue/{username}/create | 发布线索
[**detailUsingGET**](SWGClueApi.md#detailusingget) | **GET** /clue/detail | 线索详情
[**getClueListByIdsUsingGET**](SWGClueApi.md#getcluelistbyidsusingget) | **GET** /clue/getClueListByIds | 获取线索列表
[**getClueVisitReportUsingGET**](SWGClueApi.md#getcluevisitreportusingget) | **GET** /myclue/{username}/getClueVisitReport | 获取线索访问记录列表
[**getListUsingGET**](SWGClueApi.md#getlistusingget) | **GET** /myclue/{username}/getList | 获取线索列表
[**getMyRecommendsUsingGET**](SWGClueApi.md#getmyrecommendsusingget) | **GET** /myclue/{username}/getRecommends | 获取我的线索推荐列表
[**getProductAutoCompleteUsingGET**](SWGClueApi.md#getproductautocompleteusingget) | **GET** /clue/getProductAutoComplete | 产品搜索下拉提示
[**getRecommendsUsingGET**](SWGClueApi.md#getrecommendsusingget) | **GET** /clue/getRecommends | 获取线索推荐列表
[**getSearchHotWordsUsingGET**](SWGClueApi.md#getsearchhotwordsusingget) | **GET** /clue/getSearchHotWords | 搜索热词列表
[**modifyUsingPOST**](SWGClueApi.md#modifyusingpost) | **POST** /myclue/{username}/modify | 修改线索
[**mydetailUsingGET**](SWGClueApi.md#mydetailusingget) | **GET** /myclue/{username}/detail | 我的线索详情
[**removeUsingDELETE1**](SWGClueApi.md#removeusingdelete1) | **DELETE** /myclue/{username}/{id} | 删除线索
[**searchUsingGET**](SWGClueApi.md#searchusingget) | **GET** /clue/search | 搜索线索


# **complaintUsingPOST**
```objc
-(NSURLSessionTask*) complaintUsingPOSTWithUsername: (NSString*) username
    body: (SWGClueComplaint*) body
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

线索举报

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGClueComplaint* body = [[SWGClueComplaint alloc] init]; // 线索举报对象
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 线索举报
[apiInstance complaintUsingPOSTWithUsername:username
              body:body
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->complaintUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **body** | [**SWGClueComplaint***](SWGClueComplaint.md)| 线索举报对象 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createUsingPOST**
```objc
-(NSURLSessionTask*) createUsingPOSTWithUsername: (NSString*) username
    body: (SWGCreateClue*) body
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

发布线索

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGCreateClue* body = [[SWGCreateClue alloc] init]; // 线索对象
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 发布线索
[apiInstance createUsingPOSTWithUsername:username
              body:body
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->createUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **body** | [**SWGCreateClue***](SWGCreateClue.md)| 线索对象 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detailUsingGET**
```objc
-(NSURLSessionTask*) detailUsingGETWithClueId: (NSString*) clueId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGClueDetailApiResponse* output, NSError* error)) handler;
```

线索详情

### Example 
```objc

NSString* clueId = @"clueId_example"; // 线索ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 线索详情
[apiInstance detailUsingGETWithClueId:clueId
              loginToken:loginToken
          completionHandler: ^(SWGClueDetailApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->detailUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **clueId** | **NSString***| 线索ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGClueDetailApiResponse***](SWGClueDetailApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClueListByIdsUsingGET**
```objc
-(NSURLSessionTask*) getClueListByIdsUsingGETWithIds: (NSString*) ids
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGClueListApiResponse* output, NSError* error)) handler;
```

获取线索列表

### Example 
```objc

NSString* ids = @"ids_example"; // 线索ID数组
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 获取线索列表
[apiInstance getClueListByIdsUsingGETWithIds:ids
              loginToken:loginToken
          completionHandler: ^(SWGClueListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->getClueListByIdsUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **NSString***| 线索ID数组 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGClueListApiResponse***](SWGClueListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getClueVisitReportUsingGET**
```objc
-(NSURLSessionTask*) getClueVisitReportUsingGETWithUsername: (NSString*) username
    clueId: (NSString*) clueId
    timeType: (NSString*) timeType
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGClueVisitReportApiResponse* output, NSError* error)) handler;
```

获取线索访问记录列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* clueId = @"clueId_example"; // 线索ID
NSString* timeType = @"timeType_example"; // 时间类型(day天、week周)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 获取线索访问记录列表
[apiInstance getClueVisitReportUsingGETWithUsername:username
              clueId:clueId
              timeType:timeType
              loginToken:loginToken
          completionHandler: ^(SWGClueVisitReportApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->getClueVisitReportUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **clueId** | **NSString***| 线索ID | 
 **timeType** | **NSString***| 时间类型(day天、week周) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGClueVisitReportApiResponse***](SWGClueVisitReportApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getListUsingGET**
```objc
-(NSURLSessionTask*) getListUsingGETWithUsername: (NSString*) username
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPageClueApiResponse* output, NSError* error)) handler;
```

获取线索列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 获取线索列表
[apiInstance getListUsingGETWithUsername:username
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
          completionHandler: ^(SWGPageClueApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->getListUsingGET: %@", error);
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

### Return type

[**SWGPageClueApiResponse***](SWGPageClueApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyRecommendsUsingGET**
```objc
-(NSURLSessionTask*) getMyRecommendsUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGClueRecommendApiResponse* output, NSError* error)) handler;
```

获取我的线索推荐列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 获取我的线索推荐列表
[apiInstance getMyRecommendsUsingGETWithUsername:username
              loginToken:loginToken
          completionHandler: ^(SWGClueRecommendApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->getMyRecommendsUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGClueRecommendApiResponse***](SWGClueRecommendApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductAutoCompleteUsingGET**
```objc
-(NSURLSessionTask*) getProductAutoCompleteUsingGETWithName: (NSString*) name
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyAutoCompleteApiResponse* output, NSError* error)) handler;
```

产品搜索下拉提示

### Example 
```objc

NSString* name = @"name_example"; // 产品名称
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 产品搜索下拉提示
[apiInstance getProductAutoCompleteUsingGETWithName:name
              loginToken:loginToken
          completionHandler: ^(SWGCompanyAutoCompleteApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->getProductAutoCompleteUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| 产品名称 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyAutoCompleteApiResponse***](SWGCompanyAutoCompleteApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecommendsUsingGET**
```objc
-(NSURLSessionTask*) getRecommendsUsingGETWithLoginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGClueRecommendApiResponse* output, NSError* error)) handler;
```

获取线索推荐列表

### Example 
```objc

NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 获取线索推荐列表
[apiInstance getRecommendsUsingGETWithLoginToken:loginToken
          completionHandler: ^(SWGClueRecommendApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->getRecommendsUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGClueRecommendApiResponse***](SWGClueRecommendApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearchHotWordsUsingGET**
```objc
-(NSURLSessionTask*) getSearchHotWordsUsingGETWithLoginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGSearchHotWordApiResponse* output, NSError* error)) handler;
```

搜索热词列表

### Example 
```objc

NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 搜索热词列表
[apiInstance getSearchHotWordsUsingGETWithLoginToken:loginToken
          completionHandler: ^(SWGSearchHotWordApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->getSearchHotWordsUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGSearchHotWordApiResponse***](SWGSearchHotWordApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyUsingPOST**
```objc
-(NSURLSessionTask*) modifyUsingPOSTWithUsername: (NSString*) username
    body: (SWGModifyClue*) body
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

修改线索

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGModifyClue* body = [[SWGModifyClue alloc] init]; // 线索对象
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 修改线索
[apiInstance modifyUsingPOSTWithUsername:username
              body:body
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->modifyUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **body** | [**SWGModifyClue***](SWGModifyClue.md)| 线索对象 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mydetailUsingGET**
```objc
-(NSURLSessionTask*) mydetailUsingGETWithUsername: (NSString*) username
    clueId: (NSString*) clueId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGClueDetailApiResponse* output, NSError* error)) handler;
```

我的线索详情

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* clueId = @"clueId_example"; // 线索ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 我的线索详情
[apiInstance mydetailUsingGETWithUsername:username
              clueId:clueId
              loginToken:loginToken
          completionHandler: ^(SWGClueDetailApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->mydetailUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **clueId** | **NSString***| 线索ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGClueDetailApiResponse***](SWGClueDetailApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeUsingDELETE1**
```objc
-(NSURLSessionTask*) removeUsingDELETE1WithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

删除线索

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* _id = @"_id_example"; // 线索ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 删除线索
[apiInstance removeUsingDELETE1WithUsername:username
              _id:_id
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->removeUsingDELETE1: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **_id** | **NSString***| 线索ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchUsingGET**
```objc
-(NSURLSessionTask*) searchUsingGETWithPageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    type: (NSString*) type
    name: (NSString*) name
    identityAuthStatus: (NSString*) identityAuthStatus
    zoneCode: (NSString*) zoneCode
    companyId: (NSString*) companyId
        completionHandler: (void (^)(SWGPageClueApiResponse* output, NSError* error)) handler;
```

搜索线索

### Example 
```objc

NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* type = @"type_example"; // 线索类型 (optional)
NSString* name = @"name_example"; // 线索名称 (optional)
NSString* identityAuthStatus = @"identityAuthStatus_example"; // 认证状态 (optional)
NSString* zoneCode = @"zoneCode_example"; // 地区代码 (optional)
NSString* companyId = @"companyId_example"; // 公司ID (optional)

SWGClueApi*apiInstance = [[SWGClueApi alloc] init];

// 搜索线索
[apiInstance searchUsingGETWithPageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              type:type
              name:name
              identityAuthStatus:identityAuthStatus
              zoneCode:zoneCode
              companyId:companyId
          completionHandler: ^(SWGPageClueApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGClueApi->searchUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 数量 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **type** | **NSString***| 线索类型 | [optional] 
 **name** | **NSString***| 线索名称 | [optional] 
 **identityAuthStatus** | **NSString***| 认证状态 | [optional] 
 **zoneCode** | **NSString***| 地区代码 | [optional] 
 **companyId** | **NSString***| 公司ID | [optional] 

### Return type

[**SWGPageClueApiResponse***](SWGPageClueApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

