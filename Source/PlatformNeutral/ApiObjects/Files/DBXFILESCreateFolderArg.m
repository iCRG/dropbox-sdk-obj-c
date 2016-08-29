///
/// Auto-generated by Stone, do not modify.
///

#import "DBXFILESCreateFolderArg.h"
#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"

@implementation DBXFILESCreateFolderArg 

- (instancetype)initWithPath:(NSString *)path {
    [DBXStoneValidators stringValidator:nil maxLength:nil pattern:@"(/(.|[\\r\\n])*)|(ns:[0-9]+(/.*)?)"](path);

    self = [super init];
    if (self) {
        _path = path;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)instance {
    return [DBXFILESCreateFolderArgSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXFILESCreateFolderArgSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXFILESCreateFolderArgSerializer serialize:self] description];
}

@end


@implementation DBXFILESCreateFolderArgSerializer 

+ (NSDictionary *)serialize:(DBXFILESCreateFolderArg *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"path"] = valueObj.path;

    return jsonDict;
}

+ (DBXFILESCreateFolderArg *)deserialize:(NSDictionary *)valueDict {
    NSString *path = valueDict[@"path"];

    return [[DBXFILESCreateFolderArg alloc] initWithPath:path];
}

@end