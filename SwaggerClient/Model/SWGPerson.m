#import "SWGPerson.h"

@implementation SWGPerson

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"authStatus": @"authStatus", @"cardboxExistFlag": @"cardboxExistFlag", @"companyId": @"companyId", @"companyName": @"companyName", @"department": @"department", @"email": @"email", @"handStatus": @"handStatus", @"job": @"job", @"mobile": @"mobile", @"name": @"name", @"pid": @"pid", @"profilePhoto": @"profilePhoto", @"wechat": @"wechat" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"authStatus", @"cardboxExistFlag", @"companyId", @"companyName", @"department", @"email", @"handStatus", @"job", @"mobile", @"name", @"pid", @"profilePhoto", @"wechat"];
  return [optionalProperties containsObject:propertyName];
}

@end
