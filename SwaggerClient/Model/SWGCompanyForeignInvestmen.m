#import "SWGCompanyForeignInvestmen.h"

@implementation SWGCompanyForeignInvestmen

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"capital": @"capital", @"capitalContributionRatio": @"capitalContributionRatio", @"companyId": @"companyId", @"companyName": @"companyName", @"legalPerson": @"legalPerson", @"openDate": @"openDate", @"operStatus": @"operStatus" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"capital", @"capitalContributionRatio", @"companyId", @"companyName", @"legalPerson", @"openDate", @"operStatus"];
  return [optionalProperties containsObject:propertyName];
}

@end
