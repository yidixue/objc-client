# SWGUserApi

All URIs are relative to *https://182.92.76.180:8080/v2*

Method | HTTP request | Description
------------- | ------------- | -------------
[**getUserByNameUsingGET**](SWGUserApi.md#getuserbynameusingget) | **GET** /user/{username} | 根据用户名查询用户信息
[**isExistUsingPOST**](SWGUserApi.md#isexistusingpost) | **POST** /user/isExist | 查询用户是否存在
[**loginUserUsingPOST**](SWGUserApi.md#loginuserusingpost) | **POST** /user/login | 用户登录
[**modifyPasswordUsingPOST**](SWGUserApi.md#modifypasswordusingpost) | **POST** /user/modifyPassword | 修改密码
[**modifyUserUsingPUT**](SWGUserApi.md#modifyuserusingput) | **PUT** /user/{username} | 用户信息修改
[**registerUsingPOST**](SWGUserApi.md#registerusingpost) | **POST** /user/register | 用户登录


# **getUserByNameUsingGET**
```objc
-(NSURLSessionTask*) getUserByNameUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGUserApiResponse* output, NSError* error)) handler;
```

根据用户名查询用户信息

### Example 
```objc

NSString* username = @"username_example"; // 用户名
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// 根据用户名查询用户信息
[apiInstance getUserByNameUsingGETWithUsername:username
              loginToken:loginToken
          completionHandler: ^(SWGUserApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->getUserByNameUsingGET: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGUserApiResponse***](SWGUserApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **isExistUsingPOST**
```objc
-(NSURLSessionTask*) isExistUsingPOSTWithUsername: (NSString*) username
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

查询用户是否存在

### Example 
```objc

NSString* username = @"username_example"; // 用户名

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// 查询用户是否存在
[apiInstance isExistUsingPOSTWithUsername:username
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->isExistUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **loginUserUsingPOST**
```objc
-(NSURLSessionTask*) loginUserUsingPOSTWithLogin: (SWGLogin*) login
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

用户登录

### Example 
```objc

SWGLogin* login = [[SWGLogin alloc] init]; // 登录信息

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// 用户登录
[apiInstance loginUserUsingPOSTWithLogin:login
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->loginUserUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **login** | [**SWGLogin***](SWGLogin.md)| 登录信息 | 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyPasswordUsingPOST**
```objc
-(NSURLSessionTask*) modifyPasswordUsingPOSTWithModifyPassword: (SWGModifyPassword*) modifyPassword
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

修改密码

### Example 
```objc

SWGModifyPassword* modifyPassword = [[SWGModifyPassword alloc] init]; // 修改密码信息

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// 修改密码
[apiInstance modifyPasswordUsingPOSTWithModifyPassword:modifyPassword
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->modifyPasswordUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **modifyPassword** | [**SWGModifyPassword***](SWGModifyPassword.md)| 修改密码信息 | 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **modifyUserUsingPUT**
```objc
-(NSURLSessionTask*) modifyUserUsingPUTWithUsername: (NSString*) username
    modifyUser: (SWGModifyUser*) modifyUser
    loginToken: (NSString*) loginToken
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

用户信息修改

### Example 
```objc

NSString* username = @"username_example"; // 用户名
SWGModifyUser* modifyUser = [[SWGModifyUser alloc] init]; // 用户对象
NSString* loginToken = @"loginToken_example"; // 登录令牌 (optional)

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// 用户信息修改
[apiInstance modifyUserUsingPUTWithUsername:username
              modifyUser:modifyUser
              loginToken:loginToken
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->modifyUserUsingPUT: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **username** | **NSString***| 用户名 | 
 **modifyUser** | [**SWGModifyUser***](SWGModifyUser.md)| 用户对象 | 
 **loginToken** | **NSString***| 登录令牌 | [optional] 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

# **registerUsingPOST**
```objc
-(NSURLSessionTask*) registerUsingPOSTWithRegisterUser: (SWGRegisterUser*) registerUser
        completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;
```

用户登录

### Example 
```objc

SWGRegisterUser* registerUser = [[SWGRegisterUser alloc] init]; // 注册信息

SWGUserApi*apiInstance = [[SWGUserApi alloc] init];

// 用户登录
[apiInstance registerUsingPOSTWithRegisterUser:registerUser
          completionHandler: ^(SWGDefaultApiResponse* output, NSError* error) {
                        if (output) {
                            NSLog(@"%@", output);
                        }
                        if (error) {
                            NSLog(@"Error calling SWGUserApi->registerUsingPOST: %@", error);
                        }
                    }];
```

### Parameters

Name | Type | Description  | Notes
------------- | ------------- | ------------- | -------------
 **registerUser** | [**SWGRegisterUser***](SWGRegisterUser.md)| 注册信息 | 

### Return type

[**SWGDefaultApiResponse***](SWGDefaultApiResponse.md)

### Authorization

No authorization required

### HTTP request headers

 - **Content-Type**: application/json
 - **Accept**: application/json

[[Back to top]](#) [[Back to API list]](../README.md#documentation-for-api-endpoints) [[Back to Model list]](../README.md#documentation-for-models) [[Back to README]](../README.md)

