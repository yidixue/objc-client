# SWGRecommendApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAlikeCompanyListUsingGET**](SWGRecommendApi.md#getalikecompanylistusingget) | **GET** /recommend/{username}/getAlikeCompanyList | 获取相似客户列表
[**getBusinessMatchDegreeUsingGET**](SWGRecommendApi.md#getbusinessmatchdegreeusingget) | **GET** /recommend/{username}/getBusinessMatchDegree | 获取业务匹配度
[**getRecommendListUsingGET**](SWGRecommendApi.md#getrecommendlistusingget) | **GET** /recommend/{username}/getRecommendList | 获取推荐列表


# **getAlikeCompanyListUsingGET**
```objc
-(NSURLSessionTask*) getAlikeCompanyListUsingGETWithUsername: (NSString*) username
    companyId: (NSString*) companyId
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    zoneCode: (NSString*) zoneCode
        completionHandler: (void (^)(SWGPageCompanyApiResponse* output, NSError* error)) handler;
```

获取相似客户列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* companyId = @"companyId_example"; // 公司ID
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 每页条数
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* zoneCode = @"zoneCode_example"; // 地区 (optional)

SWGRecommendApi*apiInstance = [[SWGRecommendApi alloc] init];

// 获取相似客户列表
[apiInstance getAlikeCompanyListUsingGETWithUsername:username
              companyId:companyId
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              zoneCode:zoneCode
          completionHandler: ^(SWGPageCompanyApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRecommendApi->getAlikeCompanyListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **companyId** | **NSString***| 公司ID | 
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 每页条数 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **zoneCode** | **NSString***| 地区 | [optional] 

### Return type

[**SWGPageCompanyApiResponse***](SWGPageCompanyApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBusinessMatchDegreeUsingGET**
```objc
-(NSURLSessionTask*) getBusinessMatchDegreeUsingGETWithUsername: (NSString*) username
    companyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGBusinessMatchDegreeApiResponse* output, NSError* error)) handler;
```

获取业务匹配度

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGRecommendApi*apiInstance = [[SWGRecommendApi alloc] init];

// 获取业务匹配度
[apiInstance getBusinessMatchDegreeUsingGETWithUsername:username
              companyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGBusinessMatchDegreeApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRecommendApi->getBusinessMatchDegreeUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGBusinessMatchDegreeApiResponse***](SWGBusinessMatchDegreeApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRecommendListUsingGET**
```objc
-(NSURLSessionTask*) getRecommendListUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyListApiResponse* output, NSError* error)) handler;
```

获取推荐列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGRecommendApi*apiInstance = [[SWGRecommendApi alloc] init];

// 获取推荐列表
[apiInstance getRecommendListUsingGETWithUsername:username
              loginToken:loginToken
          completionHandler: ^(SWGCompanyListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGRecommendApi->getRecommendListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyListApiResponse***](SWGCompanyListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

