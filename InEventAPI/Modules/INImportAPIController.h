#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INImportAPIController : INAPIController

#pragma mark - Import
- (void)configAuthenticatedAtEventWithTarget:(NSString *)target;
- (void)bindAuthenticatedAtEventWithTarget:(NSString *)target withFile:(NSString *)file withHeaderLine:(NSString *)headerLine withMapping:(NSString *)mapping atList:(NSInteger)listID;
@end
