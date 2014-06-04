#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMaterialAPIController : INAPIController

#pragma mark - Material
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withName:(NSString *)name withIcon:(NSString *)icon withUrl:(NSString *)url;
- (void)removeAuthenticatedAtMaterial:(NSInteger)materialID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID;
- (void)getAuthenticatedAtMaterial:(NSInteger)materialID;

@end