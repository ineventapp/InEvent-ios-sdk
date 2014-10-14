//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "INAPIController.h"

@interface INQuizOptionAPIController : INAPIController

#pragma mark - QuizOption
- (void)createAuthenticatedAtQuiz:(NSInteger)quizID withText:(NSString *)text;
- (void)removeAuthenticatedAtQuizOption:(NSInteger)quizOptionID;

@end