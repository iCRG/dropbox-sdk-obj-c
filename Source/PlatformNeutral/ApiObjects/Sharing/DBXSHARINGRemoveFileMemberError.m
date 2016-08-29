///
/// Auto-generated by Stone, do not modify.
///

#import "DBXSHARINGMemberAccessLevelResult.h"
#import "DBXSHARINGRemoveFileMemberError.h"
#import "DBXSHARINGSharingFileAccessError.h"
#import "DBXSHARINGSharingUserError.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXSHARINGRemoveFileMemberError 

@synthesize userError = _userError;
@synthesize accessError = _accessError;
@synthesize noExplicitAccess = _noExplicitAccess;

- (instancetype)initWithUserError:(DBXSHARINGSharingUserError *)userError {
    self = [super init];
    if (self) {
        _tag = DBXSHARINGRemoveFileMemberErrorUserError;
        _userError = userError;
    }
    return self;
}

- (instancetype)initWithAccessError:(DBXSHARINGSharingFileAccessError *)accessError {
    self = [super init];
    if (self) {
        _tag = DBXSHARINGRemoveFileMemberErrorAccessError;
        _accessError = accessError;
    }
    return self;
}

- (instancetype)initWithNoExplicitAccess:(DBXSHARINGMemberAccessLevelResult *)noExplicitAccess {
    self = [super init];
    if (self) {
        _tag = DBXSHARINGRemoveFileMemberErrorNoExplicitAccess;
        _noExplicitAccess = noExplicitAccess;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self) {
        _tag = DBXSHARINGRemoveFileMemberErrorOther;
    }
    return self;
}

- (BOOL)isUserError {
    return _tag == DBXSHARINGRemoveFileMemberErrorUserError;
}

- (BOOL)isAccessError {
    return _tag == DBXSHARINGRemoveFileMemberErrorAccessError;
}

- (BOOL)isNoExplicitAccess {
    return _tag == DBXSHARINGRemoveFileMemberErrorNoExplicitAccess;
}

- (BOOL)isOther {
    return _tag == DBXSHARINGRemoveFileMemberErrorOther;
}

- (NSString *)getTagName {
    switch (_tag) {
        case DBXSHARINGRemoveFileMemberErrorUserError:
           return @"DBXSHARINGRemoveFileMemberErrorUserError";
        case DBXSHARINGRemoveFileMemberErrorAccessError:
           return @"DBXSHARINGRemoveFileMemberErrorAccessError";
        case DBXSHARINGRemoveFileMemberErrorNoExplicitAccess:
           return @"DBXSHARINGRemoveFileMemberErrorNoExplicitAccess";
        case DBXSHARINGRemoveFileMemberErrorOther:
           return @"DBXSHARINGRemoveFileMemberErrorOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

- (DBXSHARINGSharingUserError *)userError {
    if (![self isUserError]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required `DBXSHARINGRemoveFileMemberErrorUserError`, but was %@.", [self getTagName]];
    }
    return _userError;
}

- (DBXSHARINGSharingFileAccessError *)accessError {
    if (![self isAccessError]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required `DBXSHARINGRemoveFileMemberErrorAccessError`, but was %@.", [self getTagName]];
    }
    return _accessError;
}

- (DBXSHARINGMemberAccessLevelResult *)noExplicitAccess {
    if (![self isNoExplicitAccess]) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required `DBXSHARINGRemoveFileMemberErrorNoExplicitAccess`, but was %@.", [self getTagName]];
    }
    return _noExplicitAccess;
}

+ (NSDictionary *)serialize:(id)instance {
    return [DBXSHARINGRemoveFileMemberErrorSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXSHARINGRemoveFileMemberErrorSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXSHARINGRemoveFileMemberErrorSerializer serialize:self] description];
}

@end


@implementation DBXSHARINGRemoveFileMemberErrorSerializer 

+ (NSDictionary *)serialize:(DBXSHARINGRemoveFileMemberError *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isUserError]) {
        jsonDict = [[DBXSHARINGSharingUserErrorSerializer serialize:valueObj.userError] mutableCopy];
        jsonDict[@".tag"] = @"user_error";
    }
    else if ([valueObj isAccessError]) {
        jsonDict = [[DBXSHARINGSharingFileAccessErrorSerializer serialize:valueObj.accessError] mutableCopy];
        jsonDict[@".tag"] = @"access_error";
    }
    else if ([valueObj isNoExplicitAccess]) {
        jsonDict = [[DBXSHARINGMemberAccessLevelResultSerializer serialize:valueObj.noExplicitAccess] mutableCopy];
        jsonDict[@".tag"] = @"no_explicit_access";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DBXSHARINGRemoveFileMemberError *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"user_error"]) {
        DBXSHARINGSharingUserError *userError = [DBXSHARINGSharingUserErrorSerializer deserialize:valueDict[@"user_error"]];
        return [[DBXSHARINGRemoveFileMemberError alloc] initWithUserError:userError];
    }
    else if ([tag isEqualToString:@"access_error"]) {
        DBXSHARINGSharingFileAccessError *accessError = [DBXSHARINGSharingFileAccessErrorSerializer deserialize:valueDict[@"access_error"]];
        return [[DBXSHARINGRemoveFileMemberError alloc] initWithAccessError:accessError];
    }
    else if ([tag isEqualToString:@"no_explicit_access"]) {
        DBXSHARINGMemberAccessLevelResult *noExplicitAccess = [DBXSHARINGMemberAccessLevelResultSerializer deserialize:valueDict];
        return [[DBXSHARINGRemoveFileMemberError alloc] initWithNoExplicitAccess:noExplicitAccess];
    }
    else if ([tag isEqualToString:@"other"]) {
        return [[DBXSHARINGRemoveFileMemberError alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTag" reason:@"Tag has an invalid value." userInfo:nil]);
}

@end