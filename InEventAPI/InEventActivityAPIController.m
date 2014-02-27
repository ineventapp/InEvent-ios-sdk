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

- (void)createAuthenticatingWithTokenID:(NSString *)tokenID atEvent:(NSInteger)eventID withName:(NSString *)name {
    
	if (tokenID != nil && name != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"eventID" : [NSString stringWithFormat:@"%d", eventID]}, @"POST" : @{@"name" : name}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"create" attributes:attributes];
	}
}

- (void)editAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withKey:(NSString *)key withValue:(NSString *)value {
    
	if (tokenID != nil && key != nil && value != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"key" : key}, @"POST" : @{@"value" : value}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"edit" attributes:attributes];
	}
}

- (void)removeAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"remove" attributes:attributes];
	}
}

- (void)enrollAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"enroll" attributes:attributes];
	}
}

- (void)enrollPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withName:(NSString *)name withEmail:(NSString *)email {
    
	if (tokenID != nil && name != nil && email != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"name" : name, @"email" : email}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"enrollPerson" attributes:attributes];
	}
}

- (void)enrollPeopleAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withPath:(NSString *)path {
    
	if (tokenID != nil && path != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"path" : path}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"enrollPeople" attributes:attributes];
	}
}

- (void)dismissAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"dismiss" attributes:attributes];
	}
}

- (void)dismissPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"dismissPerson" attributes:attributes];
	}
}

- (void)confirmApprovalForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"confirmApprovalForPerson" attributes:attributes];
	}
}

- (void)revokeApprovalForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"revokeApprovalForPerson" attributes:attributes];
	}
}

- (void)confirmEntranceForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"confirmEntranceForPerson" attributes:attributes];
	}
}

- (void)revokeEntranceForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"revokeEntranceForPerson" attributes:attributes];
	}
}

- (void)confirmPaymentForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"confirmPaymentForPerson" attributes:attributes];
	}
}

- (void)revokePaymentForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"revokePaymentForPerson" attributes:attributes];
	}
}

- (void)risePriorityAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"risePriority" attributes:attributes];
	}
}

- (void)decreasePriorityAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"decreasePriority" attributes:attributes];
	}
}

- (void)getPeopleAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withSelection:(NSString *)selection withOrder:(NSString *)order {
    
	if (tokenID != nil && selection != nil && order != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"selection" : selection, @"order" : order}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"getPeople" attributes:attributes];
	}
}

- (void)getMaterialsAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"getMaterials" attributes:attributes];
	}
}

- (void)sendMaterialAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withName:(NSString *)name withIcon:(NSString *)icon withUrl:(NSString *)url {
    
	if (tokenID != nil && name != nil && icon != nil && url != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"name" : name, @"icon" : icon, @"url" : url}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"sendMaterial" attributes:attributes];
	}
}

- (void)removeMaterialAuthenticatingWithTokenID:(NSString *)tokenID atMaterial:(NSInteger)materialID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"materialID" : [NSString stringWithFormat:@"%d", materialID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"removeMaterial" attributes:attributes];
	}
}

- (void)getQuestionsAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"getQuestions" attributes:attributes];
	}
}

- (void)sendQuestionAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withQuestion:(NSString *)question {
    
	if (tokenID != nil && question != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"question" : question}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"sendQuestion" attributes:attributes];
	}
}

- (void)removeQuestionAuthenticatingWithTokenID:(NSString *)tokenID atQuestion:(NSInteger)questionID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%d", questionID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"removeQuestion" attributes:attributes];
	}
}

- (void)upvoteQuestionAuthenticatingWithTokenID:(NSString *)tokenID atQuestion:(NSInteger)questionID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"questionID" : [NSString stringWithFormat:@"%d", questionID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"upvoteQuestion" attributes:attributes];
	}
}

- (void)getOpinionAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID {
    
	if (tokenID != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"getOpinion" attributes:attributes];
	}
}

- (void)sendOpinionAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID withRating:(NSString *)rating {
    
	if (tokenID != nil && rating != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID]}, @"POST" : @{@"rating" : rating}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"sendOpinion" attributes:attributes];
	}
}

- (void)sendOpinionForPersonAuthenticatingWithTokenID:(NSString *)tokenID atActivity:(NSInteger)activityID forPerson:(NSInteger)personID withRating:(NSString *)rating {
    
	if (tokenID != nil && rating != nil) {
        
		NSDictionary *attributes = @{@"GET" : @{@"tokenID" : tokenID, @"activityID" : [NSString stringWithFormat:@"%d", activityID], @"personID" : [NSString stringWithFormat:@"%d", personID]}, @"POST" : @{@"rating" : rating}};
        
		[self JSONObjectWithNamespace:@"activity" method:@"sendOpinionForPerson" attributes:attributes];
	}
}

@end