#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLodgingPersonAPIController : INAPIController

#pragma mark - LodgingPerson
- (void)bindAuthenticatedAtLodging:(NSInteger)lodgingID;
- (void)bindAuthenticatedAtLodging:(NSInteger)lodgingID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtLodging:(NSInteger)lodgingID;
- (void)dismissAuthenticatedAtLodging:(NSInteger)lodgingID forPerson:(NSInteger)personID;
- (void)findAuthenticatedAtLodging:(NSInteger)lodgingID;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query;
- (void)getAuthenticatedAtEvent;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)inviteAuthenticatedAtLodging:(NSInteger)lodgingID forPerson:(NSInteger)personID;
- (void)inviteAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)inviteConfirmAuthenticatedAtLodging:(NSInteger)lodgingID;
- (void)inviteRejectAuthenticatedAtLodging:(NSInteger)lodgingID;
- (void)invitesAuthenticatedAtEvent;
@end