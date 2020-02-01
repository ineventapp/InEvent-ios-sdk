#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventSenderAPIController : INAPIController

#pragma mark - EventSender
- (void)editAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query;
- (void)getAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)refreshAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
