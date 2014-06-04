#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INExhibitorAPIController : INAPIController

#pragma mark - Exhibitor
- (void)editAuthenticatedAtEventWithKey:(NSString *)key withValue:(NSString *)value;
- (void)getAuthenticatedForExhibitor:(NSInteger)exhibitorID;
- (void)getAuthenticated;

@end