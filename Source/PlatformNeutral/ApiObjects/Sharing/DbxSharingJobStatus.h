///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxAsyncPollResultBase.h"

@class DbxSharingJobError;
@class DbxSharingJobStatus;

/// 
/// The DbxSharingJobStatus union.
/// 
@interface DbxSharingJobStatus : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, SharingJobStatusTag) {
    /// The asynchronous job is still in progress.
    SharingJobStatusInProgress,
    /// The asynchronous job has finished.
    SharingJobStatusComplete,
    /// The asynchronous job returned an error.
    SharingJobStatusFailed,
};

- (nonnull instancetype)initWithInProgress;

- (nonnull instancetype)initWithComplete;

- (nonnull instancetype)initWithFailed:(DbxSharingJobError * _Nonnull)failed;

- (BOOL)isInProgress;

- (BOOL)isComplete;

- (BOOL)isFailed;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxSharingJobStatus union type.
@property (nonatomic) SharingJobStatusTag tag;
@property (nonatomic) DbxSharingJobError * _Nonnull failed;

@end


@interface DbxSharingJobStatusSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxSharingJobStatus * _Nonnull)obj;

+ (DbxSharingJobStatus * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end