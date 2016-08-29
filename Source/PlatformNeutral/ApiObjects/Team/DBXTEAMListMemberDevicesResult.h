///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXTEAMActiveWebSession;
@class DBXTEAMDesktopClientSession;
@class DBXTEAMListMemberDevicesResult;
@class DBXTEAMMobileClientSession;

/// 
/// The ListMemberDevicesResult struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXTEAMListMemberDevicesResult : NSObject <DBXSerializable> 

/// List of web sessions made by this team member
@property (nonatomic, readonly) NSArray<DBXTEAMActiveWebSession *> * _Nullable activeWebSessions;

/// List of desktop clients used by this team member
@property (nonatomic, readonly) NSArray<DBXTEAMDesktopClientSession *> * _Nullable desktopClientSessions;

/// List of mobile client used by this team member
@property (nonatomic, readonly) NSArray<DBXTEAMMobileClientSession *> * _Nullable mobileClientSessions;

/// 
/// Full constructor for the `DBXTEAMListMemberDevicesResult` struct (exposes
/// all instance variables).
/// 
/// - parameter activeWebSessions: List of web sessions made by this team member
/// - parameter desktopClientSessions: List of desktop clients used by this team
/// member
/// - parameter mobileClientSessions: List of mobile client used by this team
/// member
/// 
/// - returns: An initialized `DBXTEAMListMemberDevicesResult` instance.
/// 
- (nonnull instancetype)initWithActiveWebSessions:(NSArray<DBXTEAMActiveWebSession *> * _Nullable)activeWebSessions desktopClientSessions:(NSArray<DBXTEAMDesktopClientSession *> * _Nullable)desktopClientSessions mobileClientSessions:(NSArray<DBXTEAMMobileClientSession *> * _Nullable)mobileClientSessions;

/// 
/// Convenience constructor for the `DBXTEAMListMemberDevicesResult` struct
/// (exposes only non-nullable instance variables with no default value).
/// 
/// 
/// - returns: An initialized `DBXTEAMListMemberDevicesResult` instance.
/// 
- (nonnull instancetype)init;

@end


/// 
/// The serialization class for the ListMemberDevicesResult struct.
/// 
@interface DBXTEAMListMemberDevicesResultSerializer : NSObject 

/// 
/// Serializes `DBXTEAMListMemberDevicesResult` instances.
/// 
///  - parameter instance: An instance of the `DBXTEAMListMemberDevicesResult`
/// API object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXTEAMListMemberDevicesResult` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMListMemberDevicesResult * _Nonnull)instance;

/// 
/// Deserializes `DBXTEAMListMemberDevicesResult` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXTEAMListMemberDevicesResult` API object.
/// 
///  - returns: An instantiation of the `DBXTEAMListMemberDevicesResult` object.
/// 
+ (DBXTEAMListMemberDevicesResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end