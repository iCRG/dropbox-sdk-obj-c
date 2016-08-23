///
/// Auto-generated by Stone, do not modify.
///

#import "DbxPropertiesPropertyField.h"
#import "DbxPropertiesPropertyGroup.h"
#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"

@implementation DbxPropertiesPropertyGroup 

- (instancetype)initWithTemplateId:(NSString *)templateId fields:(NSArray<DbxPropertiesPropertyField *> *)fields {
    [DbxStoneValidators stringValidator:[NSNumber numberWithInt:1] maxLength:nil pattern:@"(/|ptid:).*"](templateId);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](fields);

    self = [super init];
    if (self != nil) {
        _templateId = templateId;
        _fields = fields;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxPropertiesPropertyGroupSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxPropertiesPropertyGroupSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxPropertiesPropertyGroupSerializer serialize:self] description];
}

@end


@implementation DbxPropertiesPropertyGroupSerializer 

+ (NSDictionary *)serialize:(DbxPropertiesPropertyGroup *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"template_id"] = [DbxStringSerializer serialize:valueObj.templateId];
    jsonDict[@"fields"] = [DbxArraySerializer serialize:valueObj.fields withBlock:^id(id obj) { return [DbxPropertiesPropertyFieldSerializer serialize:obj]; }];

    return jsonDict;
}

+ (DbxPropertiesPropertyGroup *)deserialize:(NSDictionary *)valueDict {
    NSString *templateId = [DbxStringSerializer deserialize:valueDict];
    NSArray<DbxPropertiesPropertyField *> *fields = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxPropertiesPropertyFieldSerializer deserialize:obj]; }];

    return [[DbxPropertiesPropertyGroup alloc] initWithTemplateId:templateId fields:fields];
}

@end