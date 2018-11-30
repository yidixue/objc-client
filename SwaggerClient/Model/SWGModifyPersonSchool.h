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





@protocol SWGModifyPersonSchool
@end

@interface SWGModifyPersonSchool : SWGObject

/* 学位 
 */
@property(nonatomic) NSString* backgd;
/* 结束时间 [optional]
 */
@property(nonatomic) NSString* etime;
/* ID 
 */
@property(nonatomic) NSString* _id;
/* 专业 [optional]
 */
@property(nonatomic) NSString* speciality;
/* 学校名称 
 */
@property(nonatomic) NSString* stdName;
/* 开始时间 [optional]
 */
@property(nonatomic) NSString* stime;

@end
