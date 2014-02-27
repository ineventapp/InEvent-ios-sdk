//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "InEventQuizAPIController.h"

@implementation InEventQuizAPIController

#pragma mark - Quiz

- (void)createQuizAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withText:(NSString *)text {
    
	if (tokenID != nil && text != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"text" : text}};
        
		[self JSONObjectWithNamespace:@"quiz" method:@"createQuiz" attributes:attributes];
	}
}

- (void)createOptionAuthenticatingWithTokenID:(NSString *)tokenID atQuiz:(NSInteger)quizID withText:(NSString *)text {
    
	if (tokenID != nil && text != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%d", quizID]}, @"POST" : @{@"text" : text}};
        
		[self JSONObjectWithNamespace:@"quiz" method:@"createOption" attributes:attributes];
	}
}

- (void)removeQuizAuthenticatingWithTokenID:(NSString *)tokenID atQuiz:(NSInteger)quizID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%d", quizID]}};
        
		[self JSONObjectWithNamespace:@"quiz" method:@"removeQuiz" attributes:attributes];
	}
}

- (void)removeOptionAuthenticatingWithTokenID:(NSString *)tokenID atQuizOption:(NSInteger)quizOptionID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizOptionID" : [NSString stringWithFormat:@"%d", quizOptionID]}};
        
		[self JSONObjectWithNamespace:@"quiz" method:@"removeOption" attributes:attributes];
	}
}

- (void)getAllAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}};
        
		[self JSONObjectWithNamespace:@"quiz" method:@"getAll" attributes:attributes];
	}
}

- (void)getSingleAuthenticatingWithTokenID:(NSString *)tokenID atQuiz:(NSInteger)quizID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%d", quizID]}};
        
		[self JSONObjectWithNamespace:@"quiz" method:@"getSingle" attributes:attributes];
	}
}

- (void)respondAuthenticatingWithTokenID:(NSString *)tokenID atQuiz:(NSInteger)quizID atQuizOption:(NSInteger)quizOptionID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"quizID" : [NSString stringWithFormat:@"%d", quizID]}, @"POST" : @{@"quizOptionID" : [NSString stringWithFormat:@"%d", quizOptionID]}};
        
		[self JSONObjectWithNamespace:@"quiz" method:@"respond" attributes:attributes];
	}
}

@end