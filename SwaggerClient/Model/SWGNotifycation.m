#import "SWGNotifycation.h"

@implementation SWGNotifycation

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"body": @"body", @"createTime": @"createTime", @"displayType": @"displayType", @"_id": @"id", @"readFlag": @"readFlag" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"body", @"createTime", @"displayType", @"_id", @"readFlag"];
  return [optionalProperties containsObject:propertyName];
}

@end
