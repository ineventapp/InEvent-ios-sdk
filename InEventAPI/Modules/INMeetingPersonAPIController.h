#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INMeetingPersonAPIController : INAPIController

#pragma mark - MeetingPerson
- (void)bindAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID withType:(NSString *)type;
- (void)bindAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)bindAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)confirmAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)revokeAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)rsvpAuthenticatedAtMeeting:(NSInteger)meetingID withRsvp:(NSString *)rsvp withCancel:(NSString *)cancel withReason:(NSString *)reason;
- (void)dismissAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)dismissAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)dismissAllAuthenticatedForPerson:(NSInteger)personID;
- (void)checkInAuthenticatedAtMeeting:(NSInteger)meetingID forPerson:(NSInteger)personID;
- (void)checkInAuthenticatedAtMeeting:(NSInteger)meetingID;
- (void)matchMakingAuthenticatedAtEventForPerson:(NSInteger)personID withMatchOperation:(NSString *)matchOperation withGuestsPerMeeting:(NSString *)guestsPerMeeting withTagsMatch:(NSString *)tagsMatch withTagsException:(NSString *)tagsException;
- (void)getWaitlistAuthenticatedAtEventForPerson:(NSInteger)personID atMeeting:(NSInteger)meetingID;
- (void)getWaitlistAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)clearWaitlistAuthenticatedAtEventForPerson:(NSInteger)personID;
- (void)withSlotAuthenticatedAtEventWithSelection:(NSString *)selection withQuery:(NSString *)query withTags:(NSString *)tags withWishlist:(NSString *)wishlist;
@end
