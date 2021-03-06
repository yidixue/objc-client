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





@protocol SWGCompanyShareHolder
@end

@interface SWGCompanyShareHolder : SWGObject

/* 认缴出资 [optional]
 */
@property(nonatomic) NSString* capital;
/* 股东公司ID [optional]
 */
@property(nonatomic) NSString* companyId;
/* 股东姓名 [optional]
 */
@property(nonatomic) NSString* name;
/* 股东人员ID [optional]
 */
@property(nonatomic) NSString* personId;
/* 持股比例 [optional]
 */
@property(nonatomic) NSString* retio;

@end
