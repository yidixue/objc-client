# SWGOrderApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**createInvoiceUsingPOST**](SWGOrderApi.md#createinvoiceusingpost) | **POST** /order/{username}/invoice | 开具发票
[**createOrderUsingPOST**](SWGOrderApi.md#createorderusingpost) | **POST** /order/{username}/create | 创建订单
[**getInvoiceByUsernameUsingGET**](SWGOrderApi.md#getinvoicebyusernameusingget) | **GET** /order/{username}/getInvoiceInfo | 查询开票信息
[**getOrderByIdUsingGET**](SWGOrderApi.md#getorderbyidusingget) | **GET** /order/{username}/{id} | 根据id查询订单信息
[**getPageListUsingGET1**](SWGOrderApi.md#getpagelistusingget1) | **GET** /order/{username}/getPageList | 订单分页列表
[**getPriceUsingGET**](SWGOrderApi.md#getpriceusingget) | **GET** /order/{username}/getPrice | 查询订单价格


# **createInvoiceUsingPOST**
```objc
-(NSURLSessionTask*) createInvoiceUsingPOSTWithUsername: (NSString*) username
    body: (SWGOrderInvoice*) body
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

开具发票

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGOrderInvoice* body = [[SWGOrderInvoice alloc] init]; // 发票信息
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// 开具发票
[apiInstance createInvoiceUsingPOSTWithUsername:username
              body:body
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrderApi->createInvoiceUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **body** | [**SWGOrderInvoice***](SWGOrderInvoice.md)| 发票信息 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **createOrderUsingPOST**
```objc
-(NSURLSessionTask*) createOrderUsingPOSTWithUsername: (NSString*) username
    createOrder: (SWGCreateOrder*) createOrder
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGOrderApiResponse* output, NSError* error)) handler;
```

创建订单

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGCreateOrder* createOrder = [[SWGCreateOrder alloc] init]; // 订单内容
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// 创建订单
[apiInstance createOrderUsingPOSTWithUsername:username
              createOrder:createOrder
              loginToken:loginToken
          completionHandler: ^(SWGOrderApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrderApi->createOrderUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **createOrder** | [**SWGCreateOrder***](SWGCreateOrder.md)| 订单内容 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGOrderApiResponse***](SWGOrderApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getInvoiceByUsernameUsingGET**
```objc
-(NSURLSessionTask*) getInvoiceByUsernameUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGOrderInvoiceApiResponse* output, NSError* error)) handler;
```

查询开票信息

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// 查询开票信息
[apiInstance getInvoiceByUsernameUsingGETWithUsername:username
              loginToken:loginToken
          completionHandler: ^(SWGOrderInvoiceApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrderApi->getInvoiceByUsernameUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGOrderInvoiceApiResponse***](SWGOrderInvoiceApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getOrderByIdUsingGET**
```objc
-(NSURLSessionTask*) getOrderByIdUsingGETWithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGOrderApiResponse* output, NSError* error)) handler;
```

根据id查询订单信息

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* _id = @"_id_example"; // 订单编号
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// 根据id查询订单信息
[apiInstance getOrderByIdUsingGETWithUsername:username
              _id:_id
              loginToken:loginToken
          completionHandler: ^(SWGOrderApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrderApi->getOrderByIdUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **_id** | **NSString***| 订单编号 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGOrderApiResponse***](SWGOrderApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPageListUsingGET1**
```objc
-(NSURLSessionTask*) getPageListUsingGET1WithUsername: (NSString*) username
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    type: (NSString*) type
    invoiceStatus: (NSString*) invoiceStatus
        completionHandler: (void (^)(SWGPageOrderApiResponse* output, NSError* error)) handler;
```

订单分页列表

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSNumber* pageNumber = @56; // 页数
NSNumber* pageSize = @56; // 每页条数
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)
NSString* type = @"type_example"; // 类型(1月会员 2年会员 3财务报告) (optional)
NSString* invoiceStatus = @"invoiceStatus_example"; // 发票状态(UNBILLED未开票 SUBMITTED已提交 INVOICED已开票) (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// 订单分页列表
[apiInstance getPageListUsingGET1WithUsername:username
              pageNumber:pageNumber
              pageSize:pageSize
              loginToken:loginToken
              type:type
              invoiceStatus:invoiceStatus
          completionHandler: ^(SWGPageOrderApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrderApi->getPageListUsingGET1: %@", error);
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
 **type** | **NSString***| 类型(1月会员 2年会员 3财务报告) | [optional] 
 **invoiceStatus** | **NSString***| 发票状态(UNBILLED未开票 SUBMITTED已提交 INVOICED已开票) | [optional] 

### Return type

[**SWGPageOrderApiResponse***](SWGPageOrderApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **getPriceUsingGET**
```objc
-(NSURLSessionTask*) getPriceUsingGETWithUsername: (NSString*) username
    type: (NSString*) type
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGPriceApiResponse* output, NSError* error)) handler;
```

查询订单价格

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* type = @"type_example"; // 订单类型(1月会员 2年会员 3财务报告)
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGOrderApi*apiInstance = [[SWGOrderApi alloc] init];

// 查询订单价格
[apiInstance getPriceUsingGETWithUsername:username
              type:type
              loginToken:loginToken
          completionHandler: ^(SWGPriceApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGOrderApi->getPriceUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **type** | **NSString***| 订单类型(1月会员 2年会员 3财务报告) | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGPriceApiResponse***](SWGPriceApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

