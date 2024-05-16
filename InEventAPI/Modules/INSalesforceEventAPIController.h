#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSalesforceEventAPIController : INAPIController

#pragma mark - SalesforceEvent
- (void)getAuthenticatedAtEvent;
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)syncAuthenticatedAtEvent;
- (void)logsAuthenticatedAtEventWithQuery:(NSString *)query;
- (void)getCustomLinkAuthenticatedAtEventWithInObject:(NSString *)inObject;
- (void)editCustomLinkAuthenticatedAtEventWithInObject:(NSString *)inObject withKey:(NSString *)key withValue:(NSString *)value withSfFieldValue:(NSString *)sfFieldValue;
- (void)createCampaignAuthenticatedAtEvent;
@end
