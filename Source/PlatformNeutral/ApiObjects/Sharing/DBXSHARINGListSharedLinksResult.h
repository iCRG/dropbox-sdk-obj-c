///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXSHARINGListSharedLinksResult;
@class DBXSHARINGSharedLinkMetadata;

/// 
/// The ListSharedLinksResult struct.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXSHARINGListSharedLinksResult : NSObject <DBXSerializable> 

/// Shared links applicable to the path argument.
@property (nonatomic, readonly) NSArray<DBXSHARINGSharedLinkMetadata *> * _Nonnull links;

/// Is true if there are additional shared links that have not been returned
/// yet. Pass the cursor into listSharedLinks to retrieve them.
@property (nonatomic, readonly, copy) NSNumber * _Nonnull hasMore;

/// Pass the cursor into listSharedLinks to obtain the additional links. Cursor
/// is returned only if no path is given or the path is empty.
@property (nonatomic, readonly, copy) NSString * _Nullable cursor;

/// 
/// Full constructor for the `DBXSHARINGListSharedLinksResult` struct (exposes
/// all instance variables).
/// 
/// - parameter links: Shared links applicable to the path argument.
/// - parameter hasMore: Is true if there are additional shared links that have
/// not been returned yet. Pass the cursor into :route:`list_shared_links` to
/// retrieve them.
/// - parameter cursor: Pass the cursor into :route:`list_shared_links` to
/// obtain the additional links. Cursor is returned only if no path is given or
/// the path is empty.
/// 
/// - returns: An initialized `DBXSHARINGListSharedLinksResult` instance.
/// 
- (nonnull instancetype)initWithLinks:(NSArray<DBXSHARINGSharedLinkMetadata *> * _Nonnull)links hasMore:(NSNumber * _Nonnull)hasMore cursor:(NSString * _Nullable)cursor;

/// 
/// Convenience constructor for the `DBXSHARINGListSharedLinksResult` struct
/// (exposes only non-nullable instance variables with no default value).
/// 
/// - parameter links: Shared links applicable to the path argument.
/// - parameter hasMore: Is true if there are additional shared links that have
/// not been returned yet. Pass the cursor into :route:`list_shared_links` to
/// retrieve them.
/// 
/// - returns: An initialized `DBXSHARINGListSharedLinksResult` instance.
/// 
- (nonnull instancetype)initWithLinks:(NSArray<DBXSHARINGSharedLinkMetadata *> * _Nonnull)links hasMore:(NSNumber * _Nonnull)hasMore;

@end


/// 
/// The serialization class for the ListSharedLinksResult struct.
/// 
@interface DBXSHARINGListSharedLinksResultSerializer : NSObject 

/// 
/// Serializes `DBXSHARINGListSharedLinksResult` instances.
/// 
///  - parameter instance: An instance of the `DBXSHARINGListSharedLinksResult`
/// API object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXSHARINGListSharedLinksResult` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXSHARINGListSharedLinksResult * _Nonnull)instance;

/// 
/// Deserializes `DBXSHARINGListSharedLinksResult` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXSHARINGListSharedLinksResult` API object.
/// 
///  - returns: An instantiation of the `DBXSHARINGListSharedLinksResult`
/// object.
/// 
+ (DBXSHARINGListSharedLinksResult * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end