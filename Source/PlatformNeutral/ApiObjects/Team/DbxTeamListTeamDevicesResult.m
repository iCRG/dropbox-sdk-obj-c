///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamListTeamDevicesResult.h"
#import "DbxTeamMemberDevices.h"

@implementation DbxTeamListTeamDevicesResult 

- (instancetype)initWithDevices:(NSArray<DbxTeamMemberDevices *> *)devices hasMore:(NSNumber *)hasMore cursor:(NSString *)cursor {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](devices);

    self = [super init];
    if (self != nil) {
        _devices = devices;
        _hasMore = hasMore;
        _cursor = cursor;
    }
    return self;
}

- (instancetype)initWithDevices:(NSArray<DbxTeamMemberDevices *> *)devices hasMore:(NSNumber *)hasMore {
    return [self initWithDevices:devices hasMore:hasMore cursor:nil];
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamListTeamDevicesResultSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamListTeamDevicesResultSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamListTeamDevicesResultSerializer serialize:self] description];
}

@end


@implementation DbxTeamListTeamDevicesResultSerializer 

+ (NSDictionary *)serialize:(DbxTeamListTeamDevicesResult *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"devices"] = [DbxArraySerializer serialize:valueObj.devices withBlock:^id(id obj) { return [DbxTeamMemberDevicesSerializer serialize:obj]; }];
    jsonDict[@"has_more"] = [DbxBoolSerializer serialize:valueObj.hasMore];
    if (valueObj.cursor != nil) {
        jsonDict[@"cursor"] = [DbxStringSerializer serialize:valueObj.cursor];
    }

    return jsonDict;
}

+ (DbxTeamListTeamDevicesResult *)deserialize:(NSDictionary *)valueDict {
    NSArray<DbxTeamMemberDevices *> *devices = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxTeamMemberDevicesSerializer deserialize:obj]; }];
    NSNumber *hasMore = [DbxBoolSerializer deserialize:valueDict];
    NSString *cursor = valueDict != nil ? [DbxStringSerializer deserialize:valueDict] : nil;

    return [[DbxTeamListTeamDevicesResult alloc] initWithDevices:devices hasMore:hasMore cursor:cursor];
}

@end