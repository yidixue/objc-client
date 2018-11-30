#import "SWGModifyClue.h"

@implementation SWGModifyClue

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"content": @"content", @"_id": @"id", @"name": @"name", @"productImages": @"productImages", @"selfVisible": @"selfVisible", @"type": @"type", @"validity": @"validity", @"zoneCode": @"zoneCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"content", @"_id", @"name", @"productImages", @"selfVisible", @"type", @"validity", @"zoneCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
