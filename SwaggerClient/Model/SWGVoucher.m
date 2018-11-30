#import "SWGVoucher.h"

@implementation SWGVoucher

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"amount": @"amount", @"createTime": @"createTime", @"dueDate": @"dueDate", @"_id": @"id", @"status": @"status", @"type": @"type", @"username": @"username" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"amount", @"createTime", @"dueDate", @"_id", @"status", @"type", @"username"];
  return [optionalProperties containsObject:propertyName];
}

@end
