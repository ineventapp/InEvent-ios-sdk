#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTeamAPIController : INAPIController

#pragma mark - Team
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withDescription:(NSString *)description withPath:(NSString *)path;
- (void)editAuthenticatedAtTeam:(NSInteger)teamID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtTeam:(NSInteger)teamID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID;
- (void)getAuthenticatedAtTeam:(NSInteger)teamID;
@end
