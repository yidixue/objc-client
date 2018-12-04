#import "SWGIndustryFinance.h"

@implementation SWGIndustryFinance

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"enterpriseNature": @"enterpriseNature", @"industryFinanceKpiList": @"industryFinanceKpiList", @"industryName": @"industryName", @"provinceIndustryFinanceKpiList": @"provinceIndustryFinanceKpiList", @"zoneName": @"zoneName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"enterpriseNature", @"industryFinanceKpiList", @"industryName", @"provinceIndustryFinanceKpiList", @"zoneName"];
  return [optionalProperties containsObject:propertyName];
}

@end
