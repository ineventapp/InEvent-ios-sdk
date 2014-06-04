#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INAdAPIController : INAPIController

#pragma mark - Ad
- (void)createAuthenticatedAtEventForExhibitor:(NSInteger)exhibitorID withImage:(NSString *)image withWeight:(NSString *)weight;
- (void)createAuthenticatedAtEventWithImage:(NSString *)image withWeight:(NSString *)weight;
- (void)removeAuthenticatedAtAd:(NSInteger)adID;
- (void)findAtEventForExhibitor:(NSInteger)exhibitorID;
- (void)findAtEvent;
- (void)seenAdAtAd:(NSInteger)adID;

@end