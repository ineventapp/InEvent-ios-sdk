#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INEventSanityAPIController : INAPIController

#pragma mark - EventSanity
- (void)operateAuthenticatedAtEventSanity:(NSInteger)eventSanityID withKey:(NSString *)key withValue:(NSString *)value;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSelection:(NSString *)selection withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order;
- (void)findAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withSort:(NSString *)sort withOrder:(NSString *)order;
@end
