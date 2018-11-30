#import "SWGAppPayParam.h"

@implementation SWGAppPayParam

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"nonceStr": @"nonceStr", @"partnerId": @"partnerId", @"pkg": @"pkg", @"prepayId": @"prepayId", @"sign": @"sign", @"timeStamp": @"timeStamp" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"nonceStr", @"partnerId", @"pkg", @"prepayId", @"sign", @"timeStamp"];
  return [optionalProperties containsObject:propertyName];
}

@end
