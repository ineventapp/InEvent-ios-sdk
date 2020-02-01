#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INChatterAPIController : INAPIController

#pragma mark - Chatter
- (void)getAuthenticatedAtEvent;
- (void)unlinkAuthenticatedAtEvent;
- (void)getCommunitiesAuthenticatedAtEvent;
- (void)getGroupsAuthenticatedAtEvent;
- (void)setCommunityAuthenticatedAtEventWithCommunityId:(NSString *)communityId withCommunityUrl:(NSString *)communityUrl withCommunityName:(NSString *)communityName;
- (void)unsetCommunityAuthenticatedAtEvent;
- (void)setGroupAuthenticatedAtEventWithGroupId:(NSString *)groupId withGroupName:(NSString *)groupName;
- (void)unsetGroupAuthenticatedAtEvent;
@end
