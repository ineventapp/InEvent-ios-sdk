#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventAPIController : INAPIController

#pragma mark - Event
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)getAuthenticatedAtEvent;
- (void)getAtEvent;
- (void)checkAccessCodeAuthenticatedAtEventWithAccessCode:(NSString *)accessCode;
- (void)sendSMSAtEventWithTelephone:(NSString *)telephone;
- (void)searchAuthenticatedAtEventWithQuery:(NSString *)query;
@end
