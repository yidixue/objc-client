#import <Foundation/Foundation.h>
#import "SWGCreateAuth.h"
#import "SWGDefaultApiResponse.h"
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



@interface SWGAuthApi: NSObject <SWGApi>

extern NSString* kSWGAuthApiErrorDomain;
extern NSInteger kSWGAuthApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 提交身份认证
/// 
///
/// @param username 用户名
/// @param body 认证对象
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) createUsingPOST1WithUsername: (NSString*) username
    body: (SWGCreateAuth*) body
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;



@end
