#import "SWGNotifyApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGDefaultApiResponse.h"
#import "SWGNotifycationApiResponse.h"
#import "SWGPageNotifycationApiResponse.h"


@interface SWGNotifyApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGNotifyApi

NSString* kSWGNotifyApiErrorDomain = @"SWGNotifyApiErrorDomain";
NSInteger kSWGNotifyApiMissingParamErrorCode = 234513;

@synthesize apiClient = _apiClient;

#pragma mark - Initialize methods

- (instancetype) init {
    return [self initWithApiClient:[SWGApiClient sharedClient]];
}


-(instancetype) initWithApiClient:(SWGApiClient *)apiClient {
    self = [super init];
    if (self) {
        _apiClient = apiClient;
        _mutableDefaultHeaders = [NSMutableDictionary dictionary];
    }
    return self;
}

#pragma mark -

-(NSString*) defaultHeaderForKey:(NSString*)key {
    return self.mutableDefaultHeaders[key];
}

-(void) setDefaultHeaderValue:(NSString*) value forKey:(NSString*)key {
    [self.mutableDefaultHeaders setValue:value forKey:key];
}

-(NSDictionary *)defaultHeaders {
    return self.mutableDefaultHeaders;
}

#pragma mark - Api Methods

///
/// ID查询通知
/// 
///  @param username 用户名 
///
///  @param _id 通知ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGNotifycationApiResponse*
///
-(NSURLSessionTask*) getByIdUsingGETWithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGNotifycationApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kSWGNotifyApiErrorDomain code:kSWGNotifyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGNotifyApiErrorDomain code:kSWGNotifyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notify/{username}/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (loginToken != nil) {
        headerParams[@"loginToken"] = loginToken;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGNotifycationApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGNotifycationApiResponse*)data, error);
                                }
                            }];
}

///
/// 获取通知分页列表
/// 
///  @param username 用户名 
///
///  @param pageNumber 页数 
///
///  @param pageSize 数量 
///
///  @param loginToken 登录令牌 (optional)
///
///  @param displayType 显示分类(system系统消息、recommend) (optional)
///
///  @returns SWGPageNotifycationApiResponse*
///
-(NSURLSessionTask*) getListUsingGET1WithUsername: (NSString*) username
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    displayType: (NSString*) displayType
    completionHandler: (void (^)(SWGPageNotifycationApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kSWGNotifyApiErrorDomain code:kSWGNotifyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kSWGNotifyApiErrorDomain code:kSWGNotifyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageSize' is set
    if (pageSize == nil) {
        NSParameterAssert(pageSize);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageSize"] };
            NSError* error = [NSError errorWithDomain:kSWGNotifyApiErrorDomain code:kSWGNotifyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notify/{username}/getList"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (displayType != nil) {
        queryParams[@"displayType"] = displayType;
    }
    if (pageNumber != nil) {
        queryParams[@"pageNumber"] = pageNumber;
    }
    if (pageSize != nil) {
        queryParams[@"pageSize"] = pageSize;
    }
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (loginToken != nil) {
        headerParams[@"loginToken"] = loginToken;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGPageNotifycationApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPageNotifycationApiResponse*)data, error);
                                }
                            }];
}

///
/// 获取未读消息数
/// 
///  @param username 用户名 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGDefaultApiResponse*
///
-(NSURLSessionTask*) getUnreadNumUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kSWGNotifyApiErrorDomain code:kSWGNotifyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notify/{username}/getUnreadNum"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (loginToken != nil) {
        headerParams[@"loginToken"] = loginToken;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGDefaultApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGDefaultApiResponse*)data, error);
                                }
                            }];
}

///
/// 标记已读
/// 
///  @param username 用户名 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGDefaultApiResponse*
///
-(NSURLSessionTask*) markReadUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kSWGNotifyApiErrorDomain code:kSWGNotifyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notify/{username}/markRead"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (loginToken != nil) {
        headerParams[@"loginToken"] = loginToken;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"GET"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGDefaultApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGDefaultApiResponse*)data, error);
                                }
                            }];
}

///
/// 移除
/// 
///  @param username 用户名 
///
///  @param _id 通知ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGDefaultApiResponse*
///
-(NSURLSessionTask*) removeUsingDELETE2WithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kSWGNotifyApiErrorDomain code:kSWGNotifyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter '_id' is set
    if (_id == nil) {
        NSParameterAssert(_id);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"_id"] };
            NSError* error = [NSError errorWithDomain:kSWGNotifyApiErrorDomain code:kSWGNotifyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/notify/{username}/{id}"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }
    if (_id != nil) {
        pathParams[@"id"] = _id;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary* headerParams = [NSMutableDictionary dictionaryWithDictionary:self.apiClient.configuration.defaultHeaders];
    [headerParams addEntriesFromDictionary:self.defaultHeaders];
    if (loginToken != nil) {
        headerParams[@"loginToken"] = loginToken;
    }
    // HTTP header `Accept`
    NSString *acceptHeader = [self.apiClient.sanitizer selectHeaderAccept:@[@"application/json"]];
    if(acceptHeader.length > 0) {
        headerParams[@"Accept"] = acceptHeader;
    }

    // response content type
    NSString *responseContentType = [[acceptHeader componentsSeparatedByString:@", "] firstObject] ?: @"";

    // request content type
    NSString *requestContentType = [self.apiClient.sanitizer selectHeaderContentType:@[@"application/json"]];

    // Authentication setting
    NSArray *authSettings = @[];

    id bodyParam = nil;
    NSMutableDictionary *formParams = [[NSMutableDictionary alloc] init];
    NSMutableDictionary *localVarFiles = [[NSMutableDictionary alloc] init];

    return [self.apiClient requestWithPath: resourcePath
                                    method: @"DELETE"
                                pathParams: pathParams
                               queryParams: queryParams
                                formParams: formParams
                                     files: localVarFiles
                                      body: bodyParam
                              headerParams: headerParams
                              authSettings: authSettings
                        requestContentType: requestContentType
                       responseContentType: responseContentType
                              responseType: @"SWGDefaultApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGDefaultApiResponse*)data, error);
                                }
                            }];
}



@end
