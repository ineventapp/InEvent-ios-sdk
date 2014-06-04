#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMapItemAPIController : INAPIController

#pragma mark - MapItem
- (void)createAuthenticatedAtEventWithName:(NSString *)name;
- (void)editAuthenticatedAtMapItem:(NSInteger)mapItemID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtMapItem:(NSInteger)mapItemID;
- (void)findAuthenticatedAtEvent;

@end