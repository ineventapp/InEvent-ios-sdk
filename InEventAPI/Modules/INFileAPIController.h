#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INFileAPIController : INAPIController

#pragma mark - File
- (void)createAuthenticatedWithName:(NSString *)name withFile:(NSString *)file;
- (void)createAuthenticatedWithName:(NSString *)name withX:(NSString *)x withY:(NSString *)y withWidth:(NSString *)width withHeight:(NSString *)height withFile:(NSString *)file;
@end