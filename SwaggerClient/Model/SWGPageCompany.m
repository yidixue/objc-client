#import "SWGPageCompany.h"

@implementation SWGPageCompany

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"companyList": @"companyList", @"pageNum": @"pageNum", @"pageSize": @"pageSize", @"total": @"total" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"companyList", @"pageNum", @"pageSize", @"total"];
  return [optionalProperties containsObject:propertyName];
}

@end