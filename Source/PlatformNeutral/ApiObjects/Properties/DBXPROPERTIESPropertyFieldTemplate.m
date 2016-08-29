///
/// Auto-generated by Stone, do not modify.
///

#import "DBXPROPERTIESPropertyFieldTemplate.h"
#import "DBXPROPERTIESPropertyType.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXPROPERTIESPropertyFieldTemplate 

- (instancetype)initWithName:(NSString *)name description_:(NSString *)description_ type:(DBXPROPERTIESPropertyType *)type {

    self = [super init];
    if (self) {
        _name = name;
        _description_ = description_;
        _type = type;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)instance {
    return [DBXPROPERTIESPropertyFieldTemplateSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXPROPERTIESPropertyFieldTemplateSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXPROPERTIESPropertyFieldTemplateSerializer serialize:self] description];
}

@end


@implementation DBXPROPERTIESPropertyFieldTemplateSerializer 

+ (NSDictionary *)serialize:(DBXPROPERTIESPropertyFieldTemplate *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"name"] = valueObj.name;
    jsonDict[@"description"] = valueObj.description_;
    jsonDict[@"type"] = [DBXPROPERTIESPropertyTypeSerializer serialize:valueObj.type];

    return jsonDict;
}

+ (DBXPROPERTIESPropertyFieldTemplate *)deserialize:(NSDictionary *)valueDict {
    NSString *name = valueDict[@"name"];
    NSString *description_ = valueDict[@"description"];
    DBXPROPERTIESPropertyType *type = [DBXPROPERTIESPropertyTypeSerializer deserialize:valueDict[@"type"]];

    return [[DBXPROPERTIESPropertyFieldTemplate alloc] initWithName:name description_:description_ type:type];
}

@end