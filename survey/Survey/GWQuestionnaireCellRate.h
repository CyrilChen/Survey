//
//  GWQuestionnaireCellRate.h
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionnaireItem.h"
#import "GWQuestionnaire.h"
@interface GWQuestionnaireCellRate : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *rightImageView;
@property (weak, nonatomic) IBOutlet UILabel *messageLabel;

@property (weak, nonatomic) IBOutlet UIView *container;

-(void)setContent:(QuestionnaireItem*)item row:(int)r parentWidth:(int)width;
-(void)setOwner:(GWQuestionnaire*)val;
@end
