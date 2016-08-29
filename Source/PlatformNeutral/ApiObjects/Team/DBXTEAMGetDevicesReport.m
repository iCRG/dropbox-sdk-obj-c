///
/// Auto-generated by Stone, do not modify.
///

#import "DBXStoneSerializers.h"
#import "DBXStoneValidators.h"
#import "DBXTEAMBaseDfbReport.h"
#import "DBXTEAMDevicesActive.h"
#import "DBXTEAMGetDevicesReport.h"

@implementation DBXTEAMGetDevicesReport 

- (instancetype)initWithStartDate:(NSString *)startDate active1Day:(DBXTEAMDevicesActive *)active1Day active7Day:(DBXTEAMDevicesActive *)active7Day active28Day:(DBXTEAMDevicesActive *)active28Day {

    self = [super initWithStartDate:startDate];
    if (self) {
        _active1Day = active1Day;
        _active7Day = active7Day;
        _active28Day = active28Day;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)instance {
    return [DBXTEAMGetDevicesReportSerializer serialize:instance];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DBXTEAMGetDevicesReportSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DBXTEAMGetDevicesReportSerializer serialize:self] description];
}

@end


@implementation DBXTEAMGetDevicesReportSerializer 

+ (NSDictionary *)serialize:(DBXTEAMGetDevicesReport *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"start_date"] = valueObj.startDate;
    jsonDict[@"active_1_day"] = [DBXTEAMDevicesActiveSerializer serialize:valueObj.active1Day];
    jsonDict[@"active_7_day"] = [DBXTEAMDevicesActiveSerializer serialize:valueObj.active7Day];
    jsonDict[@"active_28_day"] = [DBXTEAMDevicesActiveSerializer serialize:valueObj.active28Day];

    return jsonDict;
}

+ (DBXTEAMGetDevicesReport *)deserialize:(NSDictionary *)valueDict {
    NSString *startDate = valueDict[@"start_date"];
    DBXTEAMDevicesActive *active1Day = [DBXTEAMDevicesActiveSerializer deserialize:valueDict[@"active_1_day"]];
    DBXTEAMDevicesActive *active7Day = [DBXTEAMDevicesActiveSerializer deserialize:valueDict[@"active_7_day"]];
    DBXTEAMDevicesActive *active28Day = [DBXTEAMDevicesActiveSerializer deserialize:valueDict[@"active_28_day"]];

    return [[DBXTEAMGetDevicesReport alloc] initWithStartDate:startDate active1Day:active1Day active7Day:active7Day active28Day:active28Day];
}

@end