#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMaterialAPIController : INAPIController

#pragma mark - Material
- (void)createAuthenticatedAtActivity:(NSInteger)activityID withName:(NSString *)name withExtension:(NSString *)extension withUrl:(NSString *)url;
- (void)createAuthenticatedAtSponsor:(NSInteger)sponsorID withName:(NSString *)name withExtension:(NSString *)extension withUrl:(NSString *)url;
- (void)createAuthenticatedAtEventWithName:(NSString *)name withExtension:(NSString *)extension withUrl:(NSString *)url;
- (void)editAuthenticatedAtMaterial:(NSInteger)materialID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtMaterial:(NSInteger)materialID atActivity:(NSInteger)activityID;
- (void)removeAuthenticatedAtMaterial:(NSInteger)materialID atSponsor:(NSInteger)sponsorID;
- (void)removeAuthenticatedAtMaterial:(NSInteger)materialID;
- (void)findAuthenticatedAtActivity:(NSInteger)activityID withQuery:(NSString *)query withWithAnalytics:(NSString *)withAnalytics withPaginated:(NSString *)paginated withOffset:(NSString *)offset;
- (void)findAuthenticatedAtSponsor:(NSInteger)sponsorID withQuery:(NSString *)query withWithAnalytics:(NSString *)withAnalytics;
- (void)findAuthenticatedAtEventWithQuery:(NSString *)query;
- (void)getAuthenticatedAtMaterial:(NSInteger)materialID;
- (void)analyticsAuthenticatedAtEventAtActivity:(NSInteger)activityID;
- (void)analyticsAuthenticatedAtEventAtSponsor:(NSInteger)sponsorID;
@end
