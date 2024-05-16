#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAssetAPIController : INAPIController

#pragma mark - Asset
- (void)createAuthenticatedAtEventAtLive:(NSInteger)liveID withType:(NSString *)type withValue:(NSString *)value;
- (void)createOrUpdateAuthenticatedAtEventWithType:(NSString *)type withValue:(NSString *)value;
- (void)editAuthenticatedAtAsset:(NSInteger)assetID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtAsset:(NSInteger)assetID;
- (void)removeAuthenticatedAtEventWithType:(NSString *)type withValue:(NSString *)value;
- (void)findAuthenticatedAtEventWithType:(NSString *)type withOrder:(NSString *)order;
- (void)getAuthenticatedAtAsset:(NSInteger)assetID;
@end
