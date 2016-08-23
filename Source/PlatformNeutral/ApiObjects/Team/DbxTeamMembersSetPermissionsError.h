///
/// Auto-generated by Stone, do not modify.
///

#import <Foundation/Foundation.h>
#import "DbxStoneSerializers.h"
#import "DbxTeamUserSelectorError.h"

@class DbxTeamMembersSetPermissionsError;

/// 
/// The DbxTeamMembersSetPermissionsError union.
/// 
@interface DbxTeamMembersSetPermissionsError : NSObject <DbxSerializable> 

typedef NS_ENUM(NSInteger, TeamMembersSetPermissionsErrorTag) {
    /// No matching user found. The provided team_member_id, email, or
    /// external_id does not exist on this team.
    TeamMembersSetPermissionsErrorUserNotFound,
    /// Cannot remove the admin setting of the last admin.
    TeamMembersSetPermissionsErrorLastAdmin,
    /// The user is not a member of the team.
    TeamMembersSetPermissionsErrorUserNotInTeam,
    /// Cannot remove/grant permissions.
    TeamMembersSetPermissionsErrorCannotSetPermissions,
    /// Team is full. The organization has no available licenses.
    TeamMembersSetPermissionsErrorTeamLicenseLimit,
    /// (no description)
    TeamMembersSetPermissionsErrorOther,
};

- (nonnull instancetype)initWithUserNotFound;

- (nonnull instancetype)initWithLastAdmin;

- (nonnull instancetype)initWithUserNotInTeam;

- (nonnull instancetype)initWithCannotSetPermissions;

- (nonnull instancetype)initWithTeamLicenseLimit;

- (nonnull instancetype)initWithOther;

- (BOOL)isUserNotFound;

- (BOOL)isLastAdmin;

- (BOOL)isUserNotInTeam;

- (BOOL)isCannotSetPermissions;

- (BOOL)isTeamLicenseLimit;

- (BOOL)isOther;

- (NSString * _Nonnull)getTagName;

+ (NSDictionary * _Nonnull)serialize:(id _Nonnull)obj;

+ (id _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

- (NSString * _Nonnull)description;

/// Current state of the DbxTeamMembersSetPermissionsError union type.
@property (nonatomic) TeamMembersSetPermissionsErrorTag tag;

@end


@interface DbxTeamMembersSetPermissionsErrorSerializer : NSObject 

+ (NSDictionary * _Nonnull)serialize:(DbxTeamMembersSetPermissionsError * _Nonnull)obj;

+ (DbxTeamMembersSetPermissionsError * _Nonnull)deserialize:(NSDictionary * _Nonnull)dict;

@end