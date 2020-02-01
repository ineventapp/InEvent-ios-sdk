#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INImageAPIController : INAPIController

#pragma mark - Image
- (void)createAuthenticatedAtEventWithName:(NSString *)name withUrl:(NSString *)url;
- (void)editAuthenticatedAtImage:(NSInteger)imageID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtImage:(NSInteger)imageID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtImage:(NSInteger)imageID;
@end
