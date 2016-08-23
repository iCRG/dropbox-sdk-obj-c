///
/// Auto-generated by Stone, do not modify.
///

#import "DbxStoneSerializers.h"
#import "DbxStoneValidators.h"
#import "DbxTeamBaseDfbReport.h"
#import "DbxTeamGetActivityReport.h"

@implementation DbxTeamGetActivityReport 

- (instancetype)initWithStartDate:(NSString *)startDate adds:(NSArray<NSNumber *> *)adds edits:(NSArray<NSNumber *> *)edits deletes:(NSArray<NSNumber *> *)deletes activeUsers28Day:(NSArray<NSNumber *> *)activeUsers28Day activeUsers7Day:(NSArray<NSNumber *> *)activeUsers7Day activeUsers1Day:(NSArray<NSNumber *> *)activeUsers1Day activeSharedFolders28Day:(NSArray<NSNumber *> *)activeSharedFolders28Day activeSharedFolders7Day:(NSArray<NSNumber *> *)activeSharedFolders7Day activeSharedFolders1Day:(NSArray<NSNumber *> *)activeSharedFolders1Day sharedLinksCreated:(NSArray<NSNumber *> *)sharedLinksCreated sharedLinksViewedByTeam:(NSArray<NSNumber *> *)sharedLinksViewedByTeam sharedLinksViewedByOutsideUser:(NSArray<NSNumber *> *)sharedLinksViewedByOutsideUser sharedLinksViewedByNotLoggedIn:(NSArray<NSNumber *> *)sharedLinksViewedByNotLoggedIn sharedLinksViewedTotal:(NSArray<NSNumber *> *)sharedLinksViewedTotal {
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](adds);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](edits);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](deletes);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeUsers28Day);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeUsers7Day);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeUsers1Day);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeSharedFolders28Day);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeSharedFolders7Day);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](activeSharedFolders1Day);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](sharedLinksCreated);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](sharedLinksViewedByTeam);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](sharedLinksViewedByOutsideUser);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](sharedLinksViewedByNotLoggedIn);
    [DbxStoneValidators arrayValidator:nil maxItems:nil itemValidator:nil](sharedLinksViewedTotal);

    self = [super initWithStartDate:startDate];
    if (self != nil) {
        _adds = adds;
        _edits = edits;
        _deletes = deletes;
        _activeUsers28Day = activeUsers28Day;
        _activeUsers7Day = activeUsers7Day;
        _activeUsers1Day = activeUsers1Day;
        _activeSharedFolders28Day = activeSharedFolders28Day;
        _activeSharedFolders7Day = activeSharedFolders7Day;
        _activeSharedFolders1Day = activeSharedFolders1Day;
        _sharedLinksCreated = sharedLinksCreated;
        _sharedLinksViewedByTeam = sharedLinksViewedByTeam;
        _sharedLinksViewedByOutsideUser = sharedLinksViewedByOutsideUser;
        _sharedLinksViewedByNotLoggedIn = sharedLinksViewedByNotLoggedIn;
        _sharedLinksViewedTotal = sharedLinksViewedTotal;
    }
    return self;
}

+ (NSDictionary *)serialize:(id)obj {
    return [DbxTeamGetActivityReportSerializer serialize:obj];
}

+ (id)deserialize:(NSDictionary *)dict {
    return [DbxTeamGetActivityReportSerializer deserialize:dict];
}

- (NSString *)description {
    return [[DbxTeamGetActivityReportSerializer serialize:self] description];
}

@end


@implementation DbxTeamGetActivityReportSerializer 

+ (NSDictionary *)serialize:(DbxTeamGetActivityReport *)valueObj {
    NSMutableDictionary *jsonDict = [[NSMutableDictionary alloc] init];

    jsonDict[@"start_date"] = [DbxStringSerializer serialize:valueObj.startDate];
    jsonDict[@"adds"] = [DbxArraySerializer serialize:valueObj.adds withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"edits"] = [DbxArraySerializer serialize:valueObj.edits withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"deletes"] = [DbxArraySerializer serialize:valueObj.deletes withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"active_users_28_day"] = [DbxArraySerializer serialize:valueObj.activeUsers28Day withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"active_users_7_day"] = [DbxArraySerializer serialize:valueObj.activeUsers7Day withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"active_users_1_day"] = [DbxArraySerializer serialize:valueObj.activeUsers1Day withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"active_shared_folders_28_day"] = [DbxArraySerializer serialize:valueObj.activeSharedFolders28Day withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"active_shared_folders_7_day"] = [DbxArraySerializer serialize:valueObj.activeSharedFolders7Day withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"active_shared_folders_1_day"] = [DbxArraySerializer serialize:valueObj.activeSharedFolders1Day withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"shared_links_created"] = [DbxArraySerializer serialize:valueObj.sharedLinksCreated withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"shared_links_viewed_by_team"] = [DbxArraySerializer serialize:valueObj.sharedLinksViewedByTeam withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"shared_links_viewed_by_outside_user"] = [DbxArraySerializer serialize:valueObj.sharedLinksViewedByOutsideUser withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"shared_links_viewed_by_not_logged_in"] = [DbxArraySerializer serialize:valueObj.sharedLinksViewedByNotLoggedIn withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];
    jsonDict[@"shared_links_viewed_total"] = [DbxArraySerializer serialize:valueObj.sharedLinksViewedTotal withBlock:^id(id obj) { return [DbxNSNumberSerializer serialize:obj]; }];

    return jsonDict;
}

+ (DbxTeamGetActivityReport *)deserialize:(NSDictionary *)valueDict {
    NSString *startDate = [DbxStringSerializer deserialize:valueDict];
    NSArray<NSNumber *> *adds = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *edits = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *deletes = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *activeUsers28Day = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *activeUsers7Day = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *activeUsers1Day = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *activeSharedFolders28Day = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *activeSharedFolders7Day = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *activeSharedFolders1Day = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *sharedLinksCreated = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *sharedLinksViewedByTeam = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *sharedLinksViewedByOutsideUser = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *sharedLinksViewedByNotLoggedIn = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];
    NSArray<NSNumber *> *sharedLinksViewedTotal = [DbxArraySerializer deserialize:valueDict withBlock:^id(id obj) { return [DbxNSNumberSerializer deserialize:obj]; }];

    return [[DbxTeamGetActivityReport alloc] initWithStartDate:startDate adds:adds edits:edits deletes:deletes activeUsers28Day:activeUsers28Day activeUsers7Day:activeUsers7Day activeUsers1Day:activeUsers1Day activeSharedFolders28Day:activeSharedFolders28Day activeSharedFolders7Day:activeSharedFolders7Day activeSharedFolders1Day:activeSharedFolders1Day sharedLinksCreated:sharedLinksCreated sharedLinksViewedByTeam:sharedLinksViewedByTeam sharedLinksViewedByOutsideUser:sharedLinksViewedByOutsideUser sharedLinksViewedByNotLoggedIn:sharedLinksViewedByNotLoggedIn sharedLinksViewedTotal:sharedLinksViewedTotal];
}

@end