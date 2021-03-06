#import <Foundation/Foundation.h>
#import "SWGDefaultApiResponse.h"
#import "SWGLogin.h"
#import "SWGModifyPassword.h"
#import "SWGModifyUser.h"
#import "SWGRegisterUser.h"
#import "SWGUserApiResponse.h"
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



@interface SWGUserApi: NSObject <SWGApi>

extern NSString* kSWGUserApiErrorDomain;
extern NSInteger kSWGUserApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 根据用户名查询用户信息
/// 
///
/// @param username 用户名
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGUserApiResponse*
-(NSURLSessionTask*) getUserByNameUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGUserApiResponse* output, NSError* error)) handler;


/// 查询用户是否存在
/// 
///
/// @param username 用户名
/// 
///  code:200 message:"successful operation",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"User not found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) isExistUsingPOSTWithUsername: (NSString*) username
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;


/// 用户登录
/// 
///
/// @param login 登录信息
/// 
///  code:200 message:"successful operation",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) loginUserUsingPOSTWithLogin: (SWGLogin*) login
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;


/// 修改密码
/// 
///
/// @param modifyPassword 修改密码信息
/// 
///  code:200 message:"successful operation",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) modifyPasswordUsingPOSTWithModifyPassword: (SWGModifyPassword*) modifyPassword
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;


/// 用户信息修改
/// 
///
/// @param username 用户名
/// @param modifyUser 用户对象
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"User not found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) modifyUserUsingPUTWithUsername: (NSString*) username
    modifyUser: (SWGModifyUser*) modifyUser
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;


/// 用户登录
/// 
///
/// @param registerUser 注册信息
/// 
///  code:200 message:"successful operation",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) registerUsingPOSTWithRegisterUser: (SWGRegisterUser*) registerUser
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;



@end
