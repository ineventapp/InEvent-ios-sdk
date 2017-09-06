#import "INMeetingFeedbackAPIController.h"

@implementation INMeetingFeedbackAPIController

#pragma mark - MeetingFeedback

- (void)createAuthenticatedAtMeeting:(NSInteger)meetingID withText:(NSString *)text {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil && text != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}, @"POST" : @{@"text" : text}};

		[self objectWithModule:@"meeting.feedback" method:@"create" attributes:attributes];
	}
}

- (void)findAuthenticatedAtMeeting:(NSInteger)meetingID {

	NSString *tokenID = [[INPersonToken sharedInstance] objectForKey:@"tokenID"];

	if (tokenID != nil) {

		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"meetingID" : [NSString stringWithFormat:@"%ld", (long)meetingID]}};

		[self objectWithModule:@"meeting.feedback" method:@"find" attributes:attributes];
	}
}

@end