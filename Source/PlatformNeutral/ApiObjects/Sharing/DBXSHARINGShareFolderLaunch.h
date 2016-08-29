///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGShareFolderLaunch;
@class DBXSHARINGSharedFolderMetadata;

/// 
/// The ShareFolderLaunch union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXSHARINGShareFolderLaunch : NSObject <DBXSerializable> 

/// The `DBXSHARINGShareFolderLaunchTag` enum type represents the possible tag
/// states with which the `DBXSHARINGShareFolderLaunch` union can exist.
typedef NS_ENUM(NSInteger, DBXSHARINGShareFolderLaunchTag) {
    /// This response indicates that the processing is asynchronous. The string
    /// is an id that can be used to obtain the status of the asynchronous job.
    DBXSHARINGShareFolderLaunchAsyncJobId,

    /// (no description).
    DBXSHARINGShareFolderLaunchComplete,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBXSHARINGShareFolderLaunchTag tag;

/// This response indicates that the processing is asynchronous. The string is
/// an id that can be used to obtain the status of the asynchronous job.
@property (nonatomic, readonly, copy) NSString * _Nonnull asyncJobId;

/// (no description).
@property (nonatomic, readonly) DBXSHARINGSharedFolderMetadata * _Nonnull complete;

/// 
/// Initializes union class with tag state of `AsyncJobId`.
/// 
/// About the `AsyncJobId` tag state: This response indicates that the
/// processing is asynchronous. The string is an id that can be used to obtain
/// the status of the asynchronous job.
/// 
/// - parameter asyncJobId: This response indicates that the processing is
/// asynchronous. The string is an id that can be used to obtain the status of
/// the asynchronous job.
/// 
/// - returns: An initialized `DBXSHARINGShareFolderLaunch` instance.
/// 
- (nonnull instancetype)initWithAsyncJobId:(NSString * _Nonnull)asyncJobId;

/// 
/// Initializes union class with tag state of `Complete`.
/// 
/// - parameter complete: (no description).
/// 
/// - returns: An initialized `DBXSHARINGShareFolderLaunch` instance.
/// 
- (nonnull instancetype)initWithComplete:(DBXSHARINGSharedFolderMetadata * _Nonnull)complete;

/// 
/// Retrieves whether the union's current tag state has value `AsyncJobId`.
/// 
/// - returns: Whether the union's current tag state has value `AsyncJobId`.
/// 
- (BOOL)isAsyncJobId;

/// 
/// Retrieves whether the union's current tag state has value `Complete`.
/// 
/// - returns: Whether the union's current tag state has value `Complete`.
/// 
- (BOOL)isComplete;

/// 
/// Retrieves string value of union's current tag state.
/// 
/// - returns: A human-readable string representing the union's current tag
/// state.
/// 
- (NSString * _Nonnull)getTagName;

@end


/// 
/// The serialization class for the `DBXSHARINGShareFolderLaunch` union.
/// 
@interface DBXSHARINGShareFolderLaunchSerializer : NSObject 

/// 
/// Serializes `DBXSHARINGShareFolderLaunch` instances.
/// 
///  - parameter instance: An instance of the `DBXSHARINGShareFolderLaunch` API
/// object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXSHARINGShareFolderLaunch` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGShareFolderLaunch * _Nonnull)instance;

/// 
/// Deserializes `DBXSHARINGShareFolderLaunch` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXSHARINGShareFolderLaunch` API object.
/// 
///  - returns: An instantiation of the `DBXSHARINGShareFolderLaunch` object.
/// 
+ (DBXSHARINGShareFolderLaunch * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end