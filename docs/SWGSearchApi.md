# SWGSearchApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getCompanyClueAutoCompleteUsingGET**](SWGSearchApi.md#getcompanyclueautocompleteusingget) | **GET** /search/getCompanyClueAutoComplete | 公司线索下拉提示
[**getProductAutoCompleteUsingGET1**](SWGSearchApi.md#getproductautocompleteusingget1) | **GET** /search/getProductAutoComplete | 产品搜索下拉提示
[**searchClueUsingGET**](SWGSearchApi.md#searchclueusingget) | **GET** /search/searchClue | 搜索线索
[**searchCompanyAndClueUsingGET**](SWGSearchApi.md#searchcompanyandclueusingget) | **GET** /search/searchCompanyAndClue | 搜索公司和线索
[**searchCompanyUsingGET**](SWGSearchApi.md#searchcompanyusingget) | **GET** /search/searchCompany | 搜索公司


# **getCompanyClueAutoCompleteUsingGET**
```objc
-(NSURLSessionTask*) getCompanyClueAutoCompleteUsingGETWithName: (NSString*) name
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGAutoCompleteApiResponse* output, NSError* error)) handler;
```

公司线索下拉提示

### Example 
```objc

NSString* name = @"name_example"; // 产品名称
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGSearchApi*apiInstance = [[SWGSearchApi alloc] init];

// 公司线索下拉提示
[apiInstance getCompanyClueAutoCompleteUsingGETWithName:name
              loginToken:loginToken
          completionHandler: ^(SWGAutoCompleteApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSearchApi->getCompanyClueAutoCompleteUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| 产品名称 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGAutoCompleteApiResponse***](SWGAutoCompleteApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getProductAutoCompleteUsingGET1**
```objc
-(NSURLSessionTask*) getProductAutoCompleteUsingGET1WithName: (NSString*) name
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGAutoCompleteApiResponse* output, NSError* error)) handler;
```

产品搜索下拉提示

### Example 
```objc

NSString* name = @"name_example"; // 产品名称
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGSearchApi*apiInstance = [[SWGSearchApi alloc] init];

// 产品搜索下拉提示
[apiInstance getProductAutoCompleteUsingGET1WithName:name
              loginToken:loginToken
          completionHandler: ^(SWGAutoCompleteApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSearchApi->getProductAutoCompleteUsingGET1: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| 产品名称 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGAutoCompleteApiResponse***](SWGAutoCompleteApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchClueUsingGET**
```objc
-(NSURLSessionTask*) searchClueUsingGETWithPageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    type: (NSString*) type
    name: (NSString*) name
    identityAuthStatus: (NSString*) identityAuthStatus
    zoneCode: (NSString*) zoneCode
    companyId: (NSString*) companyId
        completionHandler: (void (^)(SWGPageCompanyAndClueApiResponse* output, NSError* error)) handler;
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

SWGSearchApi*apiInstance = [[SWGSearchApi alloc] init];

// 搜索线索
[apiInstance searchClueUsingGETWithPageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              type:type
              name:name
              identityAuthStatus:identityAuthStatus
              zoneCode:zoneCode
              companyId:companyId
          completionHandler: ^(SWGPageCompanyAndClueApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSearchApi->searchClueUsingGET: %@", error);
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

[**SWGPageCompanyAndClueApiResponse***](SWGPageCompanyAndClueApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCompanyAndClueUsingGET**
```objc
-(NSURLSessionTask*) searchCompanyAndClueUsingGETWithPageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    keyword: (NSString*) keyword
        completionHandler: (void (^)(SWGPageCompanyAndClueApiResponse* output, NSError* error)) handler;
```

搜索公司和线索

### Example 
```objc

NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 数量
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* keyword = @"keyword_example"; // 关键字 (optional)

SWGSearchApi*apiInstance = [[SWGSearchApi alloc] init];

// 搜索公司和线索
[apiInstance searchCompanyAndClueUsingGETWithPageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              keyword:keyword
          completionHandler: ^(SWGPageCompanyAndClueApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSearchApi->searchCompanyAndClueUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **pageNumber** | **NSNumber***| 页数 | 
 **pageSize** | **NSNumber***| 数量 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **keyword** | **NSString***| 关键字 | [optional] 

### Return type

[**SWGPageCompanyAndClueApiResponse***](SWGPageCompanyAndClueApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **searchCompanyUsingGET**
```objc
-(NSURLSessionTask*) searchCompanyUsingGETWithName: (NSString*) name
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    industryCode: (NSString*) industryCode
    zoneCode: (NSString*) zoneCode
    revenue: (NSString*) revenue
        completionHandler: (void (^)(SWGPageCompanyAndClueApiResponse* output, NSError* error)) handler;
```

搜索公司

### Example 
```objc

NSString* name = @"name_example"; // The company name
NSNumber* pageNumber = @56; // The page number
NSNumber* pageSize = @56; // The page size
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* industryCode = @"industryCode_example"; // The industry code (optional)
NSString* zoneCode = @"zoneCode_example"; // The zone code (optional)
NSString* revenue = @"revenue_example"; // The revenue (optional)

SWGSearchApi*apiInstance = [[SWGSearchApi alloc] init];

// 搜索公司
[apiInstance searchCompanyUsingGETWithName:name
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              industryCode:industryCode
              zoneCode:zoneCode
              revenue:revenue
          completionHandler: ^(SWGPageCompanyAndClueApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSearchApi->searchCompanyUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **name** | **NSString***| The company name | 
 **pageNumber** | **NSNumber***| The page number | 
 **pageSize** | **NSNumber***| The page size | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 
 **industryCode** | **NSString***| The industry code | [optional] 
 **zoneCode** | **NSString***| The zone code | [optional] 
 **revenue** | **NSString***| The revenue | [optional] 

### Return type

[**SWGPageCompanyAndClueApiResponse***](SWGPageCompanyAndClueApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

