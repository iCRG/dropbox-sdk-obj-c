///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXTEAMGroupMembersSelector;
@class DBXTEAMGroupSelector;
@class DBXTEAMUsersSelectorArg;

/// 
/// The GroupMembersSelector struct.
/// 
/// Argument for selecting a group and a list of users.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXTEAMGroupMembersSelector : NSObject <DBXSerializable> 

/// Specify a group.
@property (nonatomic, readonly) DBXTEAMGroupSelector * _Nonnull group;

/// A list of users that are members of group.
@property (nonatomic, readonly) DBXTEAMUsersSelectorArg * _Nonnull users;

/// 
/// Full constructor for the `DBXTEAMGroupMembersSelector` struct (exposes all
/// instance variables).
/// 
/// - parameter group: Specify a group.
/// - parameter users: A list of users that are members of :field:`group`.
/// 
/// - returns: An initialized `DBXTEAMGroupMembersSelector` instance.
/// 
- (nonnull instancetype)initWithGroup:(DBXTEAMGroupSelector * _Nonnull)group users:(DBXTEAMUsersSelectorArg * _Nonnull)users;

@end


/// 
/// The serialization class for the GroupMembersSelector struct.
/// 
@interface DBXTEAMGroupMembersSelectorSerializer : NSObject 

/// 
/// Serializes `DBXTEAMGroupMembersSelector` instances.
/// 
///  - parameter instance: An instance of the `DBXTEAMGroupMembersSelector` API
/// object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXTEAMGroupMembersSelector` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXTEAMGroupMembersSelector * _Nonnull)instance;

/// 
/// Deserializes `DBXTEAMGroupMembersSelector` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXTEAMGroupMembersSelector` API object.
/// 
///  - returns: An instantiation of the `DBXTEAMGroupMembersSelector` object.
/// 
+ (DBXTEAMGroupMembersSelector * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end