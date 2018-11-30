# SWGCompanyApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getAllCompanyListUsingGET**](SWGCompanyApi.md#getallcompanylistusingget) | **GET** /company/getAllCompanyList | 查询全部公司列表
[**getBranchByCompanyIdUsingGET**](SWGCompanyApi.md#getbranchbycompanyidusingget) | **GET** /company/getBranchByCompanyId | 查询分支机构
[**getBureauIndustryDetailUsingGET**](SWGCompanyApi.md#getbureauindustrydetailusingget) | **GET** /company/getBureauIndustryDetail | 查询公司工商详情
[**getChangeRecordByCompanyIdUsingGET**](SWGCompanyApi.md#getchangerecordbycompanyidusingget) | **GET** /company/getChangeRecordByCompanyId | 查询变更记录
[**getCompanyAutoCompleteUsingGET**](SWGCompanyApi.md#getcompanyautocompleteusingget) | **GET** /company/getCompanyAutoComplete | 公司搜索下拉提示
[**getCompanyBaseInfoByIdUsingGET**](SWGCompanyApi.md#getcompanybaseinfobyidusingget) | **GET** /company/getCompanyBaseInfoById | 查询公司基本信息
[**getCompanyDetailUsingGET**](SWGCompanyApi.md#getcompanydetailusingget) | **GET** /company/getCompanyDetail | 查询公司详情
[**getCompanyForeignInvestmenByCompanyIdUsingGET**](SWGCompanyApi.md#getcompanyforeigninvestmenbycompanyidusingget) | **GET** /company/getCompanyForeignInvestmenByCompanyId | 查询公司对外投资
[**getCompanyKpiByIdUsingGET**](SWGCompanyApi.md#getcompanykpibyidusingget) | **GET** /company/getCompanyKpiById | 查询公司指标
[**getCorporateForeignInvestmenByCompanyIdUsingGET**](SWGCompanyApi.md#getcorporateforeigninvestmenbycompanyidusingget) | **GET** /company/getCorporateForeignInvestmenByCompanyId | 查询法人对外投资
[**getExecutiveByCompanyIdUsingGET**](SWGCompanyApi.md#getexecutivebycompanyidusingget) | **GET** /company/getExecutiveByCompanyId | 查询高管信息
[**getIndustryFinanceByCompanyIdUsingGET**](SWGCompanyApi.md#getindustryfinancebycompanyidusingget) | **GET** /company/getIndustryFinanceByCompanyId | 查询行业分析
[**getRandomCompanyListUsingGET**](SWGCompanyApi.md#getrandomcompanylistusingget) | **GET** /company/getRandomCompanyList | 查询随机公司列表
[**getSearchHotWordsUsingGET1**](SWGCompanyApi.md#getsearchhotwordsusingget1) | **GET** /company/getSearchHotWords | 搜索热词列表
[**getShareholderByCompanyIdUsingGET**](SWGCompanyApi.md#getshareholderbycompanyidusingget) | **GET** /company/getShareholderByCompanyId | 查询股东信息
[**getSubIndustryCodeListUsingGET**](SWGCompanyApi.md#getsubindustrycodelistusingget) | **GET** /company/getSubIndustryCodeList | 查询子行业
[**getSubZoneCodeListUsingGET**](SWGCompanyApi.md#getsubzonecodelistusingget) | **GET** /company/getSubZoneCodeList | 查询子地区
[**queryCompanyListByNameUsingGET**](SWGCompanyApi.md#querycompanylistbynameusingget) | **GET** /company/searchListByName | 查企业
[**queryWantBuyCompanyListByProductUsingGET**](SWGCompanyApi.md#querywantbuycompanylistbyproductusingget) | **GET** /company/searchWantBuyListByProduct | 我要卖


# **getAllCompanyListUsingGET**
```objc
-(NSURLSessionTask*) getAllCompanyListUsingGETWithLastCompanyId: (NSString*) lastCompanyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyListApiResponse* output, NSError* error)) handler;
```

查询全部公司列表

### Example 
```objc

NSString* lastCompanyId = @"lastCompanyId_example"; // The last company id
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询全部公司列表
[apiInstance getAllCompanyListUsingGETWithLastCompanyId:lastCompanyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getAllCompanyListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **lastCompanyId** | **NSString***| The last company id | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyListApiResponse***](SWGCompanyListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBranchByCompanyIdUsingGET**
```objc
-(NSURLSessionTask*) getBranchByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyBranchListApiResponse* output, NSError* error)) handler;
```

查询分支机构

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询分支机构
[apiInstance getBranchByCompanyIdUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyBranchListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getBranchByCompanyIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyBranchListApiResponse***](SWGCompanyBranchListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getBureauIndustryDetailUsingGET**
```objc
-(NSURLSessionTask*) getBureauIndustryDetailUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGBureauIndustryDetailApiResponse* output, NSError* error)) handler;
```

查询公司工商详情

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询公司工商详情
[apiInstance getBureauIndustryDetailUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGBureauIndustryDetailApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getBureauIndustryDetailUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGBureauIndustryDetailApiResponse***](SWGBureauIndustryDetailApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getChangeRecordByCompanyIdUsingGET**
```objc
-(NSURLSessionTask*) getChangeRecordByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyChangeRecordListApiResponse* output, NSError* error)) handler;
```

查询变更记录

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询变更记录
[apiInstance getChangeRecordByCompanyIdUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyChangeRecordListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getChangeRecordByCompanyIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyChangeRecordListApiResponse***](SWGCompanyChangeRecordListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyAutoCompleteUsingGET**
```objc
-(NSURLSessionTask*) getCompanyAutoCompleteUsingGETWithName: (NSString*) name
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyAutoCompleteApiResponse* output, NSError* error)) handler;
```

公司搜索下拉提示

### Example 
```objc

NSString* name = @"name_example"; // 公司名称
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 公司搜索下拉提示
[apiInstance getCompanyAutoCompleteUsingGETWithName:name
              loginToken:loginToken
          completionHandler: ^(SWGCompanyAutoCompleteApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getCompanyAutoCompleteUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| 公司名称 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyAutoCompleteApiResponse***](SWGCompanyAutoCompleteApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyBaseInfoByIdUsingGET**
```objc
-(NSURLSessionTask*) getCompanyBaseInfoByIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyBaseInfoApiResponse* output, NSError* error)) handler;
```

查询公司基本信息

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询公司基本信息
[apiInstance getCompanyBaseInfoByIdUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyBaseInfoApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getCompanyBaseInfoByIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyBaseInfoApiResponse***](SWGCompanyBaseInfoApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyDetailUsingGET**
```objc
-(NSURLSessionTask*) getCompanyDetailUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    username: (NSString*) username
        completionHandler: (void (^)(SWGCompanyDetailApiResponse* output, NSError* error)) handler;
```

查询公司详情

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* username = @"username_example"; // 用户名 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询公司详情
[apiInstance getCompanyDetailUsingGETWithCompanyId:companyId
              loginToken:loginToken
              username:username
          completionHandler: ^(SWGCompanyDetailApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getCompanyDetailUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **username** | **NSString***| 用户名 | [optional] 

### Return type

[**SWGCompanyDetailApiResponse***](SWGCompanyDetailApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyForeignInvestmenByCompanyIdUsingGET**
```objc
-(NSURLSessionTask*) getCompanyForeignInvestmenByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyForeignInvestmenListApiResponse* output, NSError* error)) handler;
```

查询公司对外投资

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询公司对外投资
[apiInstance getCompanyForeignInvestmenByCompanyIdUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyForeignInvestmenListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getCompanyForeignInvestmenByCompanyIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyForeignInvestmenListApiResponse***](SWGCompanyForeignInvestmenListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCompanyKpiByIdUsingGET**
```objc
-(NSURLSessionTask*) getCompanyKpiByIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyKpiApiResponse* output, NSError* error)) handler;
```

查询公司指标

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询公司指标
[apiInstance getCompanyKpiByIdUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyKpiApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getCompanyKpiByIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyKpiApiResponse***](SWGCompanyKpiApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCorporateForeignInvestmenByCompanyIdUsingGET**
```objc
-(NSURLSessionTask*) getCorporateForeignInvestmenByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyForeignInvestmenListApiResponse* output, NSError* error)) handler;
```

查询法人对外投资

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询法人对外投资
[apiInstance getCorporateForeignInvestmenByCompanyIdUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyForeignInvestmenListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getCorporateForeignInvestmenByCompanyIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyForeignInvestmenListApiResponse***](SWGCompanyForeignInvestmenListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getExecutiveByCompanyIdUsingGET**
```objc
-(NSURLSessionTask*) getExecutiveByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyExecutiveListApiResponse* output, NSError* error)) handler;
```

查询高管信息

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询高管信息
[apiInstance getExecutiveByCompanyIdUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyExecutiveListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getExecutiveByCompanyIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyExecutiveListApiResponse***](SWGCompanyExecutiveListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getIndustryFinanceByCompanyIdUsingGET**
```objc
-(NSURLSessionTask*) getIndustryFinanceByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGIndustryFinanceApiResponse* output, NSError* error)) handler;
```

查询行业分析

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询行业分析
[apiInstance getIndustryFinanceByCompanyIdUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGIndustryFinanceApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getIndustryFinanceByCompanyIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGIndustryFinanceApiResponse***](SWGIndustryFinanceApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getRandomCompanyListUsingGET**
```objc
-(NSURLSessionTask*) getRandomCompanyListUsingGETWithLoginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyListApiResponse* output, NSError* error)) handler;
```

查询随机公司列表

### Example 
```objc

NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询随机公司列表
[apiInstance getRandomCompanyListUsingGETWithLoginToken:loginToken
          completionHandler: ^(SWGCompanyListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getRandomCompanyListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyListApiResponse***](SWGCompanyListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSearchHotWordsUsingGET1**
```objc
-(NSURLSessionTask*) getSearchHotWordsUsingGET1WithLoginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGSearchHotWordApiResponse* output, NSError* error)) handler;
```

搜索热词列表

### Example 
```objc

NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 搜索热词列表
[apiInstance getSearchHotWordsUsingGET1WithLoginToken:loginToken
          completionHandler: ^(SWGSearchHotWordApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getSearchHotWordsUsingGET1: %@", error);
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

# **getShareholderByCompanyIdUsingGET**
```objc
-(NSURLSessionTask*) getShareholderByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyShareHolderListApiResponse* output, NSError* error)) handler;
```

查询股东信息

The response includes the company shareholder information

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询股东信息
[apiInstance getShareholderByCompanyIdUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyShareHolderListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getShareholderByCompanyIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyShareHolderListApiResponse***](SWGCompanyShareHolderListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubIndustryCodeListUsingGET**
```objc
-(NSURLSessionTask*) getSubIndustryCodeListUsingGETWithIndustryCode: (NSString*) industryCode
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGIndustryCodeListApiResponse* output, NSError* error)) handler;
```

查询子行业

### Example 
```objc

NSString* industryCode = @"industryCode_example"; // 行业编码(0查询一级行业)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询子行业
[apiInstance getSubIndustryCodeListUsingGETWithIndustryCode:industryCode
              loginToken:loginToken
          completionHandler: ^(SWGIndustryCodeListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getSubIndustryCodeListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **industryCode** | **NSString***| 行业编码(0查询一级行业) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGIndustryCodeListApiResponse***](SWGIndustryCodeListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSubZoneCodeListUsingGET**
```objc
-(NSURLSessionTask*) getSubZoneCodeListUsingGETWithZoneCode: (NSString*) zoneCode
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGZoneCodeListApiResponse* output, NSError* error)) handler;
```

查询子地区

### Example 
```objc

NSString* zoneCode = @"zoneCode_example"; // 地区编码(0查询全国省)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查询子地区
[apiInstance getSubZoneCodeListUsingGETWithZoneCode:zoneCode
              loginToken:loginToken
          completionHandler: ^(SWGZoneCodeListApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->getSubZoneCodeListUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **zoneCode** | **NSString***| 地区编码(0查询全国省) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGZoneCodeListApiResponse***](SWGZoneCodeListApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryCompanyListByNameUsingGET**
```objc
-(NSURLSessionTask*) queryCompanyListByNameUsingGETWithName: (NSString*) name
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    industryCode: (NSString*) industryCode
    zoneCode: (NSString*) zoneCode
    revenueScope: (NSString*) revenueScope
        completionHandler: (void (^)(SWGPageCompanyApiResponse* output, NSError* error)) handler;
```

查企业

### Example 
```objc

NSString* name = @"name_example"; // 公司名称/产品
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 每页数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* industryCode = @"industryCode_example"; // 行业代码 (optional)
NSString* zoneCode = @"zoneCode_example"; // 地区代码 (optional)
NSString* revenueScope = @"revenueScope_example"; // 收入 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 查企业
[apiInstance queryCompanyListByNameUsingGETWithName:name
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              industryCode:industryCode
              zoneCode:zoneCode
              revenueScope:revenueScope
          completionHandler: ^(SWGPageCompanyApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->queryCompanyListByNameUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| 公司名称/产品 | 
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 每页数量 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **industryCode** | **NSString***| 行业代码 | [optional] 
 **zoneCode** | **NSString***| 地区代码 | [optional] 
 **revenueScope** | **NSString***| 收入 | [optional] 

### Return type

[**SWGPageCompanyApiResponse***](SWGPageCompanyApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **queryWantBuyCompanyListByProductUsingGET**
```objc
-(NSURLSessionTask*) queryWantBuyCompanyListByProductUsingGETWithProduct: (NSString*) product
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    industryCode: (NSString*) industryCode
    zoneCode: (NSString*) zoneCode
        completionHandler: (void (^)(SWGPageCompanyApiResponse* output, NSError* error)) handler;
```

我要卖

### Example 
```objc

NSString* product = @"product_example"; // 产品名称
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 每页数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* industryCode = @"industryCode_example"; // 行业代码 (optional)
NSString* zoneCode = @"zoneCode_example"; // 地区代码 (optional)

SWGCompanyApi*apiInstance = [[SWGCompanyApi alloc] init];

// 我要卖
[apiInstance queryWantBuyCompanyListByProductUsingGETWithProduct:product
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              industryCode:industryCode
              zoneCode:zoneCode
          completionHandler: ^(SWGPageCompanyApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGCompanyApi->queryWantBuyCompanyListByProductUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **product** | **NSString***| 产品名称 | 
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 每页数量 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **industryCode** | **NSString***| 行业代码 | [optional] 
 **zoneCode** | **NSString***| 地区代码 | [optional] 

### Return type

[**SWGPageCompanyApiResponse***](SWGPageCompanyApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

