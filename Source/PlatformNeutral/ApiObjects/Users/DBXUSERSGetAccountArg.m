///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXUSERSGetAccountArg.h"

@implementation DBXUSERSGetAccountArg 

- (instancetype)initWithAccountId:(NSString *)accountId {
    [DBXStoneValidators stringValidator:@(40) maxLength:@(40) pattern:nil](accountId);

    self = [super init];
    if (self) {
        _accountId = accountId;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)instance {
    return [DBXUSERSGetAccountArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXUSERSGetAccountArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXUSERSGetAccountArgSerializer serialize:self] description];
}

@end


@implementation DBXUSERSGetAccountArgSerializer 

+ (NSDictionary *)serialize:(DBXUSERSGetAccountArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"account_id"] = valueObj.accountId;

    return jsonDict;
}

+ (DBXUSERSGetAccountArg *)deserialize:(NSDictionary *)valueDict {
    NSString *accountId = valueDict[@"account_id"];

    return [[DBXUSERSGetAccountArg alloc] initWithAccountId:accountId];
}

@end