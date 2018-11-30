#import "SWGCompanyBaseInfo.h"

@implementation SWGCompanyBaseInfo

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
  return [[JSONKeyMapper alloc] initWithModelToJSONDictionary:@{ @"business": @"business", @"industryCode": @"industryCode", @"industryName": @"industryName", @"legalRepresentative": @"legalRepresentative", @"name": @"name", @"operTerm": @"operTerm", @"regAddress": @"regAddress", @"regCapital": @"regCapital", @"regCodeComm": @"regCodeComm", @"regDate": @"regDate", @"regStatus": @"regStatus", @"type": @"type", @"website": @"website", @"zone": @"zone" }];
}

/**
 * Indicates whether the property with the given name is optional.
 * If `propertyName` is optional, then return `YES`, otherwise return `NO`.
 * This method is used by `JSONModel`.
 */
+ (BOOL)propertyIsOptional:(NSString *)propertyName {

  NSArray *optionalProperties = @[@"business", @"industryCode", @"industryName", @"legalRepresentative", @"name", @"operTerm", @"regAddress", @"regCapital", @"regCodeComm", @"regDate", @"regStatus", @"type", @"website", @"zone"];
  return [optionalProperties containsObject:propertyName];
}

@end
