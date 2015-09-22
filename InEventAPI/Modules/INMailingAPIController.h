#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMailingAPIController : INAPIController

#pragma mark - Mailing
- (void)createAuthenticatedWithFrom:(NSString *)from withSubject:(NSString *)subject withBody:(NSString *)body;
- (void)editAuthenticatedAtMailingList:(NSInteger)mailingListID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtMailingList:(NSInteger)mailingListID;
- (void)getAuthenticatedAtMailingList:(NSInteger)mailingListID;
- (void)findAuthenticated;
- (void)findSubscribersAuthenticatedAtMailingList:(NSInteger)mailingListID;
- (void)findSubscribersAuthenticated;
- (void)subscribeAuthenticatedWithName:(NSString *)name withEmail:(NSString *)email withCompany:(NSString *)company;
- (void)subscribeAuthenticatedWithPath:(NSString *)path;
- (void)bindAuthenticatedAtMailingList:(NSInteger)mailingListID atMailingSubscriber:(NSInteger)mailingSubscriberID;
- (void)bindAuthenticatedAtMailingList:(NSInteger)mailingListID withContent:(NSString *)content;
- (void)dismissAuthenticatedAtMailingList:(NSInteger)mailingListID atMailingSubscriber:(NSInteger)mailingSubscriberID;
- (void)dismissAuthenticatedAtMailingList:(NSInteger)mailingListID withContent:(NSString *)content;
- (void)copyAuthenticatedAtMailingList:(NSInteger)mailingListID;
- (void)dispatchAuthenticatedAtMailingList:(NSInteger)mailingListID;
@end