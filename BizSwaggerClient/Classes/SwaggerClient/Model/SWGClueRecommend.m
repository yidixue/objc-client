#import "SWGClueRecommend.h"

@implementation SWGClueRecommend

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"authStatus": @"authStatus", @"companyId": @"companyId", @"companyName": @"companyName", @"content": @"content", @"_id": @"id", @"name": @"name", @"pid": @"pid", @"position": @"position", @"productImages": @"productImages", @"publishTime": @"publishTime", @"type": @"type", @"userCnName": @"userCnName", @"zoneName": @"zoneName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"authStatus", @"companyId", @"companyName", @"content", @"_id", @"name", @"pid", @"position", @"productImages", @"publishTime", @"type", @"userCnName", @"zoneName"];
  return [optionalProperties containsObject:propertyName];
}

@end
