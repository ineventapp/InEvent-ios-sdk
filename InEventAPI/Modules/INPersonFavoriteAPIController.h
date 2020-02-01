#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INPersonFavoriteAPIController : INAPIController

#pragma mark - PersonFavorite
- (void)bindAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)bindAuthenticatedAtEventWithCode:(NSString *)code withSource:(NSString *)source;
- (void)bindAuthenticatedAtEventWithCode:(NSString *)code withSource:(NSString *)source withGrade:(NSString *)grade withNote:(NSString *)note;
- (void)operateAuthenticatedAtEventWithKey:(NSString *)key forPerson:(NSInteger)personID withValue:(NSString *)value;
- (void)dismissAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)findAuthenticatedAtEvent;
@end
