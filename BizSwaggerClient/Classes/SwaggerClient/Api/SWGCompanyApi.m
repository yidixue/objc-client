#import "SWGCompanyApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGBureauIndustryDetailApiResponse.h"
#import "SWGCompanyAutoCompleteApiResponse.h"
#import "SWGCompanyBaseInfoApiResponse.h"
#import "SWGCompanyBranchListApiResponse.h"
#import "SWGCompanyChangeRecordListApiResponse.h"
#import "SWGCompanyDetailApiResponse.h"
#import "SWGCompanyExecutiveListApiResponse.h"
#import "SWGCompanyForeignInvestmenListApiResponse.h"
#import "SWGCompanyKpiApiResponse.h"
#import "SWGCompanyListApiResponse.h"
#import "SWGCompanyShareHolderListApiResponse.h"
#import "SWGIndustryCodeListApiResponse.h"
#import "SWGIndustryFinanceApiResponse.h"
#import "SWGPageCompany.h"
#import "SWGPageCompanyApiResponse.h"
#import "SWGSearchHotWordApiResponse.h"
#import "SWGZoneCodeListApiResponse.h"


@interface SWGCompanyApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGCompanyApi

NSString* kSWGCompanyApiErrorDomain = @"SWGCompanyApiErrorDomain";
NSInteger kSWGCompanyApiMissingParamErrorCode = 234513;

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
/// 查询全部公司列表
/// 
///  @param lastCompanyId The last company id 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyListApiResponse*
///
-(NSURLSessionTask*) getAllCompanyListUsingGETWithLastCompanyId: (NSString*) lastCompanyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyListApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'lastCompanyId' is set
    if (lastCompanyId == nil) {
        NSParameterAssert(lastCompanyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"lastCompanyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getAllCompanyList"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (lastCompanyId != nil) {
        queryParams[@"lastCompanyId"] = lastCompanyId;
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
                              responseType: @"SWGCompanyListApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyListApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询分支机构
/// 
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyBranchListApiResponse*
///
-(NSURLSessionTask*) getBranchByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyBranchListApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getBranchByCompanyId"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
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
                              responseType: @"SWGCompanyBranchListApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyBranchListApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询公司工商详情
/// 
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGBureauIndustryDetailApiResponse*
///
-(NSURLSessionTask*) getBureauIndustryDetailUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGBureauIndustryDetailApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getBureauIndustryDetail"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
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
                              responseType: @"SWGBureauIndustryDetailApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGBureauIndustryDetailApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询变更记录
/// 
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyChangeRecordListApiResponse*
///
-(NSURLSessionTask*) getChangeRecordByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyChangeRecordListApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getChangeRecordByCompanyId"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
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
                              responseType: @"SWGCompanyChangeRecordListApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyChangeRecordListApiResponse*)data, error);
                                }
                            }];
}

///
/// 公司搜索下拉提示
/// 
///  @param name 公司名称 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyAutoCompleteApiResponse*
///
-(NSURLSessionTask*) getCompanyAutoCompleteUsingGETWithName: (NSString*) name
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyAutoCompleteApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getCompanyAutoComplete"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        queryParams[@"name"] = name;
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
                              responseType: @"SWGCompanyAutoCompleteApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyAutoCompleteApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询公司基本信息
/// 
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyBaseInfoApiResponse*
///
-(NSURLSessionTask*) getCompanyBaseInfoByIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyBaseInfoApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getCompanyBaseInfoById"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
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
                              responseType: @"SWGCompanyBaseInfoApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyBaseInfoApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询公司详情
/// 
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @param username 用户名 (optional)
///
///  @returns SWGCompanyDetailApiResponse*
///
-(NSURLSessionTask*) getCompanyDetailUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    username: (NSString*) username
    completionHandler: (void (^)(SWGCompanyDetailApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getCompanyDetail"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
    }
    if (username != nil) {
        queryParams[@"username"] = username;
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
                              responseType: @"SWGCompanyDetailApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyDetailApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询公司对外投资
/// 
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyForeignInvestmenListApiResponse*
///
-(NSURLSessionTask*) getCompanyForeignInvestmenByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyForeignInvestmenListApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getCompanyForeignInvestmenByCompanyId"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
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
                              responseType: @"SWGCompanyForeignInvestmenListApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyForeignInvestmenListApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询公司指标
/// 
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyKpiApiResponse*
///
-(NSURLSessionTask*) getCompanyKpiByIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyKpiApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getCompanyKpiById"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
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
                              responseType: @"SWGCompanyKpiApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyKpiApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询法人对外投资
/// 
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyForeignInvestmenListApiResponse*
///
-(NSURLSessionTask*) getCorporateForeignInvestmenByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyForeignInvestmenListApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getCorporateForeignInvestmenByCompanyId"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
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
                              responseType: @"SWGCompanyForeignInvestmenListApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyForeignInvestmenListApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询高管信息
/// 
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyExecutiveListApiResponse*
///
-(NSURLSessionTask*) getExecutiveByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyExecutiveListApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getExecutiveByCompanyId"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
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
                              responseType: @"SWGCompanyExecutiveListApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyExecutiveListApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询行业分析
/// 
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGIndustryFinanceApiResponse*
///
-(NSURLSessionTask*) getIndustryFinanceByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGIndustryFinanceApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getIndustryFinanceByCompanyId"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
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
                              responseType: @"SWGIndustryFinanceApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIndustryFinanceApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询随机公司列表
/// 
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyListApiResponse*
///
-(NSURLSessionTask*) getRandomCompanyListUsingGETWithLoginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyListApiResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getRandomCompanyList"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
                              responseType: @"SWGCompanyListApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyListApiResponse*)data, error);
                                }
                            }];
}

