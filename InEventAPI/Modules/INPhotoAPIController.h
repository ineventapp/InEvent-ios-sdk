#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPhotoAPIController : INAPIController

#pragma mark - Photo
- (void)createAuthenticatedAtEventWithUrl:(NSString *)url;
- (void)removeAuthenticatedAtPhoto:(NSInteger)photoID withSendNotification:(NSString *)sendNotification;
- (void)findAuthenticatedAtEventForPerson:(NSInteger)personID atTag:(NSInteger)tagID withSelection:(NSString *)selection withPaginated:(NSString *)paginated;
- (void)getAuthenticatedAtPhoto:(NSInteger)photoID;
- (void)recognizerAuthenticatedAtEventWithSource:(NSString *)source;
- (void)recognizerAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)checkRecognizerProcessAuthenticatedAtEventWithSource:(NSString *)source;
- (void)checkRecognizerProcessAuthenticatedAtEventForPerson:(NSInteger)personID;
@end
