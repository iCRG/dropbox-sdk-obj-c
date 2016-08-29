///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXFILESLookupError;
@class DBXFILESRestoreError;
@class DBXFILESWriteError;

/// 
/// The RestoreError union.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXFILESRestoreError : NSObject <DBXSerializable> 

/// The `DBXFILESRestoreErrorTag` enum type represents the possible tag states
/// with which the `DBXFILESRestoreError` union can exist.
typedef NS_ENUM(NSInteger, DBXFILESRestoreErrorTag) {
    /// An error occurs when downloading metadata for the file.
    DBXFILESRestoreErrorPathLookup,

    /// An error occurs when trying to restore the file to that path.
    DBXFILESRestoreErrorPathWrite,

    /// The revision is invalid. It may point to a different file.
    DBXFILESRestoreErrorInvalidRevision,

    /// (no description).
    DBXFILESRestoreErrorOther,

};

/// Represents the union's current tag state.
@property (nonatomic, readonly) DBXFILESRestoreErrorTag tag;

/// An error occurs when downloading metadata for the file.
@property (nonatomic, readonly) DBXFILESLookupError * _Nonnull pathLookup;

/// An error occurs when trying to restore the file to that path.
@property (nonatomic, readonly) DBXFILESWriteError * _Nonnull pathWrite;

/// 
/// Initializes union class with tag state of `PathLookup`.
/// 
/// About the `PathLookup` tag state: An error occurs when downloading metadata
/// for the file.
/// 
/// - parameter pathLookup: An error occurs when downloading metadata for the
/// file.
/// 
/// - returns: An initialized `DBXFILESRestoreError` instance.
/// 
- (nonnull instancetype)initWithPathLookup:(DBXFILESLookupError * _Nonnull)pathLookup;

/// 
/// Initializes union class with tag state of `PathWrite`.
/// 
/// About the `PathWrite` tag state: An error occurs when trying to restore the
/// file to that path.
/// 
/// - parameter pathWrite: An error occurs when trying to restore the file to
/// that path.
/// 
/// - returns: An initialized `DBXFILESRestoreError` instance.
/// 
- (nonnull instancetype)initWithPathWrite:(DBXFILESWriteError * _Nonnull)pathWrite;

/// 
/// Initializes union class with tag state of `InvalidRevision`.
/// 
/// About the `InvalidRevision` tag state: The revision is invalid. It may point
/// to a different file.
/// 
/// - returns: An initialized `DBXFILESRestoreError` instance.
/// 
- (nonnull instancetype)initWithInvalidRevision;

/// 
/// Initializes union class with tag state of `Other`.
/// 
/// - returns: An initialized `DBXFILESRestoreError` instance.
/// 
- (nonnull instancetype)initWithOther;

/// 
/// Retrieves whether the union's current tag state has value `PathLookup`.
/// 
/// - returns: Whether the union's current tag state has value `PathLookup`.
/// 
- (BOOL)isPathLookup;

/// 
/// Retrieves whether the union's current tag state has value `PathWrite`.
/// 
/// - returns: Whether the union's current tag state has value `PathWrite`.
/// 
- (BOOL)isPathWrite;

/// 
/// Retrieves whether the union's current tag state has value `InvalidRevision`.
/// 
/// - returns: Whether the union's current tag state has value
/// `InvalidRevision`.
/// 
- (BOOL)isInvalidRevision;

/// 
/// Retrieves whether the union's current tag state has value `Other`.
/// 
/// - returns: Whether the union's current tag state has value `Other`.
/// 
- (BOOL)isOther;

/// 
/// Retrieves string value of union's current tag state.
/// 
/// - returns: A human-readable string representing the union's current tag
/// state.
/// 
- (NSString * _Nonnull)getTagName;

@end


/// 
/// The serialization class for the `DBXFILESRestoreError` union.
/// 
@interface DBXFILESRestoreErrorSerializer : NSObject 

/// 
/// Serializes `DBXFILESRestoreError` instances.
/// 
///  - parameter instance: An instance of the `DBXFILESRestoreError` API object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXFILESRestoreError` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXFILESRestoreError * _Nonnull)instance;

/// 
/// Deserializes `DBXFILESRestoreError` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXFILESRestoreError` API object.
/// 
///  - returns: An instantiation of the `DBXFILESRestoreError` object.
/// 
+ (DBXFILESRestoreError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end