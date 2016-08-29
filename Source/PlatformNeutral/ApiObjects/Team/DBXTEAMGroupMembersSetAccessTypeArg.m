///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMGroupAccessType.h"
#import "DBXTEAMGroupMemberSelector.h"
#import "DBXTEAMGroupMembersSetAccessTypeArg.h"
#import "DBXTEAMGroupSelector.h"
#import "DBXTEAMUserSelectorArg.h"

@implementation DBXTEAMGroupMembersSetAccessTypeArg 

- (instancetype)initWithGroup:(DBXTEAMGroupSelector *)group user:(DBXTEAMUserSelectorArg *)user accessType:(DBXTEAMGroupAccessType *)accessType returnMembers:(NSNumber *)returnMembers {

    self = [super initWithGroup:group user:user];
    if (self) {
        _accessType = accessType;
        _returnMembers = returnMembers ?: @YES;
    }
    return self;
}

- (instancetype)initWithGroup:(DBXTEAMGroupSelector *)group user:(DBXTEAMUserSelectorArg *)user accessType:(DBXTEAMGroupAccessType *)accessType {
    return [self initWithGroup:group user:user accessType:accessType returnMembers:nil];
}

+ (NSDictionary *)serialize:(id)instance {
    return [DBXTEAMGroupMembersSetAccessTypeArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMGroupMembersSetAccessTypeArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMGroupMembersSetAccessTypeArgSerializer serialize:self] description];
}

@end


@implementation DBXTEAMGroupMembersSetAccessTypeArgSerializer 

+ (NSDictionary *)serialize:(DBXTEAMGroupMembersSetAccessTypeArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"group"] = [DBXTEAMGroupSelectorSerializer serialize:valueObj.group];
    jsonDict[@"user"] = [DBXTEAMUserSelectorArgSerializer serialize:valueObj.user];
    jsonDict[@"access_type"] = [DBXTEAMGroupAccessTypeSerializer serialize:valueObj.accessType];
    jsonDict[@"return_members"] = valueObj.returnMembers;

    return jsonDict;
}

+ (DBXTEAMGroupMembersSetAccessTypeArg *)deserialize:(NSDictionary *)valueDict {
    DBXTEAMGroupSelector *group = [DBXTEAMGroupSelectorSerializer deserialize:valueDict[@"group"]];
    DBXTEAMUserSelectorArg *user = [DBXTEAMUserSelectorArgSerializer deserialize:valueDict[@"user"]];
    DBXTEAMGroupAccessType *accessType = [DBXTEAMGroupAccessTypeSerializer deserialize:valueDict[@"access_type"]];
    NSNumber *returnMembers = valueDict[@"return_members"];

    return [[DBXTEAMGroupMembersSetAccessTypeArg alloc] initWithGroup:group user:user accessType:accessType returnMembers:returnMembers];
}

@end