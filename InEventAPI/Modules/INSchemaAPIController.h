#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INSchemaAPIController : INAPIController

#pragma mark - Schema
- (void)getWithModule:(NSString *)module;
@end
