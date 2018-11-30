# SWGSupplychainApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getClueDetailUsingGET**](SWGSupplychainApi.md#getcluedetailusingget) | **GET** /supplychain/getClueDetail | 查询线索详情
[**getCustomerCluesUsingGET**](SWGSupplychainApi.md#getcustomercluesusingget) | **GET** /supplychain/customers | 查询客户线索
[**getPhoneCluesUsingGET**](SWGSupplychainApi.md#getphonecluesusingget) | **GET** /supplychain/phones | 查询电话线索
[**getSupplierCluesUsingGET**](SWGSupplychainApi.md#getsuppliercluesusingget) | **GET** /supplychain/suppliers | 查询供应商线索


# **getClueDetailUsingGET**
```objc
-(NSURLSessionTask*) getClueDetailUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGSupplychainApiResponse* output, NSError* error)) handler;
```

查询线索详情

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGSupplychainApi*apiInstance = [[SWGSupplychainApi alloc] init];

// 查询线索详情
[apiInstance getClueDetailUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGSupplychainApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSupplychainApi->getClueDetailUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGSupplychainApiResponse***](SWGSupplychainApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getCustomerCluesUsingGET**
```objc
-(NSURLSessionTask*) getCustomerCluesUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyClueApiResponse* output, NSError* error)) handler;
```

查询客户线索

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGSupplychainApi*apiInstance = [[SWGSupplychainApi alloc] init];

// 查询客户线索
[apiInstance getCustomerCluesUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyClueApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSupplychainApi->getCustomerCluesUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyClueApiResponse***](SWGCompanyClueApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPhoneCluesUsingGET**
```objc
-(NSURLSessionTask*) getPhoneCluesUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPhoneClueApiResponse* output, NSError* error)) handler;
```

查询电话线索

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGSupplychainApi*apiInstance = [[SWGSupplychainApi alloc] init];

// 查询电话线索
[apiInstance getPhoneCluesUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGPhoneClueApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSupplychainApi->getPhoneCluesUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPhoneClueApiResponse***](SWGPhoneClueApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getSupplierCluesUsingGET**
```objc
-(NSURLSessionTask*) getSupplierCluesUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGCompanyClueApiResponse* output, NSError* error)) handler;
```

查询供应商线索

### Example 
```objc

NSString* companyId = @"companyId_example"; // 公司ID
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGSupplychainApi*apiInstance = [[SWGSupplychainApi alloc] init];

// 查询供应商线索
[apiInstance getSupplierCluesUsingGETWithCompanyId:companyId
              loginToken:loginToken
          completionHandler: ^(SWGCompanyClueApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSupplychainApi->getSupplierCluesUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **companyId** | **NSString***| 公司ID | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGCompanyClueApiResponse***](SWGCompanyClueApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

