#import "SWGOrderInvoice.h"

@implementation SWGOrderInvoice

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"accountNumber": @"accountNumber", @"amount": @"amount", @"companyAddress": @"companyAddress", @"companyName": @"companyName", @"companyPhone": @"companyPhone", @"depositBank": @"depositBank", @"generalTaxpayer": @"generalTaxpayer", @"_id": @"id", @"mailAddress": @"mailAddress", @"receiverName": @"receiverName", @"receiverPhone": @"receiverPhone", @"status": @"status", @"taxId": @"taxId", @"type": @"type", @"username": @"username", @"zipCode": @"zipCode" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"accountNumber", @"amount", @"companyAddress", @"companyName", @"companyPhone", @"depositBank", @"generalTaxpayer", @"_id", @"mailAddress", @"receiverName", @"receiverPhone", @"status", @"taxId", @"type", @"username", @"zipCode"];
  return [optionalProperties containsObject:propertyName];
}

@end
