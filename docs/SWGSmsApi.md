# SWGSmsApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**sendVerificationCodeUsingPOST**](SWGSmsApi.md#sendverificationcodeusingpost) | **POST** /sms/sendVerificationCode | 发送短信验证码


# **sendVerificationCodeUsingPOST**
```objc
-(NSURLSessionTask*) sendVerificationCodeUsingPOSTWithSendVerificationCode: (SWGSendVerificationCode*) sendVerificationCode
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

发送短信验证码

返回验证码发送状态

### Example 
```objc

SWGSendVerificationCode* sendVerificationCode = [[SWGSendVerificationCode alloc] init]; // 发送短信验证码信息

SWGSmsApi*apiInstance = [[SWGSmsApi alloc] init];

// 发送短信验证码
[apiInstance sendVerificationCodeUsingPOSTWithSendVerificationCode:sendVerificationCode
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGSmsApi->sendVerificationCodeUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **sendVerificationCode** | [**SWGSendVerificationCode***](SWGSendVerificationCode.md)| 发送短信验证码信息 | 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

