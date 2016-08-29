///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"
#import "DBXTEAMDeviceSession.h"

@class DBXTEAMMobileClientPlatform;
@class DBXTEAMMobileClientSession;

/// 
/// The MobileClientSession struct.
/// 
/// Information about linked Dropbox mobile client sessions
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXTEAMMobileClientSession : DBXTEAMDeviceSession <DBXSerializable> 

/// The device name
@property (nonatomic, readonly, copy) NSString * _Nonnull deviceName;

/// The mobile application type
@property (nonatomic, readonly) DBXTEAMMobileClientPlatform * _Nonnull clientType;

/// The dropbox client version
@property (nonatomic, readonly, copy) NSString * _Nullable clientVersion;

/// The hosting OS version
@property (nonatomic, readonly, copy) NSString * _Nullable osVersion;

/// last carrier used by the device
@property (nonatomic, readonly, copy) NSString * _Nullable lastCarrier;

/// 
/// Full constructor for the `DBXTEAMMobileClientSession` struct (exposes all
/// instance variables).
/// 
/// - parameter sessionId: The session id
/// - parameter deviceName: The device name
/// - parameter clientType: The mobile application type
/// - parameter ipAddress: The IP address of the last activity from this session
/// - parameter country: The country from which the last activity from this
/// session was made
/// - parameter created: The time this session was created
/// - parameter updated: The time of the last activity from this session
/// - parameter clientVersion: The dropbox client version
/// - parameter osVersion: The hosting OS version
/// - parameter lastCarrier: last carrier used by the device
/// 
/// - returns: An initialized `DBXTEAMMobileClientSession` instance.
/// 
- (nonnull instancetype)initWithSessionId:(NSString * _Nonnull)sessionId deviceName:(NSString * _Nonnull)deviceName clientType:(DBXTEAMMobileClientPlatform * _Nonnull)clientType ipAddress:(NSString * _Nullable)ipAddress country:(NSString * _Nullable)country created:(NSDate * _Nullable)created updated:(NSDate * _Nullable)updated clientVersion:(NSString * _Nullable)clientVersion osVersion:(NSString * _Nullable)osVersion lastCarrier:(NSString * _Nullable)lastCarrier;

/// 
/// Convenience constructor for the `DBXTEAMMobileClientSession` struct (exposes
/// only non-nullable instance variables with no default value).
/// 
/// - parameter sessionId: The session id
/// - parameter deviceName: The device name
/// - parameter clientType: The mobile application type
/// 
/// - returns: An initialized `DBXTEAMMobileClientSession` instance.
/// 
- (nonnull instancetype)initWithSessionId:(NSString * _Nonnull)sessionId deviceName:(NSString * _Nonnull)deviceName clientType:(DBXTEAMMobileClientPlatform * _Nonnull)clientType;

@end


/// 
/// The serialization class for the MobileClientSession struct.
/// 
@interface DBXTEAMMobileClientSessionSerializer : NSObject 

/// 
/// Serializes `DBXTEAMMobileClientSession` instances.
/// 
///  - parameter instance: An instance of the `DBXTEAMMobileClientSession` API
/// object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXTEAMMobileClientSession` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMMobileClientSession * _Nonnull)instance;

/// 
/// Deserializes `DBXTEAMMobileClientSession` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXTEAMMobileClientSession` API object.
/// 
///  - returns: An instantiation of the `DBXTEAMMobileClientSession` object.
/// 
+ (DBXTEAMMobileClientSession * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end