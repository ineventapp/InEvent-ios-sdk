#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFormAPIController : INAPIController

#pragma mark - Form
- (void)createAuthenticatedAtEventWithTitle:(NSString *)title withDescription:(NSString *)description;
- (void)editAuthenticatedAtForm:(NSInteger)formID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtForm:(NSInteger)formID;
- (void)getAuthenticatedAtForm:(NSInteger)formID;
- (void)findAuthenticatedAtEvent;
@end