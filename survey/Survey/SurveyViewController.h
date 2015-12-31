//
//  SurveyViewController.h
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import <UIKit/UIKit.h>
//#import "QuestionnaireItem.h"
//#import "QuestionItem.h"
#import "GWQuestionnaireCellSelection.h"
//#import "GWQuestionnaire.h"
#import "GWQuestionnaireCellRate.h"
#import "RatingStartTableViewCell.h"
#import "textViewTableViewCell.h"

@interface SurveyViewController : UIViewController<UITableViewDataSource,UITableViewDelegate,RatingStartDelegate,TextViewCellDelegate>
@property (weak, nonatomic) IBOutlet UITableView *surveyTableView;
@property (weak, nonatomic) NSMutableArray *surveyItems;
@property (strong, nonatomic) NSMutableArray *surveyArray;
@end
