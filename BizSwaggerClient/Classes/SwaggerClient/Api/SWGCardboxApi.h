#import <Foundation/Foundation.h>
#import "SWGCreateCard.h"
#import "SWGDefaultApiResponse.h"
#import "SWGPageCardApiResponse.h"
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



@interface SWGCardboxApi: NSObject <SWGApi>

extern NSString* kSWGCardboxApiErrorDomain;
extern NSInteger kSWGCardboxApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 获取名片列表
/// 
///
/// @param username 用户名
/// @param pageNumber 页数
/// @param pageSize 数量
/// @param loginToken 登录令牌 (optional)
/// @param keyword 关键字 (optional)
/// @param clueId 线索ID (optional)
/// @param lable 标签(normal普通的、important重要的) (optional)
/// @param handStatus 投递状态(0未投递、1已投递) (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGPageCardApiResponse*
-(NSURLSessionTask*) getCardsUsingGETWithUsername: (NSString*) username
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    keyword: (NSString*) keyword
    clueId: (NSString*) clueId
    lable: (NSString*) lable
    handStatus: (NSNumber*) handStatus
    completionHandler: (void (^)(SWGPageCardApiResponse* output, NSError* error)) handler;


/// 投递名片
/// 
///
/// @param username 用户名
/// @param createCard 投递对象
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) handNameCardUsingPOSTWithUsername: (NSString*) username
    createCard: (SWGCreateCard*) createCard
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;


/// 修改名片标签
/// 
///
/// @param username 用户名
/// @param _id 名片ID
/// @param lable 标签(normal普通的、important重要的)
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) modifyCardLableUsingGETWithUsername: (NSString*) username
    _id: (NSString*) _id
    lable: (NSString*) lable
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;


/// 删除名片
/// 
///
/// @param username 用户名
/// @param _id 名片ID
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:204 message:"No Content",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) removeUsingDELETEWithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;



@end