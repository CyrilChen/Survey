//
//  GWQuestionnaireCellSelection.h
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GWQuestionnaire.h"
//#import "QuestionnaireItem.h"
#import "QuestionItem.h"
@interface GWQuestionnaireCellSelection : UITableViewCell
@property (nonatomic, weak) IBOutlet UIView *container;
@property (weak, nonatomic) IBOutlet UILabel *mutableAnswerMessageLabel;
@property (weak, nonatomic) IBOutlet UIImageView *rightImageView;

-(void)setContent:(QuestionnaireItem*)item row:(int)r;
-(void)setOwner:(GWQuestionnaire*)val;
@end
