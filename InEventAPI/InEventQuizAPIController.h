//
//  APIController.h
//  InEvent
//
//  Created by Pedro Góes on 14/10/12.
//  Copyright (c) 2012 Pedro Góes. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "InEventAPIController.h"

@interface InEventQuizAPIController : InEventAPIController

#pragma mark - Quiz
- (void)createQuizAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withText:(NSString *)text;
- (void)createOptionAuthenticatingWithTokenID:(NSString *)tokenID atQuiz:(NSInteger)quizID withText:(NSString *)text;
- (void)removeQuizAuthenticatingWithTokenID:(NSString *)tokenID atQuiz:(NSInteger)quizID;
- (void)removeOptionAuthenticatingWithTokenID:(NSString *)tokenID atQuizOption:(NSInteger)quizOptionID;
- (void)getAllAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID;
- (void)getSingleAuthenticatingWithTokenID:(NSString *)tokenID atQuiz:(NSInteger)quizID;
- (void)respondAuthenticatingWithTokenID:(NSString *)tokenID atQuiz:(NSInteger)quizID atQuizOption:(NSInteger)quizOptionID;

@end
