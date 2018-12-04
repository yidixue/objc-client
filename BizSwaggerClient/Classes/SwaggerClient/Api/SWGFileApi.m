#import "SWGFileApi.h"
#import "SWGQueryParamCollection.h"
#import "SWGApiClient.h"
#import "SWGStsApiResponse.h"


@interface SWGFileApi ()

@property (nonatomic, strong, readwrite) NSMutableDictionary *mutableDefaultHeaders;

@end

@implementation SWGFileApi

NSString* kSWGFileApiErrorDomain = @"SWGFileApiErrorDomain";
NSInteger kSWGFileApiMissingParamErrorCode = 234513;

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
/// 获取文件安全令牌
/// 
///  @param username 用户名 
///
///  @param filename 文件名 
///
///  @param loginToken 登录令牌 (optional)
///
///  @returns SWGStsApiResponse*
///
-(NSURLSessionTask*) getSecurityTokenUsingGETWithUsername: (NSString*) username
    filename: (NSString*) filename
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGStsApiResponse* output, NSError* error)) handler {
    // verify the required parameter 'username' is set
    if (username == nil) {
        NSParameterAssert(username);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"username"] };
            NSError* error = [NSError errorWithDomain:kSWGFileApiErrorDomain code:kSWGFileApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    // verify the required parameter 'filename' is set
    if (filename == nil) {
        NSParameterAssert(filename);
        if(handler) {
            NSDictionary * userInfo = @{NSLocalizedDescriptionKey : [NSString stringWithFormat:NSLocalizedString(@"Missing required parameter '%@'", nil),@"filename"] };
            NSError* error = [NSError errorWithDomain:kSWGFileApiErrorDomain code:kSWGFileApiMissingParamErrorCode userInfo:userInfo];
            handler(nil, error);
        }
        return nil;
    }

    NSMutableString* resourcePath = [NSMutableString stringWithFormat:@"/file/{username}/getSecurityToken"];

    NSMutableDictionary *pathParams = [[NSMutableDictionary alloc] init];
    if (username != nil) {
        pathParams[@"username"] = username;
    }

    NSMutableDictionary* queryParams = [[NSMutableDictionary alloc] init];
    if (filename != nil) {
        queryParams[@"filename"] = filename;
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
                              responseType: @"SWGStsApiResponse*"
                           completionBlock: ^(id data, NSError *error) {
                                if(handler) {
                                    handler((SWGStsApiResponse*)data, error);
                                }
                            }];
}



@end
