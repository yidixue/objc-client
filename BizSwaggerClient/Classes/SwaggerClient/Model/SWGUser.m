#import "SWGUser.h"

@implementation SWGUser

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"authStatus": @"authStatus", @"companyId": @"companyId", @"companyName": @"companyName", @"createTime": @"createTime", @"educationExperience": @"educationExperience", @"email": @"email", @"gender": @"gender", @"_id": @"id", @"industryId": @"industryId", @"industryName": @"industryName", @"job": @"job", @"name": @"name", @"password": @"password", @"roleId": @"roleId", @"username": @"username", @"vipDueDate": @"vipDueDate", @"workExperience": @"workExperience", @"zoneId": @"zoneId", @"zoneName": @"zoneName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"authStatus", @"companyId", @"companyName", @"createTime", @"educationExperience", @"email", @"gender", @"_id", @"industryId", @"industryName", @"job", @"name", @"password", @"roleId", @"username", @"vipDueDate", @"workExperience", @"zoneId", @"zoneName"];
  return [optionalProperties containsObject:propertyName];
}

@end
