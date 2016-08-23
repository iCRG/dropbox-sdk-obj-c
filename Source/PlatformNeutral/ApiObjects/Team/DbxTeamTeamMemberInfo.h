///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"

@class DbxTeamAdminTier;
@class DbxTeamTeamMemberInfo;
@class DbxTeamTeamMemberProfile;

/// 
/// The DbxTeamTeamMemberInfo struct.
/// 
/// Information about a team member.
/// 
@interface DbxTeamTeamMemberInfo : NSObject <DbxSerializable> 

/// Profile of a user as a member of a team.
@property (nonatomic) DbxTeamTeamMemberProfile * _Nonnull profile;
/// The user's role in the team.
@property (nonatomic) DbxTeamAdminTier * _Nonnull role;

- (nonnull instancetype)initWithProfile:(DbxTeamTeamMemberProfile * _Nonnull)profile role:(DbxTeamAdminTier * _Nonnull)role;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

@end


@interface DbxTeamTeamMemberInfoSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamTeamMemberInfo * _Nonnull)obj;

+ (DbxTeamTeamMemberInfo * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end