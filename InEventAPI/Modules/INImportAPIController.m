#import "INImportAPIController.h"

@implementation INImportAPIController

#pragma mark - Import

- (void)configAuthenticatedAtEventWithTarget:(NSString *)target {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && target != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"target" : target}};

		[self objectWithModule:@"import" method:@"config" attributes:attributes];
	}
}

- (void)bindAuthenticatedAtEventWithTarget:(NSString *)target withFile:(NSString *)file withHeaderLine:(NSString *)headerLine withMapping:(NSString *)mapping atList:(NSInteger)listID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && target != nil && file != nil && headerLine != nil && mapping != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"target" : target}, @"POST" : @{@"file" : file, @"headerLine" : headerLine, @"mapping" : mapping, @"listID" : [NSString stringWithFormat:@"%ld", (long)listID]}};

		[self objectWithModule:@"import" method:@"bind" attributes:attributes];
	}
}

@end
