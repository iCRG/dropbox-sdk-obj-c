///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMDevicesActive.h"

@implementation DBXTEAMDevicesActive 

- (instancetype)initWithWindows:(NSArray<NSNumber *> *)windows macos:(NSArray<NSNumber *> *)macos linux:(NSArray<NSNumber *> *)linux ios:(NSArray<NSNumber *> *)ios android:(NSArray<NSNumber *> *)android other:(NSArray<NSNumber *> *)other total:(NSArray<NSNumber *> *)total {
    [DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](windows);
    [DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](macos);
    [DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](linux);
    [DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](ios);
    [DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](android);
    [DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](other);
    [DBXStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](total);

    self = [super init];
    if (self) {
        _windows = windows;
        _macos = macos;
        _linux = linux;
        _ios = ios;
        _android = android;
        _other = other;
        _total = total;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)instance {
    return [DBXTEAMDevicesActiveSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMDevicesActiveSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMDevicesActiveSerializer serialize:self] description];
}

@end


@implementation DBXTEAMDevicesActiveSerializer 

+ (NSDictionary *)serialize:(DBXTEAMDevicesActive *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"windows"] = [DBXArraySerializer serialize:valueObj.windows withBlock:^id(id elem) { return elem; }];
    jsonDict[@"macos"] = [DBXArraySerializer serialize:valueObj.macos withBlock:^id(id elem) { return elem; }];
    jsonDict[@"linux"] = [DBXArraySerializer serialize:valueObj.linux withBlock:^id(id elem) { return elem; }];
    jsonDict[@"ios"] = [DBXArraySerializer serialize:valueObj.ios withBlock:^id(id elem) { return elem; }];
    jsonDict[@"android"] = [DBXArraySerializer serialize:valueObj.android withBlock:^id(id elem) { return elem; }];
    jsonDict[@"other"] = [DBXArraySerializer serialize:valueObj.other withBlock:^id(id elem) { return elem; }];
    jsonDict[@"total"] = [DBXArraySerializer serialize:valueObj.total withBlock:^id(id elem) { return elem; }];

    return jsonDict;
}

+ (DBXTEAMDevicesActive *)deserialize:(NSDictionary *)valueDict {
    NSArray<NSNumber *> *windows = [DBXArraySerializer deserialize:valueDict[@"windows"] withBlock:^id(id elem) { return elem; }];
    NSArray<NSNumber *> *macos = [DBXArraySerializer deserialize:valueDict[@"macos"] withBlock:^id(id elem) { return elem; }];
    NSArray<NSNumber *> *linux = [DBXArraySerializer deserialize:valueDict[@"linux"] withBlock:^id(id elem) { return elem; }];
    NSArray<NSNumber *> *ios = [DBXArraySerializer deserialize:valueDict[@"ios"] withBlock:^id(id elem) { return elem; }];
    NSArray<NSNumber *> *android = [DBXArraySerializer deserialize:valueDict[@"android"] withBlock:^id(id elem) { return elem; }];
    NSArray<NSNumber *> *other = [DBXArraySerializer deserialize:valueDict[@"other"] withBlock:^id(id elem) { return elem; }];
    NSArray<NSNumber *> *total = [DBXArraySerializer deserialize:valueDict[@"total"] withBlock:^id(id elem) { return elem; }];

    return [[DBXTEAMDevicesActive alloc] initWithWindows:windows macos:macos linux:linux ios:ios android:android other:other total:total];
}

@end