#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMaterialAPIController : INAPIController

#pragma mark - Material
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withName:(NSString *)name withExtension:(NSString *)extension withUrl:(NSString *)url;
- (void)createAuthenticatedAtEventWithName:(NSString *)name withExtension:(NSString *)extension withUrl:(NSString *)url;
- (void)removeAuthenticatedAtMaterial:(NSInteger)materialID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtMaterial:(NSInteger)materialID;
@end
