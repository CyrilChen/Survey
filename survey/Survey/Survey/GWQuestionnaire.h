//
//  GWQuestionnaire.h
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionnaireItem.h"
@interface GWQuestionnaire : UITableViewController
// contains GWQuestionnaireItem (questions with answers)
@property (nonatomic, strong) NSMutableArray *surveyItems;

- (id)initWithItems:(NSMutableArray*)items;
-(BOOL)isCompleted;
@end
