///
/// Auto-generated by Stone, do not modify.
///

#import "DBXSHARINGSharedLinkSettingsError.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXSHARINGSharedLinkSettingsError 

- (instancetype)initWithInvalidSettings {
    self = [super init];
    if (self) {
        _tag = DBXSHARINGSharedLinkSettingsErrorInvalidSettings;
    }
    return self;
}

- (instancetype)initWithNotAuthorized {
    self = [super init];
    if (self) {
        _tag = DBXSHARINGSharedLinkSettingsErrorNotAuthorized;
    }
    return self;
}

- (BOOL)isInvalidSettings {
    return _tag == DBXSHARINGSharedLinkSettingsErrorInvalidSettings;
}

- (BOOL)isNotAuthorized {
    return _tag == DBXSHARINGSharedLinkSettingsErrorNotAuthorized;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXSHARINGSharedLinkSettingsErrorInvalidSettings:
           return @"DBXSHARINGSharedLinkSettingsErrorInvalidSettings";
        case DBXSHARINGSharedLinkSettingsErrorNotAuthorized:
           return @"DBXSHARINGSharedLinkSettingsErrorNotAuthorized";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

+ (NSDictionary *)serialize:(id)instance {
    return [DBXSHARINGSharedLinkSettingsErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXSHARINGSharedLinkSettingsErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXSHARINGSharedLinkSettingsErrorSerializer serialize:self] description];
}

@end


@implementation DBXSHARINGSharedLinkSettingsErrorSerializer 

+ (NSDictionary *)serialize:(DBXSHARINGSharedLinkSettingsError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isInvalidSettings]) {
        jsonDict[@".tag"] = @"invalid_settings";
    }
    else if ([valueObj isNotAuthorized]) {
        jsonDict[@".tag"] = @"not_authorized";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXSHARINGSharedLinkSettingsError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"invalid_settings"]) {
        return [[DBXSHARINGSharedLinkSettingsError alloc] initWithInvalidSettings];
    }
    else if ([tag isEqualToString:@"not_authorized"]) {
        return [[DBXSHARINGSharedLinkSettingsError alloc] initWithNotAuthorized];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end