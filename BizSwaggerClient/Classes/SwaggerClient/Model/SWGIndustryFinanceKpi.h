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





@protocol SWGIndustryFinanceKpi
@end

@interface SWGIndustryFinanceKpi : SWGObject

/* 地市亏损金额 [optional]
 */
@property(nonatomic) NSNumber* cityAmountOfLoss;
/* 地市行业集中度 [optional]
 */
@property(nonatomic) NSNumber* cityConcentrationRatio;
/* 地市企业数量 [optional]
 */
@property(nonatomic) NSNumber* cityNumOfCompany;
/* 地市亏损企业数量 [optional]
 */
@property(nonatomic) NSNumber* cityNumOfLossCompany;
/* 地市收入总额 [optional]
 */
@property(nonatomic) NSNumber* cityOperationRevenue;
/* 地市利润总额 [optional]
 */
@property(nonatomic) NSNumber* citySalesProfit;
/* 全国亏损金额 [optional]
 */
@property(nonatomic) NSNumber* countryAmountOfLoss;
/* 全国行业集中度 [optional]
 */
@property(nonatomic) NSNumber* countryConcentrationRatio;
/* 全国企业数量 [optional]
 */
@property(nonatomic) NSNumber* countryNumOfCompany;
/* 全国亏损企业数量 [optional]
 */
@property(nonatomic) NSNumber* countryNumOfLossCompany;
/* 全国收入总额 [optional]
 */
@property(nonatomic) NSNumber* countryOperationRevenue;
/* 全国利润总额 [optional]
 */
@property(nonatomic) NSNumber* countrySalesProfit;
/* 年份 [optional]
 */
@property(nonatomic) NSString* provinceMarketShare;

@end
