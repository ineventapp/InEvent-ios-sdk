//
//  APIController.m
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import "INQuizOptionAPIController.h"

@implementation INQuizOptionAPIController

#pragma mark - QuizOption

- (void)createAuthenticatedAtQuiz:(NSInteger)quizID withText:(NSString *)text {
    
	if (text != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"quizID" : [NSString stringWithFormat:@"%d", quizID]}, @"POST" : @{@"text" : text}};
        
		[self JSONObjectWithModule:@"quiz.option" method:@"create" attributes:attributes];
	}
}

- (void)removeAuthenticatedAtQuizOption:(NSInteger)quizOptionID {
    
	NSDictionary *attributes = @{@"GET" : @{@"quizOptionID" : [NSString stringWithFormat:@"%d", quizOptionID]}};
    
	[self JSONObjectWithModule:@"quiz.option" method:@"remove" attributes:attributes];
}

@end