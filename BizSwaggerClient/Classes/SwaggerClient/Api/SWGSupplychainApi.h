#import <Foundation/Foundation.h>
#import "SWGCompanyClueApiResponse.h"
#import "SWGPhoneClueApiResponse.h"
#import "SWGSupplychainApiResponse.h"
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



@interface SWGSupplychainApi: NSObject <SWGApi>

extern NSString* kSWGSupplychainApiErrorDomain;
extern NSInteger kSWGSupplychainApiMissingParamErrorCode;

-(instancetype) initWithApiClient:(SWGApiClient *)apiClient NS_DESIGNATED_INITIALIZER;

/// 查询线索详情
/// 
///
/// @param companyId 公司ID
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGSupplychainApiResponse*
-(NSURLSessionTask*) getClueDetailUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGSupplychainApiResponse* output, NSError* error)) handler;


/// 查询客户线索
/// 
///
/// @param companyId 公司ID
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGCompanyClueApiResponse*
-(NSURLSessionTask*) getCustomerCluesUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyClueApiResponse* output, NSError* error)) handler;


/// 查询电话线索
/// 
///
/// @param companyId 公司ID
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGPhoneClueApiResponse*
-(NSURLSessionTask*) getPhoneCluesUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGPhoneClueApiResponse* output, NSError* error)) handler;


/// 查询供应商线索
/// 
///
/// @param companyId 公司ID
/// @param loginToken 登录令牌 (optional)
/// 
///  code:200 message:"successful operation",
///  code:401 message:"Unauthorized",
///  code:403 message:"Forbidden",
///  code:404 message:"Not Found"
///
/// @return SWGCompanyClueApiResponse*
-(NSURLSessionTask*) getSupplierCluesUsingGETWithCompanyId: (NSString*) companyId
    loginToken: (NSString*) loginToken
    completionHandler: (void (^)(SWGCompanyClueApiResponse* output, NSError* error)) handler;



@end
