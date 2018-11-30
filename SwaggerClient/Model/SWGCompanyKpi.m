#import "SWGCompanyKpi.h"

@implementation SWGCompanyKpi

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"clueNum": @"clueNum", @"customerClueNum": @"customerClueNum", @"discoursePowerGrade": @"discoursePowerGrade", @"enterpriseGrowthForceGrade": @"enterpriseGrowthForceGrade", @"phoneClueNum": @"phoneClueNum", @"priceSensitivityGrade": @"priceSensitivityGrade", @"procurementBudget": @"procurementBudget", @"procurementBudgetGrade": @"procurementBudgetGrade", @"products": @"products", @"revenueScope": @"revenueScope", @"supplierClueNum": @"supplierClueNum", @"tags": @"tags" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"clueNum", @"customerClueNum", @"discoursePowerGrade", @"enterpriseGrowthForceGrade", @"phoneClueNum", @"priceSensitivityGrade", @"procurementBudget", @"procurementBudgetGrade", @"products", @"revenueScope", @"supplierClueNum", @"tags"];
  return [optionalProperties containsObject:propertyName];
}

@end
