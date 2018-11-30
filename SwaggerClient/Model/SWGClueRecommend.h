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





@protocol SWGClueRecommend
@end

@interface SWGClueRecommend : SWGObject

/* 认证状态(0未认证、1待审核、2己认证) [optional]
 */
@property(nonatomic) NSString* authStatus;
/* 公司ID [optional]
 */
@property(nonatomic) NSString* companyId;
/* 公司名称 [optional]
 */
@property(nonatomic) NSString* companyName;
/* 线索内容 [optional]
 */
@property(nonatomic) NSString* content;
/* 公司ID [optional]
 */
@property(nonatomic) NSString* _id;
/* 公司名称 [optional]
 */
@property(nonatomic) NSString* name;
/* 人员ID [optional]
 */
@property(nonatomic) NSString* pid;
/* 职位 [optional]
 */
@property(nonatomic) NSString* position;
/* 产品图片 [optional]
 */
@property(nonatomic) NSString* productImages;
/* 发布时间 [optional]
 */
@property(nonatomic) NSString* publishTime;
/* 线索类型(1需求线索、2供应线索) [optional]
 */
@property(nonatomic) NSString* type;
/* 用户中文名 [optional]
 */
@property(nonatomic) NSString* userCnName;
/* 合作地区 [optional]
 */
@property(nonatomic) NSString* zoneName;

@end
