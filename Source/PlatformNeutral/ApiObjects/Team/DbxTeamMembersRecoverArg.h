///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamMembersRecoverArg;
@class DbxTeamUserSelectorArg;

/// 
/// The DbxTeamMembersRecoverArg struct.
/// 
/// Exactly one of team_member_id, email, or external_id must be provided to
/// identify the user account.
/// 
@interface DbxTeamMembersRecoverArg : NSObject <DbxSerializable> 

/// Identity of user to recover.
@property (nonatomic) DbxTeamUserSelectorArg * _Nonnull user;

- (nonnull instancetype)initWithUser:(DbxTeamUserSelectorArg * _Nonnull)user;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamMembersRecoverArgSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersRecoverArg * _Nonnull)obj;

+ (DbxTeamMembersRecoverArg * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end