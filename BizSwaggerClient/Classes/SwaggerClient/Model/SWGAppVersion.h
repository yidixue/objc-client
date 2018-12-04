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





@protocol SWGAppVersion
@end

@interface SWGAppVersion : SWGObject

/* 下载URL [optional]
 */
@property(nonatomic) NSString* downloadUrl;
/* 强制更新 [optional]
 */
@property(nonatomic) NSString* forcedUpdate;

@property(nonatomic) NSNumber* iosPay;
/* APP类型 [optional]
 */
@property(nonatomic) NSString* type;
/* 更新类容 [optional]
 */
@property(nonatomic) NSArray<NSString*>* updateContents;
/* 版本 [optional]
 */
@property(nonatomic) NSString* version;

@end