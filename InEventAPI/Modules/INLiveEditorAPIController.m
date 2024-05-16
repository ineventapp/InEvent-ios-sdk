#import "INLiveEditorAPIController.h"

@implementation INLiveEditorAPIController

#pragma mark - LiveEditor

- (void)createOrUpdateAuthenticatedAtLiveEditor:(NSInteger)liveEditorID withLayout:(NSString *)layout withPriority:(NSString *)priority withElement:(NSString *)element withSelector:(NSString *)selector withOverrideRules:(NSString *)overrideRules withCss:(NSString *)css {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && layout != nil && priority != nil && element != nil && selector != nil && overrideRules != nil && css != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveEditorID" : [NSString stringWithFormat:@"%ld", (long)liveEditorID], @"layout" : layout}, @"POST" : @{@"priority" : priority, @"element" : element, @"selector" : selector, @"overrideRules" : overrideRules, @"css" : css}};

		[self objectWithModule:@"live.editor" method:@"createOrUpdate" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtLiveEditor:(NSInteger)liveEditorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveEditorID" : [NSString stringWithFormat:@"%ld", (long)liveEditorID]}};

		[self objectWithModule:@"live.editor" method:@"remove" attributes:attributes];
	}
}

- (void)removeAllAuthenticatedWithLayout:(NSString *)layout {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && layout != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"layout" : layout}};

		[self objectWithModule:@"live.editor" method:@"removeAll" attributes:attributes];
	}
}

- (void)findAuthenticatedWithLayout:(NSString *)layout {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && layout != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"layout" : layout}};

		[self objectWithModule:@"live.editor" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtLiveEditor:(NSInteger)liveEditorID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"liveEditorID" : [NSString stringWithFormat:@"%ld", (long)liveEditorID]}};

		[self objectWithModule:@"live.editor" method:@"get" attributes:attributes];
	}
}

@end
