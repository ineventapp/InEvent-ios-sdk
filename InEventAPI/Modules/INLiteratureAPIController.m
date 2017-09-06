#import "INLiteratureAPIController.h"

@implementation INLiteratureAPIController

#pragma mark - Literature

- (void)createAuthenticatedWithUrl:(NSString *)url withCategory:(NSString *)category {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && url != nil && category != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID}, @"POST" : @{@"url" : url, @"category" : category}};

		[self objectWithModule:@"literature" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtLiterature:(NSInteger)literatureID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"literatureID" : [NSString stringWithFormat:@"%ld", (long)literatureID]}};

		[self objectWithModule:@"literature" method:@"remove" attributes:attributes];
	}
}

- (void)find {



	NSDictionary *attributes = @{@"GET" : @{}};

	[self objectWithModule:@"literature" method:@"find" attributes:attributes];
}

- (void)editAuthenticatedAtLiterature:(NSInteger)literatureID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"literatureID" : [NSString stringWithFormat:@"%ld", (long)literatureID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"literature" method:@"edit" attributes:attributes];
	}
}

@end