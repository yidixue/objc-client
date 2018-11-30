#import "SWGClueDetail.h"

@implementation SWGClueDetail

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"content": @"content", @"createBy": @"createBy", @"dueDate": @"dueDate", @"_id": @"id", @"name": @"name", @"person": @"person", @"productImages": @"productImages", @"publishTime": @"publishTime", @"selfClue": @"selfClue", @"selfVisible": @"selfVisible", @"type": @"type", @"validity": @"validity", @"visitNum": @"visitNum", @"zoneCode": @"zoneCode", @"zoneName": @"zoneName" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"content", @"createBy", @"dueDate", @"_id", @"name", @"person", @"productImages", @"publishTime", @"selfClue", @"selfVisible", @"type", @"validity", @"visitNum", @"zoneCode", @"zoneName"];
  return [optionalProperties containsObject:propertyName];
}

@end
