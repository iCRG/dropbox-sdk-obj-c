///
/// Auto-generated by Stone, do not modify.
///

#import "DBXBaseTeam.h"

@implementation DBXBaseTeam 

- (instancetype)initWithTransportClient:(DBXTransportClient *)client {
    self = [super init];
    if (self) {
        _teamRoutes = [[DBXTEAMRoutes alloc] init:client];
    }
    return self;
}
@end