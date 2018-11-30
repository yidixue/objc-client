#import "SWGCompanyAndClue.h"

@implementation SWGCompanyAndClue

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"business": @"business", @"_id": @"id", @"indexType": @"indexType", @"legalRepresentative": @"legalRepresentative", @"name": @"name", @"person": @"person", @"productImages": @"productImages", @"products": @"products", @"publishTime": @"publishTime", @"regDate": @"regDate", @"revenueScope": @"revenueScope", @"tags": @"tags", @"type": @"type", @"visitNum": @"visitNum", @"zone": @"zone" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"business", @"_id", @"indexType", @"legalRepresentative", @"name", @"person", @"productImages", @"products", @"publishTime", @"regDate", @"revenueScope", @"tags", @"type", @"visitNum", @"zone"];
  return [optionalProperties containsObject:propertyName];
}

@end
