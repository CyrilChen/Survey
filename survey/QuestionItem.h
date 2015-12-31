//
//  QuestionItem.h
//  iMagazine
//
//  Created by Yibing.Chen on 12/30/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef enum {
    QuestionSingleChoice,
    QuestionMultipleChoice,
    QuestionOpenQuestion,
    QuestionRateQuestion,
} QuestionItemType;

@interface QuestionItem : NSObject
// Question text
@property (nonatomic, strong) NSString *questionTitle;
// Possible choices
@property (nonatomic, strong) NSArray *answersArray;
// Open answer text
@property (nonatomic, strong) NSString *userAnswerStr;

@property (nonatomic, assign) NSInteger Id;

@property (nonatomic, assign) QuestionItemType type;

@end

