#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventApplicantAPIController : INAPIController

#pragma mark - EventApplicant
- (void)bindAtEventWithName:(NSString *)name withUsername:(NSString *)username withPassword:(NSString *)password withEmail:(NSString *)email withRole:(NSString *)role withCompany:(NSString *)company withTelephone:(NSString *)telephone;
- (void)bindAtEventWithName:(NSString *)name withEmail:(NSString *)email withPassword:(NSString *)password withRole:(NSString *)role withCompany:(NSString *)company withTelephone:(NSString *)telephone;
- (void)bindAuthenticatedAtEventWithPath:(NSString *)path;
- (void)operateAuthenticatedAtEventWithFirstName:(NSString *)firstName withLastName:(NSString *)lastName withEmail:(NSString *)email;
- (void)operateAuthenticatedAtEventWithContent:(NSString *)content;
- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEventWithPaginated:(NSString *)paginated withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)getAuthenticatedAtEvent;
- (void)approveAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
