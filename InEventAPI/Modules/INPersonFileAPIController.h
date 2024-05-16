#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonFileAPIController : INAPIController

#pragma mark - PersonFile
- (void)bindAuthenticatedAtEventWithName:(NSString *)name withExtension:(NSString *)extension withUrl:(NSString *)url;
- (void)operateAuthenticatedAtMemberFile:(NSInteger)memberFileID withKey:(NSString *)key withValue:(NSString *)value;
- (void)dismissAuthenticatedAtMemberFile:(NSInteger)memberFileID;
- (void)findAuthenticatedAtEvent;
- (void)getAuthenticatedAtMemberFile:(NSInteger)memberFileID;
@end
