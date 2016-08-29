///
/// Auto-generated by Stone, do not modify.
///

#import "DBXPROPERTIESPropertyField.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXPROPERTIESPropertyField 

- (instancetype)initWithName:(NSString *)name value:(NSString *)value {

    self = [super init];
    if (self) {
        _name = name;
        _value = value;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)instance {
    return [DBXPROPERTIESPropertyFieldSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXPROPERTIESPropertyFieldSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXPROPERTIESPropertyFieldSerializer serialize:self] description];
}

@end


@implementation DBXPROPERTIESPropertyFieldSerializer 

+ (NSDictionary *)serialize:(DBXPROPERTIESPropertyField *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"name"] = valueObj.name;
    jsonDict[@"value"] = valueObj.value;

    return jsonDict;
}

+ (DBXPROPERTIESPropertyField *)deserialize:(NSDictionary *)valueDict {
    NSString *name = valueDict[@"name"];
    NSString *value = valueDict[@"value"];

    return [[DBXPROPERTIESPropertyField alloc] initWithName:name value:value];
}

@end