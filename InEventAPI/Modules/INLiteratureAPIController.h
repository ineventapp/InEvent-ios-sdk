#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INLiteratureAPIController : INAPIController

#pragma mark - Literature
- (void)createAuthenticatedWithUrl:(NSString *)url withCategory:(NSString *)category;
- (void)removeAuthenticatedAtLiterature:(NSInteger)literatureID;
- (void)find;
@end
