//
//  QuestionnaireCellRate.m
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//



#import "GWQuestionnaireCellRate.h"
#import "FAKFontAwesome.h"
@interface GWQuestionnaireCellRate ()
{
    NSMutableArray *answers;
    int row;
    int itemWidth;
}
@end

@implementation GWQuestionnaireCellRate
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
}
@end

