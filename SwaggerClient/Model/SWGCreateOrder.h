#import <Foundation/Foundation.h>
#import "SWGObject.h"

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





@protocol SWGCreateOrder
@end

@interface SWGCreateOrder : SWGObject

/* 客户端IP 
 */
@property(nonatomic) NSString* clientIp;
/* 公司ID(类型为3时必填) [optional]
 */
@property(nonatomic) NSString* companyId;
/* 公司ID(类型为3时必填) [optional]
 */
@property(nonatomic) NSString* companyName;
/* 邮箱(类型为3时必填) [optional]
 */
@property(nonatomic) NSString* email;
/* 订单类型(1月会员，2年会员，3财务报告) 
 */
@property(nonatomic) NSString* type;
/* 抵用券ID [optional]
 */
@property(nonatomic) NSString* voucherId;

@end