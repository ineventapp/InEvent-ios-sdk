#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INTaskAPIController : INAPIController

#pragma mark - Task
- (void)createAuthenticatedAtEventWithName:(NSString *)name;
- (void)createAuthenticatedAtEventWithPath:(NSString *)path;
- (void)editAuthenticatedAtTask:(NSInteger)taskID withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtEventAtTask:(NSInteger)taskID;
- (void)findAuthenticatedAtEventWithPaginated:(NSString *)paginated withQuery:(NSString *)query;
- (void)getAuthenticatedAtEventAtTask:(NSInteger)taskID;
@end
