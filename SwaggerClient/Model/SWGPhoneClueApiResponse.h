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


#import "SWGPhoneClue.h"
@protocol SWGPhoneClue;
@class SWGPhoneClue;



@protocol SWGPhoneClueApiResponse
@end

@interface SWGPhoneClueApiResponse : SWGObject


@property(nonatomic) NSNumber* code;
/* data [optional]
 */
@property(nonatomic) NSArray<SWGPhoneClue>* data;

@property(nonatomic) NSString* message;

@end
