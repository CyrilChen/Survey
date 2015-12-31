//
//  QuestionnaireItem.h
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    QuestionnaireSingleChoice,
    QuestionnaireMultipleChoice,
    QuestionnaireOpenQuestion,
    QuestionnaireRateQuestion,
} QuestionnaireItemType;

@interface QuestionnaireItem : NSObject
// Question text
@property (nonatomic, strong) NSString *questionTitle;
// Possible choices
@property (nonatomic, strong) NSArray *answersArray;
// Open answer text
@property (nonatomic, strong) NSString *userAnswerStr;

@property (nonatomic, assign) QuestionnaireItemType type;

-(id)initWithQuestion:(NSString*)question answers:(NSArray*)answers type:(QuestionnaireItemType)type;
@end
