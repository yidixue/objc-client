#import "SWGIndustryFinanceKpi.h"

@implementation SWGIndustryFinanceKpi

- (instancetype)init {
  self = [super init];
  if (self) {
    // initialize property's default value, if any
    
  }
  return self;
}


/**
 * Maps json key to property name.
 * This method is used by `JSONModel`.
 */
+ (JSONKeyMapper *)keyMapper {
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"cityAmountOfLoss": @"cityAmountOfLoss", @"cityConcentrationRatio": @"cityConcentrationRatio", @"cityNumOfCompany": @"cityNumOfCompany", @"cityNumOfLossCompany": @"cityNumOfLossCompany", @"cityOperationRevenue": @"cityOperationRevenue", @"citySalesProfit": @"citySalesProfit", @"countryAmountOfLoss": @"countryAmountOfLoss", @"countryConcentrationRatio": @"countryConcentrationRatio", @"countryNumOfCompany": @"countryNumOfCompany", @"countryNumOfLossCompany": @"countryNumOfLossCompany", @"countryOperationRevenue": @"countryOperationRevenue", @"countrySalesProfit": @"countrySalesProfit", @"provinceMarketShare": @"provinceMarketShare" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"cityAmountOfLoss", @"cityConcentrationRatio", @"cityNumOfCompany", @"cityNumOfLossCompany", @"cityOperationRevenue", @"citySalesProfit", @"countryAmountOfLoss", @"countryConcentrationRatio", @"countryNumOfCompany", @"countryNumOfLossCompany", @"countryOperationRevenue", @"countrySalesProfit", @"provinceMarketShare"];
  return [optionalProperties containsObject:propertyName];
}

@end
