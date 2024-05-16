#import "INLiveTranslationAPIController.h"

@implementation INLiveTranslationAPIController

#pragma mark - LiveTranslation

- (void)createAuthenticatedAtLive:(NSInteger)liveID withLanguage:(NSString *)language {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && language != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}, @"POST" : @{@"language" : language}};

		[self objectWithModule:@"live.translation" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatedAtLiveTranslation:(NSInteger)liveTranslationID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveTranslationID" : [NSString stringWithFormat:@"%ld", (long)liveTranslationID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"live.translation" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtLiveTranslation:(NSInteger)liveTranslationID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveTranslationID" : [NSString stringWithFormat:@"%ld", (long)liveTranslationID]}};

		[self objectWithModule:@"live.translation" method:@"remove" attributes:attributes];
	}
}

- (void)findAuthenticatedAtLive:(NSInteger)liveID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveID" : [NSString stringWithFormat:@"%ld", (long)liveID]}};

		[self objectWithModule:@"live.translation" method:@"find" attributes:attributes];
	}
}

@end
