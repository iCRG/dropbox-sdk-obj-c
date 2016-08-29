///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXFILESSaveUrlArg;

/// 
/// The SaveUrlArg struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXFILESSaveUrlArg : NSObject <DBXSerializable> 

/// The path in Dropbox where the URL will be saved to.
@property (nonatomic, readonly, copy) NSString * _Nonnull path;

/// The URL to be saved.
@property (nonatomic, readonly, copy) NSString * _Nonnull url;

/// 
/// Full constructor for the `DBXFILESSaveUrlArg` struct (exposes all instance
/// variables).
/// 
/// - parameter path: The path in Dropbox where the URL will be saved to.
/// - parameter url: The URL to be saved.
/// 
/// - returns: An initialized `DBXFILESSaveUrlArg` instance.
/// 
- (nonnull instancetype)initWithPath:(NSString * _Nonnull)path url:(NSString * _Nonnull)url;

@end


/// 
/// The serialization class for the SaveUrlArg struct.
/// 
@interface DBXFILESSaveUrlArgSerializer : NSObject 

/// 
/// Serializes `DBXFILESSaveUrlArg` instances.
/// 
///  - parameter instance: An instance of the `DBXFILESSaveUrlArg` API object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXFILESSaveUrlArg` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXFILESSaveUrlArg * _Nonnull)instance;

/// 
/// Deserializes `DBXFILESSaveUrlArg` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXFILESSaveUrlArg` API object.
/// 
///  - returns: An instantiation of the `DBXFILESSaveUrlArg` object.
/// 
+ (DBXFILESSaveUrlArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end