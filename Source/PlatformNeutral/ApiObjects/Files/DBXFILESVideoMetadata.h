///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"
#import "DBXFILESMediaMetadata.h"

@class DBXFILESDimensions;
@class DBXFILESGpsCoordinates;
@class DBXFILESVideoMetadata;

/// 
/// The VideoMetadata struct.
/// 
/// Metadata for a video.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXFILESVideoMetadata : DBXFILESMediaMetadata <DBXSerializable> 

/// The duration of the video in milliseconds.
@property (nonatomic, readonly, copy) NSNumber * _Nullable duration;

/// 
/// Full constructor for the `DBXFILESVideoMetadata` struct (exposes all
/// instance variables).
/// 
/// - parameter dimensions: Dimension of the photo/video.
/// - parameter location: The GPS coordinate of the photo/video.
/// - parameter timeTaken: The timestamp when the photo/video is taken.
/// - parameter duration: The duration of the video in milliseconds.
/// 
/// - returns: An initialized `DBXFILESVideoMetadata` instance.
/// 
- (nonnull instancetype)initWithDimensions:(DBXFILESDimensions * _Nullable)dimensions location:(DBXFILESGpsCoordinates * _Nullable)location timeTaken:(NSDate * _Nullable)timeTaken duration:(NSNumber * _Nullable)duration;

/// 
/// Convenience constructor for the `DBXFILESVideoMetadata` struct (exposes only
/// non-nullable instance variables with no default value).
/// 
/// 
/// - returns: An initialized `DBXFILESVideoMetadata` instance.
/// 
- (nonnull instancetype)init;

@end


/// 
/// The serialization class for the VideoMetadata struct.
/// 
@interface DBXFILESVideoMetadataSerializer : NSObject 

/// 
/// Serializes `DBXFILESVideoMetadata` instances.
/// 
///  - parameter instance: An instance of the `DBXFILESVideoMetadata` API
/// object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXFILESVideoMetadata` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXFILESVideoMetadata * _Nonnull)instance;

/// 
/// Deserializes `DBXFILESVideoMetadata` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXFILESVideoMetadata` API object.
/// 
///  - returns: An instantiation of the `DBXFILESVideoMetadata` object.
/// 
+ (DBXFILESVideoMetadata * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end