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





@protocol SWGCreateAuth
@end

@interface SWGCreateAuth : SWGObject

/* 名片头像(认证类型为card需要填写) [optional]
 */
@property(nonatomic) NSString* cardImages;
/* 认证类型(dingtalk钉钉 card名片) 
 */
@property(nonatomic) NSString* type;

@end
