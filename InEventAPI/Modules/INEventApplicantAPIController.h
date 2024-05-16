#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventApplicantAPIController : INAPIController

#pragma mark - EventApplicant
- (void)bindAtEventWithSalutation:(NSString *)salutation withName:(NSString *)name withUsername:(NSString *)username withPassword:(NSString *)password withEmail:(NSString *)email withAssistantEmail:(NSString *)assistantEmail withRole:(NSString *)role withCompany:(NSString *)company withWebsite:(NSString *)website withTelephone:(NSString *)telephone atTags:(NSInteger)tagIDs withWaitlist:(NSString *)waitlist;
- (void)bindAtEventWithSalutation:(NSString *)salutation withName:(NSString *)name withEmail:(NSString *)email withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withWebsite:(NSString *)website withTelephone:(NSString *)telephone atTags:(NSInteger)tagIDs withWaitlist:(NSString *)waitlist;
- (void)bindAuthenticatedAtEventWithPath:(NSString *)path;
- (void)operateAuthenticatedAtEventWithFirstName:(NSString *)firstName withLastName:(NSString *)lastName withEmail:(NSString *)email;
- (void)operateAuthenticatedAtEventWithContent:(NSString *)content;
- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithPaginated:(NSString *)paginated withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)getAuthenticatedAtEvent;
- (void)approveAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)rejectAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)undoRejectAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
