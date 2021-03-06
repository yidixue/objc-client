#import <Foundation/Foundation.h>
#import "SWGClueComplaint.h"
#import "SWGClueDetailApiResponse.h"
#import "SWGClueListApiResponse.h"
#import "SWGClueRecommendApiResponse.h"
#import "SWGClueVisitReportApiResponse.h"
#import "SWGCompanyAutoCompleteApiResponse.h"
#import "SWGCreateClue.h"
#import "SWGDefaultApiResponse.h"
#import "SWGModifyClue.h"
#import "SWGPageClueApiResponse.h"
#import "SWGSearchHotWordApiResponse.h"
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



@interface SWGClueApi: NSObject <SWGApi>

extern NSString* kSWGClueApiErrorDomain;
extern NSInteger kSWGClueApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 线索举报
/// 
///
/// @param username 用户名
/// @param body 线索举报对象
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) complaintUsingPOSTWithUsername: (NSString*) username
    body: (SWGClueComplaint*) body
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;


/// 发布线索
/// 
///
/// @param username 用户名
/// @param body 线索对象
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) createUsingPOSTWithUsername: (NSString*) username
    body: (SWGCreateClue*) body
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;


/// 线索详情
/// 
///
/// @param clueId 线索ID
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGClueDetailApiResponse*
-(NSURLSessionTask*) detailUsingGETWithClueId: (NSString*) clueId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGClueDetailApiResponse* output, NSError* error)) handler;


/// 获取线索列表
/// 
///
/// @param ids 线索ID数组
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGClueListApiResponse*
-(NSURLSessionTask*) getClueListByIdsUsingGETWithIds: (NSString*) ids
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGClueListApiResponse* output, NSError* error)) handler;


/// 获取线索访问记录列表
/// 
///
/// @param username 用户名
/// @param clueId 线索ID
/// @param timeType 时间类型(day天、week周)
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGClueVisitReportApiResponse*
-(NSURLSessionTask*) getClueVisitReportUsingGETWithUsername: (NSString*) username
    clueId: (NSString*) clueId
    timeType: (NSString*) timeType
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGClueVisitReportApiResponse* output, NSError* error)) handler;


/// 获取线索列表
/// 
///
/// @param username 用户名
/// @param pageNumber 页数
/// @param pageSize 数量
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGPageClueApiResponse*
-(NSURLSessionTask*) getListUsingGETWithUsername: (NSString*) username
    pageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGPageClueApiResponse* output, NSError* error)) handler;


/// 获取我的线索推荐列表
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
/// @return SWGClueRecommendApiResponse*
-(NSURLSessionTask*) getMyRecommendsUsingGETWithUsername: (NSString*) username
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGClueRecommendApiResponse* output, NSError* error)) handler;


/// 产品搜索下拉提示
/// 
///
/// @param name 产品名称
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGCompanyAutoCompleteApiResponse*
-(NSURLSessionTask*) getProductAutoCompleteUsingGETWithName: (NSString*) name
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyAutoCompleteApiResponse* output, NSError* error)) handler;


/// 获取线索推荐列表
/// 
///
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGClueRecommendApiResponse*
-(NSURLSessionTask*) getRecommendsUsingGETWithLoginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGClueRecommendApiResponse* output, NSError* error)) handler;


/// 搜索热词列表
/// 
///
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGSearchHotWordApiResponse*
-(NSURLSessionTask*) getSearchHotWordsUsingGETWithLoginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGSearchHotWordApiResponse* output, NSError* error)) handler;


/// 修改线索
/// 
///
/// @param username 用户名
/// @param body 线索对象
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:201 message:"Created",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) modifyUsingPOSTWithUsername: (NSString*) username
    body: (SWGModifyClue*) body
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;


/// 我的线索详情
/// 
///
/// @param username 用户名
/// @param clueId 线索ID
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGClueDetailApiResponse*
-(NSURLSessionTask*) mydetailUsingGETWithUsername: (NSString*) username
    clueId: (NSString*) clueId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGClueDetailApiResponse* output, NSError* error)) handler;


/// 删除线索
/// 
///
/// @param username 用户名
/// @param _id 线索ID
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:204 message:"No Content",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden"
///
/// @return SWGDefaultApiResponse*
-(NSURLSessionTask*) removeUsingDELETE1WithUsername: (NSString*) username
    _id: (NSString*) _id
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGDefaultApiResponse* output, NSError* error)) handler;


/// 搜索线索
/// 
///
/// @param pageNumber 页数
/// @param pageSize 数量
/// @param loginToken 登录令牌 (optional)
/// @param type 线索类型 (optional)
/// @param name 线索名称 (optional)
/// @param identityAuthStatus 认证状态 (optional)
/// @param zoneCode 地区代码 (optional)
/// @param companyId 公司ID (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGPageClueApiResponse*
-(NSURLSessionTask*) searchUsingGETWithPageNumber: (NSNumber*) pageNumber
    pageSize: (NSNumber*) pageSize
    loginToken: (NSString*) loginToken
    type: (NSString*) type
    name: (NSString*) name
    identityAuthStatus: (NSString*) identityAuthStatus
    zoneCode: (NSString*) zoneCode
    companyId: (NSString*) companyId
    completionHandler: (void (^)(SWGPageClueApiResponse* output, NSError* error)) handler;



@end
