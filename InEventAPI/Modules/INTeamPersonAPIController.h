#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTeamPersonAPIController : INAPIController

#pragma mark - TeamPerson
- (void)bindAuthenticatedAtTeam:(NSInteger)teamID forPerson:(NSInteger)personID withRole:(NSString *)role;
- (void)operateAuthenticatedAtTeam:(NSInteger)teamID forPerson:(NSInteger)personID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtTeam:(NSInteger)teamID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID atTeam:(NSInteger)teamID;
@end
