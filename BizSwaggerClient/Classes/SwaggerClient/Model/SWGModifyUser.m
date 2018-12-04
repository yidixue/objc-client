#import "SWGModifyUser.h"

@implementation SWGModifyUser

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"companyId": @"companyId", @"companyName": @"companyName", @"department": @"department", @"email": @"email", @"job": @"job", @"name": @"name", @"pid": @"pid" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"companyId", @"companyName", @"department", @"email", @"job", @"name", @"pid"];
  return [optionalProperties containsObject:propertyName];
}

@end
