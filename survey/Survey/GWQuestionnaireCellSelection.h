//
//  GWQuestionnaireCellSelection.h
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "QuestionnaireItem.h"
#import "QuestionItem.h"
#import "FAKFontAwesome.h"
@interface GWQuestionnaireCellSelection : UITableViewCell
@property (nonatomic, weak) IBOutlet UIView *container;
@property (weak, nonatomic) IBOutlet UILabel *mutableAnswerMessageLabel;
@property (weak, nonatomic) IBOutlet UIImageView *rightImageView;

@end
