///
/// Auto-generated by Stone, do not modify.
///

#import "DbxSharingShareFolderErrorBase.h"
#import "DbxSharingSharePathError.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxSharingShareFolderErrorBase 

- (instancetype)initWithEmailUnverified {
    self = [super init];
    if (self != nil) {
        _tag = (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseEmailUnverified;
    }
    return self;
}

- (instancetype)initWithBadPath:(DbxSharingSharePathError *)badPath {
    self = [super init];
    if (self != nil) {
        _tag = (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseBadPath;
        _badPath = badPath;
    }
    return self;
}

- (instancetype)initWithTeamPolicyDisallowsMemberPolicy {
    self = [super init];
    if (self != nil) {
        _tag = (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseTeamPolicyDisallowsMemberPolicy;
    }
    return self;
}

- (instancetype)initWithDisallowedSharedLinkPolicy {
    self = [super init];
    if (self != nil) {
        _tag = (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseDisallowedSharedLinkPolicy;
    }
    return self;
}

- (instancetype)initWithOther {
    self = [super init];
    if (self != nil) {
        _tag = (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseOther;
    }
    return self;
}

- (BOOL)isEmailUnverified {
    return _tag == (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseEmailUnverified;
}

- (BOOL)isBadPath {
    return _tag == (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseBadPath;
}

- (BOOL)isTeamPolicyDisallowsMemberPolicy {
    return _tag == (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseTeamPolicyDisallowsMemberPolicy;
}

- (BOOL)isDisallowedSharedLinkPolicy {
    return _tag == (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseDisallowedSharedLinkPolicy;
}

- (BOOL)isOther {
    return _tag == (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseOther;
}

- (NSString *)getTagName {
    if (_tag == (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseEmailUnverified) {
        return @"(SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseEmailUnverified";
    }
    if (_tag == (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseBadPath) {
        return @"(SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseBadPath";
    }
    if (_tag == (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseTeamPolicyDisallowsMemberPolicy) {
        return @"(SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseTeamPolicyDisallowsMemberPolicy";
    }
    if (_tag == (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseDisallowedSharedLinkPolicy) {
        return @"(SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseDisallowedSharedLinkPolicy";
    }
    if (_tag == (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseOther) {
        return @"(SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseOther";
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

- (DbxSharingSharePathError *)badPath {
    if (_tag != (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseBadPath) {
        [NSException raise:@"IllegalStateException" format:@"Invalid tag: required (SharingShareFolderErrorBaseTag)SharingShareFolderErrorBaseBadPath, but was %@.", [self getTagName]];
    }
    return _badPath;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxSharingShareFolderErrorBaseSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxSharingShareFolderErrorBaseSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxSharingShareFolderErrorBaseSerializer serialize:self] description];
}

@end


@implementation DbxSharingShareFolderErrorBaseSerializer 

+ (NSDictionary *)serialize:(DbxSharingShareFolderErrorBase *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    if ([valueObj isEmailUnverified]) {
        jsonDict[@".tag"] = @"email_unverified";
    }
    else if ([valueObj isBadPath]) {
        jsonDict[@"bad_path"] = [DbxSharingSharePathErrorSerializer serialize:valueObj.badPath];
        jsonDict[@".tag"] = @"bad_path";
    }
    else if ([valueObj isTeamPolicyDisallowsMemberPolicy]) {
        jsonDict[@".tag"] = @"team_policy_disallows_member_policy";
    }
    else if ([valueObj isDisallowedSharedLinkPolicy]) {
        jsonDict[@".tag"] = @"disallowed_shared_link_policy";
    }
    else if ([valueObj isOther]) {
        jsonDict[@".tag"] = @"other";
    }
    else {
        @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
    }

    return jsonDict;
}

+ (DbxSharingShareFolderErrorBase *)deserialize:(NSDictionary *)valueDict {
    NSString *tag = valueDict[@".tag"];

    if ([tag isEqualToString:@"email_unverified"]) {
        return [[DbxSharingShareFolderErrorBase alloc] initWithEmailUnverified];
    }
    if ([tag isEqualToString:@"bad_path"]) {
        DbxSharingSharePathError *badPath = [DbxSharingSharePathErrorSerializer deserialize:valueDict[@"bad_path"]];
        return [[DbxSharingShareFolderErrorBase alloc] initWithBadPath:badPath];
    }
    if ([tag isEqualToString:@"team_policy_disallows_member_policy"]) {
        return [[DbxSharingShareFolderErrorBase alloc] initWithTeamPolicyDisallowsMemberPolicy];
    }
    if ([tag isEqualToString:@"disallowed_shared_link_policy"]) {
        return [[DbxSharingShareFolderErrorBase alloc] initWithDisallowedSharedLinkPolicy];
    }
    if ([tag isEqualToString:@"other"]) {
        return [[DbxSharingShareFolderErrorBase alloc] initWithOther];
    }

    @throw([NSException exceptionWithName:@"InvalidTagEnum" reason:@"Supplied tag enum has an invalid value." userInfo:nil]);
}

@end