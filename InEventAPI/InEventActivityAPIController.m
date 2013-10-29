//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventActivityAPIController.h"

@implementation InEventActivityAPIController

#pragma mark - Activity

- (void)createActivityAtEvent:(NSInteger)eventID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"create" attributes:attributes];
    }
}

- (void)editField:(NSString *)name withValue:(NSString *)value atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil && name != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"name" : name, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST": @{@"value" : value}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"edit" attributes:attributes];
    }
}

- (void)removeActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"remove" attributes:attributes];
    }
}

- (void)requestEnrollmentAtActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"requestEnrollment" attributes:attributes];
    }
}

- (void)requestEnrollmentForPersonWithName:(NSString *)name andEmail:(NSString *)email atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"name" : name, @"email" : email}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"requestEnrollment" attributes:attributes];
    }
}

- (void)dismissEnrollmentAtActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"dismissEnrollment" attributes:attributes];
    }
}

- (void)dismissEnrollmentForPerson:(NSInteger)personID atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"dismissEnrollment" attributes:attributes];
    }
}

- (void)confirmEntranceForPerson:(NSInteger)personID atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {
   
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"confirmEntrance" attributes:attributes];
    }
}

- (void)revokeEntranceForPerson:(NSInteger)personID atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"revokeEntrance" attributes:attributes];
    }
}

- (void)confirmPaymentForPerson:(NSInteger)personID atActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"confirmPayment" attributes:attributes];
    }
}

- (void)getPeopleAtActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"selection" : @"all"}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"getPeople" attributes:attributes];
    }
}

- (void)getQuestionsAtActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"selection" : @"all"}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"getQuestions" attributes:attributes];
    }
}

- (void)sendQuestion:(NSString *)question toActivity:(NSInteger)activityID withTokenID:(NSString *)tokenID {

    if (tokenID != nil && question != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"question" : question}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"sendQuestion" attributes:attributes];
    }
}

- (void)removeQuestion:(NSInteger)questionID withTokenID:(NSString *)tokenID {
   
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%d", questionID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"removeQuestion" attributes:attributes];
    }
}

- (void)upvoteQuestion:(NSInteger)questionID withTokenID:(NSString *)tokenID {

    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%d", questionID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"upvoteQuestion" attributes:attributes];
    }
}

- (void)getOpinionFromActivity:(NSInteger)activityID withToken:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"getOpinion" attributes:attributes];
    }
}

- (void)sendOpinionWithRating:(NSInteger)rating toActivity:(NSInteger)activityID withToken:(NSString *)tokenID {
    
    if (tokenID != nil) {
        NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"rating" : [NSString stringWithFormat:@"%d", rating]}};
        
        [self JSONObjectWithNamespace:@"activity" method:@"sendOpinion" attributes:attributes];
    }
}

@end
