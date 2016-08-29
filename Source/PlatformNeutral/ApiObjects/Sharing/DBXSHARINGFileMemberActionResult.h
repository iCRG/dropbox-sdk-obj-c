///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGFileMemberActionIndividualResult;
@class DBXSHARINGFileMemberActionResult;
@class DBXSHARINGMemberSelector;

/// 
/// The FileMemberActionResult struct.
/// 
/// Per-member result for removeFileMember2 or addFileMember or
/// changeFileMemberAccess.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXSHARINGFileMemberActionResult : NSObject <DBXSerializable> 

/// One of specified input members.
@property (nonatomic, readonly) DBXSHARINGMemberSelector * _Nonnull member;

/// The outcome of the action on this member.
@property (nonatomic, readonly) DBXSHARINGFileMemberActionIndividualResult * _Nonnull result;

/// 
/// Full constructor for the `DBXSHARINGFileMemberActionResult` struct (exposes
/// all instance variables).
/// 
/// - parameter member: One of specified input members.
/// - parameter result: The outcome of the action on this member.
/// 
/// - returns: An initialized `DBXSHARINGFileMemberActionResult` instance.
/// 
- (nonnull instancetype)initWithMember:(DBXSHARINGMemberSelector * _Nonnull)member result:(DBXSHARINGFileMemberActionIndividualResult * _Nonnull)result;

@end


/// 
/// The serialization class for the FileMemberActionResult struct.
/// 
@interface DBXSHARINGFileMemberActionResultSerializer : NSObject 

/// 
/// Serializes `DBXSHARINGFileMemberActionResult` instances.
/// 
///  - parameter instance: An instance of the `DBXSHARINGFileMemberActionResult`
/// API object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXSHARINGFileMemberActionResult` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGFileMemberActionResult * _Nonnull)instance;

/// 
/// Deserializes `DBXSHARINGFileMemberActionResult` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXSHARINGFileMemberActionResult` API object.
/// 
///  - returns: An instantiation of the `DBXSHARINGFileMemberActionResult`
/// object.
/// 
+ (DBXSHARINGFileMemberActionResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end