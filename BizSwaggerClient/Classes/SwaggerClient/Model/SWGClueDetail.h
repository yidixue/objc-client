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


#import "SWGPerson.h"
@protocol SWGPerson;
@class SWGPerson;



@protocol SWGClueDetail
@end

@interface SWGClueDetail : SWGObject

/* 线索内容 [optional]
 */
@property(nonatomic) NSString* content;
/* 线索创建人 [optional]
 */
@property(nonatomic) NSString* createBy;
/* 到期日期 [optional]
 */
@property(nonatomic) NSString* dueDate;
/* 线索ID [optional]
 */
@property(nonatomic) NSString* _id;
/* 线索名称 [optional]
 */
@property(nonatomic) NSString* name;
/* 名片 [optional]
 */
@property(nonatomic) SWGPerson* person;
/* 产品图片 [optional]
 */
@property(nonatomic) NSString* productImages;
/* 发布时间 [optional]
 */
@property(nonatomic) NSString* publishTime;
/* 自己发布的线索 [optional]
 */
@property(nonatomic) NSNumber* selfClue;
/* 自己可见 [optional]
 */
@property(nonatomic) NSNumber* selfVisible;
/* 线索类型(1销售线索、2供应线索) [optional]
 */
@property(nonatomic) NSString* type;
/* 有效期(WEEK周，MONTH月，HALF_YEAR半年、YEAR年) [optional]
 */
@property(nonatomic) NSString* validity;
/* 浏览量 [optional]
 */
@property(nonatomic) NSNumber* visitNum;
/* 地区代码 [optional]
 */
@property(nonatomic) NSString* zoneCode;
/* 地区名称 [optional]
 */
@property(nonatomic) NSString* zoneName;

@end
