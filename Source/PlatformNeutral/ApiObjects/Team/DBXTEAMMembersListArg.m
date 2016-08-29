///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMMembersListArg.h"

@implementation DBXTEAMMembersListArg 

- (instancetype)initWithLimit:(NSNumber *)limit includeRemoved:(NSNumber *)includeRemoved {
    [DBXStoneValidators numericValidator:@(1) maxValue:@(1000)](limit ?: @(1000));

    self = [super init];
    if (self) {
        _limit = limit ?: @(1000);
        _includeRemoved = includeRemoved ?: @NO;
    }
    return self;
}

- (instancetype)init {
    return [self initWithLimit:nil includeRemoved:nil];
}

+ (NSDictionary *)serialize:(id)instance {
    return [DBXTEAMMembersListArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMMembersListArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMMembersListArgSerializer serialize:self] description];
}

@end


@implementation DBXTEAMMembersListArgSerializer 

+ (NSDictionary *)serialize:(DBXTEAMMembersListArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"limit"] = valueObj.limit;
    jsonDict[@"include_removed"] = valueObj.includeRemoved;

    return jsonDict;
}

+ (DBXTEAMMembersListArg *)deserialize:(NSDictionary *)valueDict {
    NSNumber *limit = valueDict[@"limit"];
    NSNumber *includeRemoved = valueDict[@"include_removed"];

    return [[DBXTEAMMembersListArg alloc] initWithLimit:limit includeRemoved:includeRemoved];
}

@end