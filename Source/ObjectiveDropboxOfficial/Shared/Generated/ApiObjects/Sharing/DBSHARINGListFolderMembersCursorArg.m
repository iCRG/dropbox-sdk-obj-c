///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGListFolderMembersCursorArg.h"
#import "DBSHARINGMemberAction.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGListFolderMembersCursorArg

#pragma mark - Constructors

- (instancetype)initWithActions:(NSArray<DBSHARINGMemberAction *> *)actions limit:(NSNumber *)limit {
  [DBStoneValidators nullableValidator:[DBStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil]](actions);
  [DBStoneValidators numericValidator:@(1) maxValue:@(1000)](limit ?: @(1000));

  self = [super init];
  if (self) {
    _actions = actions;
    _limit = limit ?: @(1000);
  }
  return self;
}

- (instancetype)init {
  return [self initWithActions:nil limit:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGListFolderMembersCursorArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGListFolderMembersCursorArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGListFolderMembersCursorArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGListFolderMembersCursorArgSerializer

+ (NSDictionary *)serialize:(DBSHARINGListFolderMembersCursorArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  if (valueObj.actions) {
    jsonDict[@"actions"] = [DBArraySerializer serialize:valueObj.actions
                                              withBlock:^id(id elem) {
                                                return [DBSHARINGMemberActionSerializer serialize:elem];
                                              }];
  }
  jsonDict[@"limit"] = valueObj.limit;

  return jsonDict;
}

+ (DBSHARINGListFolderMembersCursorArg *)deserialize:(NSDictionary *)valueDict {
  NSArray<DBSHARINGMemberAction *> *actions =
      valueDict[@"actions"] ? [DBArraySerializer deserialize:valueDict[@"actions"]
                                                   withBlock:^id(id elem) {
                                                     return [DBSHARINGMemberActionSerializer deserialize:elem];
                                                   }]
                            : nil;
  NSNumber *limit = valueDict[@"limit"] ?: @(1000);

  return [[DBSHARINGListFolderMembersCursorArg alloc] initWithActions:actions limit:limit];
}

@end
