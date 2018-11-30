#import "SWGCompany.h"

@implementation SWGCompany

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"business": @"business", @"clueNum": @"clueNum", @"_id": @"id", @"legalRepresentative": @"legalRepresentative", @"name": @"name", @"products": @"products", @"regDate": @"regDate", @"revenueScope": @"revenueScope", @"tags": @"tags", @"zone": @"zone" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"business", @"clueNum", @"_id", @"legalRepresentative", @"name", @"products", @"regDate", @"revenueScope", @"tags", @"zone"];
  return [optionalProperties containsObject:propertyName];
}

@end
