#import "INTranslationAPIController.h"

@implementation INTranslationAPIController

#pragma mark - Translation

- (void)bindAuthenticatedWithResource:(NSString *)resource atResource:(NSInteger)resourceID withGenerate:(NSString *)generate withLang:(NSString *)lang withColumn:(NSString *)column withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && resource != nil && generate != nil && lang != nil && column != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"resource" : resource, @"resourceID" : [NSString stringWithFormat:@"%ld", (long)resourceID], @"generate" : generate}, @"POST" : @{@"lang" : lang, @"column" : column, @"text" : text}};

		[self objectWithModule:@"translation" method:@"bind" attributes:attributes];
	}
}

- (void)dismissAuthenticatedWithResource:(NSString *)resource atResource:(NSInteger)resourceID withLang:(NSString *)lang withColumn:(NSString *)column {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && resource != nil && lang != nil && column != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"resource" : resource, @"resourceID" : [NSString stringWithFormat:@"%ld", (long)resourceID]}, @"POST" : @{@"lang" : lang, @"column" : column}};

		[self objectWithModule:@"translation" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissAllAuthenticatedAtEventWithLang:(NSString *)lang {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && lang != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}, @"POST" : @{@"lang" : lang}};

		[self objectWithModule:@"translation" method:@"dismissAll" attributes:attributes];
	}
}

- (void)findAuthenticatedWithResource:(NSString *)resource atResource:(NSInteger)resourceID withColumn:(NSString *)column {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && resource != nil && column != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"resource" : resource, @"resourceID" : [NSString stringWithFormat:@"%ld", (long)resourceID], @"column" : column}};

		[self objectWithModule:@"translation" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedWithResource:(NSString *)resource atResource:(NSInteger)resourceID withLang:(NSString *)lang {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && resource != nil && lang != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"resource" : resource, @"resourceID" : [NSString stringWithFormat:@"%ld", (long)resourceID]}, @"POST" : @{@"lang" : lang}};

		[self objectWithModule:@"translation" method:@"get" attributes:attributes];
	}
}

- (void)availableAuthenticated {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, }};

		[self objectWithModule:@"translation" method:@"available" attributes:attributes];
	}
}

- (void)enabledAtEventWithWithAnalytics:(NSString *)withAnalytics {

	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (eventID != nil && withAnalytics != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"eventID" : eventID, @"withAnalytics" : withAnalytics}};

		[self objectWithModule:@"translation" method:@"enabled" attributes:attributes];
	}
}

- (void)translateMissingAuthenticatedAtEventWithResource:(NSString *)resource withLanguages:(NSString *)languages {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && resource != nil && languages != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"resource" : resource}, @"POST" : @{@"languages" : languages}};

		[self objectWithModule:@"translation" method:@"translateMissing" attributes:attributes];
	}
}

- (void)findTranslationsAuthenticatedAtEventWithResource:(NSString *)resource {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && resource != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"resource" : resource}};

		[self objectWithModule:@"translation" method:@"findTranslations" attributes:attributes];
	}
}

- (void)analyticsAuthenticatedAtEvent {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID}};

		[self objectWithModule:@"translation" method:@"analytics" attributes:attributes];
	}
}

@end
