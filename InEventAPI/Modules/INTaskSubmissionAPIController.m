#import "INTaskSubmissionAPIController.h"

@implementation INTaskSubmissionAPIController

#pragma mark - TaskSubmission

- (void)bindAuthenticatedAtEventAtTask:(NSInteger)taskID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"taskID" : [NSString stringWithFormat:@"%ld", (long)taskID]}};

		[self objectWithModule:@"task.submission" method:@"bind" attributes:attributes];
	}
}

- (void)operateAuthenticatedAtTaskSubmission:(NSInteger)taskSubmissionID withKey:(NSString *)key withValue:(NSString *)value {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && key != nil && value != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"taskSubmissionID" : [NSString stringWithFormat:@"%ld", (long)taskSubmissionID], @"key" : key}, @"POST" : @{@"value" : value}};

		[self objectWithModule:@"task.submission" method:@"operate" attributes:attributes];
	}
}

- (void)dismissAuthenticatedAtTaskSubmission:(NSInteger)taskSubmissionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"taskSubmissionID" : [NSString stringWithFormat:@"%ld", (long)taskSubmissionID]}};

		[self objectWithModule:@"task.submission" method:@"dismiss" attributes:attributes];
	}
}

- (void)findAuthenticatedAtEventWithTarget:(NSString *)target atTarget:(NSInteger)targetID withPending:(NSString *)pending {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];
	NSString *eventID = [[INEventToken sharedInstance] objectForKey:@"eventID"];

	if (tokenID != nil && eventID != nil && target != nil && pending != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : eventID, @"target" : target, @"targetID" : [NSString stringWithFormat:@"%ld", (long)targetID], @"pending" : pending}};

		[self objectWithModule:@"task.submission" method:@"find" attributes:attributes];
	}
}

- (void)getAuthenticatedAtTaskSubmission:(NSInteger)taskSubmissionID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"taskSubmissionID" : [NSString stringWithFormat:@"%ld", (long)taskSubmissionID]}};

		[self objectWithModule:@"task.submission" method:@"get" attributes:attributes];
	}
}

@end
