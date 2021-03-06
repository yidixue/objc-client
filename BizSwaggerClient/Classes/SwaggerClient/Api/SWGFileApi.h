#import <Foundation/Foundation.h>
#import "SWGStsApiResponse.h"
#import "SWGApi.h"

/**
* 领商-对外开放服务API
* 提供领商对外开放服务所有Restful接口
*
* OpenAPI spec version: 1.0.0
* Contact: ys@ibizplus.cn
*
* NOTE: This class is auto generated by the swagger code generator program.
* https://github.com/swagger-api/swagger-codegen.git
* Do not edit the class manually.
*/



@interface SWGFileApi: NSObject <SWGApi>

extern NSString* kSWGFileApiErrorDomain;
extern NSInteger kSWGFileApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 获取文件安全令牌
/// 
///
/// @param username 用户名
/// @param filename 文件名
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGStsApiResponse*
-(NSURLSessionTask*) getSecurityTokenUsingGETWithUsername: (NSString*) username
    filename: (NSString*) filename
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGStsApiResponse* output, NSError* error)) handler;



@end