///
/// 搜索热词列表
/// 
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGSearchHotWordApiResponse*
///
-(NSURLSessionTask*) getSearchHotWordsUsingGET1WithLoginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGSearchHotWordApiResponse* output, NSError* error)) handler {
    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getSearchHotWords"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

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
                              responseType: @"SWGSearchHotWordApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGSearchHotWordApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询股东信息
/// The response includes the company shareholder information
///  @param companyId 公司ID 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGCompanyShareHolderListApiResponse*
///
-(NSURLSessionTask*) getShareholderByCompanyIdUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyShareHolderListApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'companyId' is set
    if (companyId == nil) {
        NSParameterAssert(companyId);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"companyId"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getShareholderByCompanyId"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (companyId != nil) {
        queryParams[@"companyId"] = companyId;
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
                              responseType: @"SWGCompanyShareHolderListApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGCompanyShareHolderListApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询子行业
/// 
///  @param industryCode 行业编码(0查询一级行业) 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGIndustryCodeListApiResponse*
///
-(NSURLSessionTask*) getSubIndustryCodeListUsingGETWithIndustryCode: (NSString*) industryCode
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGIndustryCodeListApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'industryCode' is set
    if (industryCode == nil) {
        NSParameterAssert(industryCode);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"industryCode"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getSubIndustryCodeList"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (industryCode != nil) {
        queryParams[@"industryCode"] = industryCode;
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
                              responseType: @"SWGIndustryCodeListApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGIndustryCodeListApiResponse*)data, error);
                                }
                            }];
}

///
/// 查询子地区
/// 
///  @param zoneCode 地区编码(0查询全国省) 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGZoneCodeListApiResponse*
///
-(NSURLSessionTask*) getSubZoneCodeListUsingGETWithZoneCode: (NSString*) zoneCode
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGZoneCodeListApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'zoneCode' is set
    if (zoneCode == nil) {
        NSParameterAssert(zoneCode);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"zoneCode"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/getSubZoneCodeList"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (zoneCode != nil) {
        queryParams[@"zoneCode"] = zoneCode;
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
                              responseType: @"SWGZoneCodeListApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGZoneCodeListApiResponse*)data, error);
                                }
                            }];
}

///
/// 查企业
/// 
///  @param name 公司名称/产品 
///
///  @param pageNumber 页数 
///
///  @param pageSize 每页数量 
///
///  @param loginToken 登录令牌 (optional)
///
///  @param industryCode 行业代码 (optional)
///
///  @param zoneCode 地区代码 (optional)
///
///  @param revenueScope 收入 (optional)
///
///  @returns SWGPageCompanyApiResponse*
///
-(NSURLSessionTask*) queryCompanyListByNameUsingGETWithName: (NSString*) name
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    industryCode: (NSString*) industryCode
    zoneCode: (NSString*) zoneCode
    revenueScope: (NSString*) revenueScope
    completionHandler: (void (^)(SWGPageCompanyApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'name' is set
    if (name == nil) {
        NSParameterAssert(name);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"name"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageSize' is set
    if (pageSize == nil) {
        NSParameterAssert(pageSize);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageSize"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/searchListByName"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (name != nil) {
        queryParams[@"name"] = name;
    }
    if (industryCode != nil) {
        queryParams[@"industryCode"] = industryCode;
    }
    if (zoneCode != nil) {
        queryParams[@"zoneCode"] = zoneCode;
    }
    if (revenueScope != nil) {
        queryParams[@"revenueScope"] = revenueScope;
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
                              responseType: @"SWGPageCompanyApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPageCompanyApiResponse*)data, error);
                                }
                            }];
}

///
/// 我要卖
/// 
///  @param product 产品名称 
///
///  @param pageNumber 页数 
///
///  @param pageSize 每页数量 
///
///  @param loginToken 登录令牌 (optional)
///
///  @param industryCode 行业代码 (optional)
///
///  @param zoneCode 地区代码 (optional)
///
///  @returns SWGPageCompanyApiResponse*
///
-(NSURLSessionTask*) queryWantBuyCompanyListByProductUsingGETWithProduct: (NSString*) product
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    industryCode: (NSString*) industryCode
    zoneCode: (NSString*) zoneCode
    completionHandler: (void (^)(SWGPageCompanyApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'product' is set
    if (product == nil) {
        NSParameterAssert(product);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"product"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageNumber' is set
    if (pageNumber == nil) {
        NSParameterAssert(pageNumber);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageNumber"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'pageSize' is set
    if (pageSize == nil) {
        NSParameterAssert(pageSize);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"pageSize"] };
            NSError* error = [NSError errorWithDomain:kSWGCompanyApiErrorDomain code:kSWGCompanyApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/company/searchWantBuyListByProduct"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (product != nil) {
        queryParams[@"product"] = product;
    }
    if (industryCode != nil) {
        queryParams[@"industryCode"] = industryCode;
    }
    if (zoneCode != nil) {
        queryParams[@"zoneCode"] = zoneCode;
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
                              responseType: @"SWGPageCompanyApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGPageCompanyApiResponse*)data, error);
                                }
                            }];
}



@end
