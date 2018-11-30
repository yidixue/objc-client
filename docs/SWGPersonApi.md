# SWGPersonApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**addMyPersonSchoolUsingPOST**](SWGPersonApi.md#addmypersonschoolusingpost) | **POST** /myperson/{username}/addSchool | 新增我的人员学校信息
[**addMyPersonWorkUsingPOST**](SWGPersonApi.md#addmypersonworkusingpost) | **POST** /myperson/{username}/addWork | 新增我的人员学校信息
[**detailUsingGET1**](SWGPersonApi.md#detailusingget1) | **GET** /person/detail | 人员详情
[**getCompanyFormerPersonListUsingGET**](SWGPersonApi.md#getcompanyformerpersonlistusingget) | **GET** /person/getCompanyFormerPersonList | 获取公司前员工人员列表
[**getCompanyPersonListUsingGET**](SWGPersonApi.md#getcompanypersonlistusingget) | **GET** /person/getCompanyPersonList | 获取公司人员列表
[**getMyCompanyFormerPersonListUsingGET**](SWGPersonApi.md#getmycompanyformerpersonlistusingget) | **GET** /myperson/{username}/getCompanyFormerPersonList | 获取我的公司前员工人员列表
[**getMyCompanyPersonListUsingGET**](SWGPersonApi.md#getmycompanypersonlistusingget) | **GET** /myperson/{username}/getCompanyPersonList | 获取我的公司人员列表
[**getMyPersonListByIdsUsingGET**](SWGPersonApi.md#getmypersonlistbyidsusingget) | **GET** /myperson/{username}/getPersonListByIds | 批量查询我的人员
[**getMyPersonSchoolListUsingGET**](SWGPersonApi.md#getmypersonschoollistusingget) | **GET** /myperson/{username}/getSchoolList | 获取我的人员学校列表
[**getMyPersonUsingGET**](SWGPersonApi.md#getmypersonusingget) | **GET** /myperson/{username} | 获取我的人员信息
[**getMyPersonWorkListUsingGET**](SWGPersonApi.md#getmypersonworklistusingget) | **GET** /myperson/{username}/getWorkList | 获取我的人员学校列表
[**getPersonListByIdsUsingGET**](SWGPersonApi.md#getpersonlistbyidsusingget) | **GET** /person/getPersonListByIds | 批量查询人员
[**modifyMyPersonSchoolUsingPUT**](SWGPersonApi.md#modifymypersonschoolusingput) | **PUT** /myperson/{username}/modifySchool | 修改我的人员学校信息
[**modifyMyPersonUsingPUT**](SWGPersonApi.md#modifymypersonusingput) | **PUT** /myperson/{username} | 修改我的人员信息
[**modifyMyPersonWorkUsingPUT**](SWGPersonApi.md#modifymypersonworkusingput) | **PUT** /myperson/{username}/modifyWork | 修改我的人员工作经历
[**mydetailUsingGET1**](SWGPersonApi.md#mydetailusingget1) | **GET** /myperson/{username}/detail | 我的人员详情
[**removeMyPersonSchoolUsingDELETE**](SWGPersonApi.md#removemypersonschoolusingdelete) | **DELETE** /myperson/{username}/removeSchool | 删除我的人员学校
[**removeMyPersonWorkUsingDELETE**](SWGPersonApi.md#removemypersonworkusingdelete) | **DELETE** /myperson/{username}/removeWork | 删除我的人员工作经历


# **addMyPersonSchoolUsingPOST**
```objc
-(NSURLSessionTask*) addMyPersonSchoolUsingPOSTWithUsername: (NSString*) username
    addPersonSchool: (SWGAddPersonSchool*) addPersonSchool
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

新增我的人员学校信息

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGAddPersonSchool* addPersonSchool = [[SWGAddPersonSchool alloc] init]; // 新增内容
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 新增我的人员学校信息
[apiInstance addMyPersonSchoolUsingPOSTWithUsername:username
              addPersonSchool:addPersonSchool
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->addMyPersonSchoolUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **addPersonSchool** | [**SWGAddPersonSchool***](SWGAddPersonSchool.md)| 新增内容 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **addMyPersonWorkUsingPOST**
```objc
-(NSURLSessionTask*) addMyPersonWorkUsingPOSTWithUsername: (NSString*) username
    addPersonWork: (SWGAddPersonWork*) addPersonWork
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

新增我的人员学校信息

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGAddPersonWork* addPersonWork = [[SWGAddPersonWork alloc] init]; // 新增内容
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 新增我的人员学校信息
[apiInstance addMyPersonWorkUsingPOSTWithUsername:username
              addPersonWork:addPersonWork
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->addMyPersonWorkUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **addPersonWork** | [**SWGAddPersonWork***](SWGAddPersonWork.md)| 新增内容 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **detailUsingGET1**
```objc
-(NSURLSessionTask*) detailUsingGET1WithId: (NSString*) _id
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPersonDetailApiResponse* output, NSError* error)) handler;
```

人员详情

### Example 
```objc

NSString* _id = @"_id_example"; // 人员ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 人员详情
[apiInstance detailUsingGET1WithId:_id
              loginToken:loginToken
          completionHandler: ^(SWGPersonDetailApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->detailUsingGET1: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **_id** | **NSString***| 人员ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPersonDetailApiResponse***](SWGPersonDetailApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyFormerPersonListUsingGET**
```objc
-(NSURLSessionTask*) getCompanyFormerPersonListUsingGETWithCompanyId: (NSString*) companyId
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    keyword: (NSString*) keyword
        completionHandler: (void (^)(SWGPagePersonApiResponse* output, NSError* error)) handler;
```

获取公司前员工人员列表

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* keyword = @"keyword_example"; // 关键字 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 获取公司前员工人员列表
[apiInstance getCompanyFormerPersonListUsingGETWithCompanyId:companyId
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              keyword:keyword
          completionHandler: ^(SWGPagePersonApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->getCompanyFormerPersonListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 数量 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **keyword** | **NSString***| 关键字 | [optional] 

### Return type

[**SWGPagePersonApiResponse***](SWGPagePersonApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyPersonListUsingGET**
```objc
-(NSURLSessionTask*) getCompanyPersonListUsingGETWithCompanyId: (NSString*) companyId
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    keyword: (NSString*) keyword
        completionHandler: (void (^)(SWGPagePersonApiResponse* output, NSError* error)) handler;
```

获取公司人员列表

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* keyword = @"keyword_example"; // 关键字 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 获取公司人员列表
[apiInstance getCompanyPersonListUsingGETWithCompanyId:companyId
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              keyword:keyword
          completionHandler: ^(SWGPagePersonApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->getCompanyPersonListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 数量 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **keyword** | **NSString***| 关键字 | [optional] 

### Return type

[**SWGPagePersonApiResponse***](SWGPagePersonApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyCompanyFormerPersonListUsingGET**
```objc
-(NSURLSessionTask*) getMyCompanyFormerPersonListUsingGETWithUsername: (NSString*) username
    companyId: (NSString*) companyId
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    cardboxExist: (NSNumber*) cardboxExist
    keyword: (NSString*) keyword
        completionHandler: (void (^)(SWGPagePersonApiResponse* output, NSError* error)) handler;
```

获取我的公司前员工人员列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* companyId = @"companyId_example"; // 公司ID
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSNumber* cardboxExist = @true; // 名片盒存在 (optional)
NSString* keyword = @"keyword_example"; // 关键字 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 获取我的公司前员工人员列表
[apiInstance getMyCompanyFormerPersonListUsingGETWithUsername:username
              companyId:companyId
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              cardboxExist:cardboxExist
              keyword:keyword
          completionHandler: ^(SWGPagePersonApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->getMyCompanyFormerPersonListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **companyId** | **NSString***| 公司ID | 
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 数量 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **cardboxExist** | **NSNumber***| 名片盒存在 | [optional] 
 **keyword** | **NSString***| 关键字 | [optional] 

### Return type

[**SWGPagePersonApiResponse***](SWGPagePersonApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyCompanyPersonListUsingGET**
```objc
-(NSURLSessionTask*) getMyCompanyPersonListUsingGETWithUsername: (NSString*) username
    companyId: (NSString*) companyId
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    cardboxExist: (NSNumber*) cardboxExist
    keyword: (NSString*) keyword
        completionHandler: (void (^)(SWGPagePersonApiResponse* output, NSError* error)) handler;
```

获取我的公司人员列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* companyId = @"companyId_example"; // 公司ID
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSNumber* cardboxExist = @true; // 名片盒存在 (optional)
NSString* keyword = @"keyword_example"; // 关键字 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 获取我的公司人员列表
[apiInstance getMyCompanyPersonListUsingGETWithUsername:username
              companyId:companyId
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              cardboxExist:cardboxExist
              keyword:keyword
          completionHandler: ^(SWGPagePersonApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->getMyCompanyPersonListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **companyId** | **NSString***| 公司ID | 
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 数量 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **cardboxExist** | **NSNumber***| 名片盒存在 | [optional] 
 **keyword** | **NSString***| 关键字 | [optional] 

### Return type

[**SWGPagePersonApiResponse***](SWGPagePersonApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyPersonListByIdsUsingGET**
```objc
-(NSURLSessionTask*) getMyPersonListByIdsUsingGETWithUsername: (NSString*) username
    ids: (NSString*) ids
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPersonListApiResponse* output, NSError* error)) handler;
```

批量查询我的人员

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* ids = @"ids_example"; // 人员ID(多个ID用逗号分割)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 批量查询我的人员
[apiInstance getMyPersonListByIdsUsingGETWithUsername:username
              ids:ids
              loginToken:loginToken
          completionHandler: ^(SWGPersonListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->getMyPersonListByIdsUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **ids** | **NSString***| 人员ID(多个ID用逗号分割) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPersonListApiResponse***](SWGPersonListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyPersonSchoolListUsingGET**
```objc
-(NSURLSessionTask*) getMyPersonSchoolListUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPersonSchoolListApiResponse* output, NSError* error)) handler;
```

获取我的人员学校列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 获取我的人员学校列表
[apiInstance getMyPersonSchoolListUsingGETWithUsername:username
              loginToken:loginToken
          completionHandler: ^(SWGPersonSchoolListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->getMyPersonSchoolListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPersonSchoolListApiResponse***](SWGPersonSchoolListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyPersonUsingGET**
```objc
-(NSURLSessionTask*) getMyPersonUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPersonApiResponse* output, NSError* error)) handler;
```

获取我的人员信息

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 获取我的人员信息
[apiInstance getMyPersonUsingGETWithUsername:username
              loginToken:loginToken
          completionHandler: ^(SWGPersonApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->getMyPersonUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPersonApiResponse***](SWGPersonApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getMyPersonWorkListUsingGET**
```objc
-(NSURLSessionTask*) getMyPersonWorkListUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPersonWorkListApiResponse* output, NSError* error)) handler;
```

获取我的人员学校列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 获取我的人员学校列表
[apiInstance getMyPersonWorkListUsingGETWithUsername:username
              loginToken:loginToken
          completionHandler: ^(SWGPersonWorkListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->getMyPersonWorkListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPersonWorkListApiResponse***](SWGPersonWorkListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPersonListByIdsUsingGET**
```objc
-(NSURLSessionTask*) getPersonListByIdsUsingGETWithIds: (NSString*) ids
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPersonListApiResponse* output, NSError* error)) handler;
```

批量查询人员

### Example 
```objc

NSString* ids = @"ids_example"; // 人员ID(多个ID用逗号分割)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 批量查询人员
[apiInstance getPersonListByIdsUsingGETWithIds:ids
              loginToken:loginToken
          completionHandler: ^(SWGPersonListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->getPersonListByIdsUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **ids** | **NSString***| 人员ID(多个ID用逗号分割) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPersonListApiResponse***](SWGPersonListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyMyPersonSchoolUsingPUT**
```objc
-(NSURLSessionTask*) modifyMyPersonSchoolUsingPUTWithUsername: (NSString*) username
    modifyPersonSchool: (SWGModifyPersonSchool*) modifyPersonSchool
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

修改我的人员学校信息

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGModifyPersonSchool* modifyPersonSchool = [[SWGModifyPersonSchool alloc] init]; // 修改内容
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 修改我的人员学校信息
[apiInstance modifyMyPersonSchoolUsingPUTWithUsername:username
              modifyPersonSchool:modifyPersonSchool
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->modifyMyPersonSchoolUsingPUT: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **modifyPersonSchool** | [**SWGModifyPersonSchool***](SWGModifyPersonSchool.md)| 修改内容 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyMyPersonUsingPUT**
```objc
-(NSURLSessionTask*) modifyMyPersonUsingPUTWithUsername: (NSString*) username
    body: (SWGModifyPerson*) body
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPersonApiResponse* output, NSError* error)) handler;
```

修改我的人员信息

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGModifyPerson* body = [[SWGModifyPerson alloc] init]; // 修改内容
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 修改我的人员信息
[apiInstance modifyMyPersonUsingPUTWithUsername:username
              body:body
              loginToken:loginToken
          completionHandler: ^(SWGPersonApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->modifyMyPersonUsingPUT: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **body** | [**SWGModifyPerson***](SWGModifyPerson.md)| 修改内容 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPersonApiResponse***](SWGPersonApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyMyPersonWorkUsingPUT**
```objc
-(NSURLSessionTask*) modifyMyPersonWorkUsingPUTWithUsername: (NSString*) username
    modifyPersonWork: (SWGModifyPersonWork*) modifyPersonWork
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

修改我的人员工作经历

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGModifyPersonWork* modifyPersonWork = [[SWGModifyPersonWork alloc] init]; // 修改内容
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 修改我的人员工作经历
[apiInstance modifyMyPersonWorkUsingPUTWithUsername:username
              modifyPersonWork:modifyPersonWork
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->modifyMyPersonWorkUsingPUT: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **modifyPersonWork** | [**SWGModifyPersonWork***](SWGModifyPersonWork.md)| 修改内容 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **mydetailUsingGET1**
```objc
-(NSURLSessionTask*) mydetailUsingGET1WithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPersonDetailApiResponse* output, NSError* error)) handler;
```

我的人员详情

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* _id = @"_id_example"; // 人员ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 我的人员详情
[apiInstance mydetailUsingGET1WithUsername:username
              _id:_id
              loginToken:loginToken
          completionHandler: ^(SWGPersonDetailApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->mydetailUsingGET1: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **_id** | **NSString***| 人员ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPersonDetailApiResponse***](SWGPersonDetailApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeMyPersonSchoolUsingDELETE**
```objc
-(NSURLSessionTask*) removeMyPersonSchoolUsingDELETEWithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

删除我的人员学校

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* _id = @"_id_example"; // 学校ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 删除我的人员学校
[apiInstance removeMyPersonSchoolUsingDELETEWithUsername:username
              _id:_id
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->removeMyPersonSchoolUsingDELETE: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **_id** | **NSString***| 学校ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **removeMyPersonWorkUsingDELETE**
```objc
-(NSURLSessionTask*) removeMyPersonWorkUsingDELETEWithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

删除我的人员工作经历

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* _id = @"_id_example"; // 工作经历ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGPersonApi*apiInstance = [[SWGPersonApi alloc] init];

// 删除我的人员工作经历
[apiInstance removeMyPersonWorkUsingDELETEWithUsername:username
              _id:_id
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGPersonApi->removeMyPersonWorkUsingDELETE: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **_id** | **NSString***| 工作经历ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

