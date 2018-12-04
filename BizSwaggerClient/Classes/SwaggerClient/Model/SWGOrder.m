#import "SWGOrder.h"

@implementation SWGOrder

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"amount": @"amount", @"appPayParam": @"appPayParam", @"companyId": @"companyId", @"companyName": @"companyName", @"createTime": @"createTime", @"email": @"email", @"_id": @"id", @"invoiceStatus": @"invoiceStatus", @"payAmount": @"payAmount", @"payStatus": @"payStatus", @"reportDownLoadUrl": @"reportDownLoadUrl", @"type": @"type", @"username": @"username", @"voucherId": @"voucherId" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"amount", @"appPayParam", @"companyId", @"companyName", @"createTime", @"email", @"_id", @"invoiceStatus", @"payAmount", @"payStatus", @"reportDownLoadUrl", @"type", @"username", @"voucherId"];
  return [optionalProperties containsObject:propertyName];
}

@end
