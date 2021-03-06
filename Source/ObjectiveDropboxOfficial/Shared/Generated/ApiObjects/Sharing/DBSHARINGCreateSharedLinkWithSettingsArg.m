///
/// Copyright (c) 2016 Dropbox, Inc. All rights reserved.
///
/// Auto-generated by Stone, do not modify.
///

#import "DBSHARINGCreateSharedLinkWithSettingsArg.h"
#import "DBSHARINGSharedLinkSettings.h"
#import "DBStoneSerializers.h"
#import "DBStoneValidators.h"

#pragma mark - API Object

@implementation DBSHARINGCreateSharedLinkWithSettingsArg

#pragma mark - Constructors

- (instancetype)initWithPath:(NSString *)path settings:(DBSHARINGSharedLinkSettings *)settings {
  [DBStoneValidators stringValidator:nil maxLength:nil
                             pattern:@"(/(.|[\\r\\n])*|id:.*)|(rev:[0-9a-f]{9,})|(ns:[0-9]+(/.*)?)"](path);

  self = [super init];
  if (self) {
    _path = path;
    _settings = settings;
  }
  return self;
}

- (instancetype)initWithPath:(NSString *)path {
  return [self initWithPath:path settings:nil];
}

#pragma mark - Serialization methods

+ (NSDictionary *)serialize:(id)instance {
  return [DBSHARINGCreateSharedLinkWithSettingsArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
  return [DBSHARINGCreateSharedLinkWithSettingsArgSerializer deserialize:dict];
}

#pragma mark - Description method

- (NSString *)description {
  return [[DBSHARINGCreateSharedLinkWithSettingsArgSerializer serialize:self] description];
}

@end

#pragma mark - Serializer Object

@implementation DBSHARINGCreateSharedLinkWithSettingsArgSerializer

+ (NSDictionary *)serialize:(DBSHARINGCreateSharedLinkWithSettingsArg *)valueObj {
  NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

  jsonDict[@"path"] = valueObj.path;
  if (valueObj.settings) {
    jsonDict[@"settings"] = [DBSHARINGSharedLinkSettingsSerializer serialize:valueObj.settings];
  }

  return jsonDict;
}

+ (DBSHARINGCreateSharedLinkWithSettingsArg *)deserialize:(NSDictionary *)valueDict {
  NSString *path = valueDict[@"path"];
  DBSHARINGSharedLinkSettings *settings =
      valueDict[@"settings"] ? [DBSHARINGSharedLinkSettingsSerializer deserialize:valueDict[@"settings"]] : nil;

  return [[DBSHARINGCreateSharedLinkWithSettingsArg alloc] initWithPath:path settings:settings];
}

@end
