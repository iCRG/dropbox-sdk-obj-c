///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGMemberSelector;
@class DBXSHARINGRemoveFolderMemberArg;

/// 
/// The RemoveFolderMemberArg struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXSHARINGRemoveFolderMemberArg : NSObject <DBXSerializable> 

/// The ID for the shared folder.
@property (nonatomic, readonly, copy) NSString * _Nonnull sharedFolderId;

/// The member to remove from the folder.
@property (nonatomic, readonly) DBXSHARINGMemberSelector * _Nonnull member;

/// If true, the removed user will keep their copy of the folder after it's
/// unshared, assuming it was mounted. Otherwise, it will be removed from their
/// Dropbox. Also, this must be set to false when kicking a group.
@property (nonatomic, readonly, copy) NSNumber * _Nonnull leaveACopy;

/// 
/// Full constructor for the `DBXSHARINGRemoveFolderMemberArg` struct (exposes
/// all instance variables).
/// 
/// - parameter sharedFolderId: The ID for the shared folder.
/// - parameter member: The member to remove from the folder.
/// - parameter leaveACopy: If true, the removed user will keep their copy of
/// the folder after it's unshared, assuming it was mounted. Otherwise, it will
/// be removed from their Dropbox. Also, this must be set to false when kicking
/// a group.
/// 
/// - returns: An initialized `DBXSHARINGRemoveFolderMemberArg` instance.
/// 
- (nonnull instancetype)initWithSharedFolderId:(NSString * _Nonnull)sharedFolderId member:(DBXSHARINGMemberSelector * _Nonnull)member leaveACopy:(NSNumber * _Nonnull)leaveACopy;

@end


/// 
/// The serialization class for the RemoveFolderMemberArg struct.
/// 
@interface DBXSHARINGRemoveFolderMemberArgSerializer : NSObject 

/// 
/// Serializes `DBXSHARINGRemoveFolderMemberArg` instances.
/// 
///  - parameter instance: An instance of the `DBXSHARINGRemoveFolderMemberArg`
/// API object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXSHARINGRemoveFolderMemberArg` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGRemoveFolderMemberArg * _Nonnull)instance;

/// 
/// Deserializes `DBXSHARINGRemoveFolderMemberArg` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXSHARINGRemoveFolderMemberArg` API object.
/// 
///  - returns: An instantiation of the `DBXSHARINGRemoveFolderMemberArg`
/// object.
/// 
+ (DBXSHARINGRemoveFolderMemberArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end