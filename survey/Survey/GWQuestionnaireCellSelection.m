//
//  GWQuestionnaireCellSelection.m
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import "GWQuestionnaireCellSelection.h"

#define OPTION_H 44

@interface GWQuestionnaireCellSelection ()
{
    float actualY;
    NSMutableArray *answers;
    int row;
    QuestionItemType typeOfItem;
}
@end
@implementation GWQuestionnaireCellSelection
- (void)awakeFromNib
{
    [super awakeFromNib];
    [self.container.layer setCornerRadius:8.0];
    [self.container.layer setBorderColor:[UIColor colorWithRed:93.0/255.0 green:184.0/255.0 blue:231.0/255.0 alpha:1].CGColor];
    [self.container.layer setBorderWidth:1.0];
    
    FAKFontAwesome * fontPin = [FAKFontAwesome checkIconWithSize:14.0];
    [fontPin addAttribute:NSForegroundColorAttributeName value:[UIColor colorWithRed:255.0/255.0 green:255.0/255.0 blue:255.0/255.0 alpha:1]];
    //    [fontPin imageWithSize:CGSizeMake(14, 14)];
    
    [self.rightImageView setImage:[fontPin imageWithSize:CGSizeMake(14.0, 14.0)]];
    //        self.container.backgroundColor = [UIColor blueColor];
    //    [self.container setBackgroundColor:[UIColor colorWithRed:242.0/255.0 green:240.0/255.0 blue:237.0/255.0 alpha:1]];
}

@end

