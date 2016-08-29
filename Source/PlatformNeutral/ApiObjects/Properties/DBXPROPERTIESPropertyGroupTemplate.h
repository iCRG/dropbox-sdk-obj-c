///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DBXSerializableProtocol.h"

@class DBXPROPERTIESPropertyFieldTemplate;
@class DBXPROPERTIESPropertyGroupTemplate;

/// 
/// The PropertyGroupTemplate struct.
/// 
/// Describes property templates that can be filled and associated with a file.
/// 
/// This class implements the `DBXSerializable` protocol (`serialize` and
/// `deserialize` instance methods), which is required for all Obj-C SDK API
/// route objects.
/// 
@interface DBXPROPERTIESPropertyGroupTemplate : NSObject <DBXSerializable> 

/// A display name for the property template. Property template names can be up
/// to 256 bytes.
@property (nonatomic, readonly, copy) NSString * _Nonnull name;

/// Description for new property template. Property template descriptions can be
/// up to 1024 bytes.
@property (nonatomic, readonly, copy) NSString * _Nonnull description_;

/// This is a list of custom properties associated with a property template.
/// There can be up to 64 properties in a single property template.
@property (nonatomic, readonly) NSArray<DBXPROPERTIESPropertyFieldTemplate *> * _Nonnull fields;

/// 
/// Full constructor for the `DBXPROPERTIESPropertyGroupTemplate` struct
/// (exposes all instance variables).
/// 
/// - parameter name: A display name for the property template. Property
/// template names can be up to 256 bytes.
/// - parameter description_: Description for new property template. Property
/// template descriptions can be up to 1024 bytes.
/// - parameter fields: This is a list of custom properties associated with a
/// property template. There can be up to 64 properties in a single property
/// template.
/// 
/// - returns: An initialized `DBXPROPERTIESPropertyGroupTemplate` instance.
/// 
- (nonnull instancetype)initWithName:(NSString * _Nonnull)name description_:(NSString * _Nonnull)description_ fields:(NSArray<DBXPROPERTIESPropertyFieldTemplate *> * _Nonnull)fields;

@end


/// 
/// The serialization class for the PropertyGroupTemplate struct.
/// 
@interface DBXPROPERTIESPropertyGroupTemplateSerializer : NSObject 

/// 
/// Serializes `DBXPROPERTIESPropertyGroupTemplate` instances.
/// 
///  - parameter instance: An instance of the
/// `DBXPROPERTIESPropertyGroupTemplate` API object.
/// 
///  - returns: A json-compatible dictionary representation of the
/// `DBXPROPERTIESPropertyGroupTemplate` API object.
/// 
+ (NSDictionary * _Nonnull)serialize:(DBXPROPERTIESPropertyGroupTemplate * _Nonnull)instance;

/// 
/// Deserializes `DBXPROPERTIESPropertyGroupTemplate` instances.
/// 
///  - parameter dict: A json-compatible dictionary representation of the
/// `DBXPROPERTIESPropertyGroupTemplate` API object.
/// 
///  - returns: An instantiation of the `DBXPROPERTIESPropertyGroupTemplate`
/// object.
/// 
+ (DBXPROPERTIESPropertyGroupTemplate * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end