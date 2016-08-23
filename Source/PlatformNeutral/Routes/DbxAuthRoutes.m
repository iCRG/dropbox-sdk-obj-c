///
/// Auto-generated by Stone, do not modify.
///

#import "DbxAuthRouteObjects.h"
#import "DbxAuthRoutes.h"
#import "DbxErrors.h"
#import "DbxStoneBase.h"
#import "DbxTasks.h"
#import "DropboxTransportClient.h"

@implementation DbxAuthRoutes 

- (instancetype)init:(DropboxTransportClient *)client {
    self = [super init];
    if (self != nil) {
        _client = client;
    }
    return self;
}
- (DbxRpcTask *)tokenRevoke {
    DbxRoute *route = DbxAuthRouteObjects.dbxAuthTokenRevoke;
    return [self.client requestRpc:route arg:nil];
}

@end