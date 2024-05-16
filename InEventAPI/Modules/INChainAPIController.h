#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INChainAPIController : INAPIController

#pragma mark - Chain
- (void)createAuthenticatedAtCompany:(NSInteger)companyID withName:(NSString *)name withDescription:(NSString *)description withConstraint:(NSString *)constraint withSource:(NSString *)source atSource:(NSInteger)sourceID;
- (void)createAuthenticatedAtEventWithName:(NSString *)name withDescription:(NSString *)description withConstraint:(NSString *)constraint withSource:(NSString *)source atSource:(NSInteger)sourceID;
- (void)editAuthenticatedAtEventWithSource:(NSString *)source withKey:(NSString *)key withValue:(NSString *)value;
- (void)removeAuthenticatedAtChain:(NSInteger)chainID;
- (void)findAuthenticatedAtCompany:(NSInteger)companyID withSource:(NSString *)source;
- (void)findAuthenticatedAtEventWithSource:(NSString *)source;
@end
