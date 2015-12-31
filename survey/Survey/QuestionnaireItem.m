//
//  QuestionnaireItem.m
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import "QuestionnaireItem.h"

@implementation QuestionnaireItem
-(id)initWithQuestion:(NSString*)question answers:(NSArray*)answers type:(QuestionnaireItemType)type
{
    self = [super init];
    if (self) {
        [self setQuestionTitle:question];
        [self setAnswersArray:answers];
        [self setType:type];
    }
    return self;
}

-(void)dealloc
{
    self.questionTitle = nil;
    self.answersArray = nil;
    self.userAnswerStr = nil;
}
@end
