#import "SWGPersonSchool.h"

@implementation SWGPersonSchool

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"backgd": @"backgd", @"etime": @"etime", @"_id": @"id", @"pid": @"pid", @"speciality": @"speciality", @"stdName": @"stdName", @"stime": @"stime" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"backgd", @"etime", @"_id", @"pid", @"speciality", @"stdName", @"stime"];
  return [optionalProperties containsObject:propertyName];
}

@end
