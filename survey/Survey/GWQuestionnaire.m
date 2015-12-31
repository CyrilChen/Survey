//
//  GWQuestionnaire.m
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import "GWQuestionnaire.h"
//#import "GWQuestionnaireCellSelection.h"
#import "GWQuestionnaireCellRate.h"
//#import "GWQuestionnaireCellTextField.h"

#define HEADER_MARGIN 20
#define HEADER_W 0.9
#define RATE_CELL_H 125         // height of GWQuestionnaireCellRate
#define OPEN_QUESTION_CELL_H 44   // height of GWQuestionnaireCellTextField

@interface GWQuestionnaire ()
{
    UIFont *headerFont;
}
@end

@implementation GWQuestionnaire

- (id)initWithItems:(NSMutableArray*)items
{
    self = [super initWithStyle:UITableViewStylePlain];
    if (self) {
        self.surveyItems = items;
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.tableView setBackgroundColor:[UIColor clearColor]];
    headerFont = [UIFont fontWithName:@"STHeitiSC-Medium" size:21];
    [self.tableView setBackgroundColor:[UIColor clearColor]];
    [self.tableView setSeparatorStyle:UITableViewCellSeparatorStyleNone];
}

-(CGFloat)heightForTitle:(NSString*)str
{
    CGSize size = [str sizeWithFont:headerFont constrainedToSize:CGSizeMake(HEADER_W * self.view.frame.size.width, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
    return size.height;
}
#pragma mark - UITableView delegate & datasource
-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    if(!_surveyItems)
        return 0;
    return _surveyItems.count;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 1;
}
- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section
{
    QuestionnaireItem *item = [self.surveyItems objectAtIndex:section];
    return [self heightForTitle:item.questionTitle] + HEADER_MARGIN;
}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section
{
    QuestionnaireItem *item = [self.surveyItems objectAtIndex:section];
    UIView *sectionHeaderView = [[UIView alloc] initWithFrame:
                                 CGRectMake(0, 0, tableView.frame.size.width/4, [self heightForTitle:item.questionTitle] + HEADER_MARGIN)];
    sectionHeaderView.backgroundColor = [UIColor colorWithRed:242.0/255.0 green:240.0/255.0 blue:237.0/255.0 alpha:1];
    
    int headerW = self.view.frame.size.width * HEADER_W;
    UILabel *headerLabel = [[UILabel alloc] initWithFrame:
                            CGRectMake(sectionHeaderView.frame.size.width, HEADER_MARGIN/2, headerW, sectionHeaderView.frame.size.height - HEADER_MARGIN)];
    headerLabel.backgroundColor = [UIColor clearColor];
    [headerLabel setTextColor:[UIColor colorWithRed:38.0/255.0 green:63.0/255.0 blue:106.0/255.0 alpha:1]];
    [headerLabel setFont:headerFont];
    [headerLabel setNumberOfLines:0];
    headerLabel.text = item.questionTitle;
    [sectionHeaderView addSubview:headerLabel];
    
    return sectionHeaderView;
}
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuestionnaireItem *item = [self.surveyItems objectAtIndex:indexPath.section];
    
    // GWQuestionnaireSingleChoice or GWQuestionnaireMultipleChoice
    if(item.type == QuestionnaireSingleChoice || item.type == QuestionnaireMultipleChoice)
    {
        int optionsH = [item.answersArray count] * 44;
        return optionsH;
    }
    // GWQuestionnaireRateQuestion
    if(item.type == QuestionnaireRateQuestion)
    {
        return RATE_CELL_H;
    }
    // GWQuestionnaireOpenQuestion
    if(item.type == QuestionnaireOpenQuestion)
    {
        return OPEN_QUESTION_CELL_H;
    }
    return 44.0;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    QuestionnaireItem *item = [self.surveyItems objectAtIndex:indexPath.section];
    
    // GWQuestionnaireSingleChoice or GWQuestionnaireMultipleChoice
    if(item.type == QuestionnaireSingleChoice || item.type == QuestionnaireMultipleChoice)
    {
        static NSString *cellIdentifier = @"GWQuestionnaireCellRate";
        GWQuestionnaireCellRate *cell = (GWQuestionnaireCellRate *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (cell == nil)
        {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"GWQuestionnaireCellRate" owner:self options:nil];
            cell = [nib objectAtIndex:0];
            [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
            cell.backgroundColor = [UIColor clearColor];
            [cell setOwner:self];
        }
//        [cell setContent:item row:indexPath.section];
        return cell;
    }
    
    // GWQuestionnaireRateQuestion
    if(item.type == QuestionnaireRateQuestion)
    {
        static NSString *cellIdentifier = @"GWQuestionnaireCellRate";
        GWQuestionnaireCellRate *cell = (GWQuestionnaireCellRate *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
        if (cell == nil)
        {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"GWQuestionnaireCellRate" owner:self options:nil];
            cell = [nib objectAtIndex:0];
            [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
            cell.backgroundColor = [UIColor clearColor];
            [cell setOwner:self];
        }
        [cell setContent:item row:indexPath.section parentWidth:self.view.frame.size.width];
        return cell;
    }
    
    // GWQuestionnaireOpenQuestion
//    if(item.type == GWQuestionnaireOpenQuestion)
//    {
//        static NSString *cellIdentifier = @"GWQuestionnaireCellTextField";
//        GWQuestionnaireCellTextField *cell = (GWQuestionnaireCellTextField *)[tableView dequeueReusableCellWithIdentifier:cellIdentifier];
//        if (cell == nil)
//        {
//            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"GWQuestionnaireCellTextField" owner:self options:nil];
//            cell = [nib objectAtIndex:0];
//            [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
//            cell.backgroundColor = [UIColor clearColor];
//            [cell setOwner:self];
//        }
//        [cell setContent:item row:indexPath.section];
//        return cell;
//    }
    
    return nil;
}

#pragma mark Cell editing
// called by GWQuestionnaireCellRate, GWQuestionnaireSingleChoice & GWQuestionnaireMultipleChoice
-(void)surveyCellSelectionChanged:(NSArray*)arr atIndex:(NSNumber*)index
{
    QuestionnaireItem *item = [self.surveyItems objectAtIndex:[index intValue]];
    item.answersArray = arr;
    [self.surveyItems replaceObjectAtIndex:[index intValue] withObject:item];
}

// called by GWQuestionnaireCellTextField
-(void)surveyCellUserAnswerChanged:(NSString*)answer atIndex:(NSNumber*)index
{
    QuestionnaireItem *item = [self.surveyItems objectAtIndex:[index intValue]];
    item.userAnswerStr = answer;
    [self.surveyItems replaceObjectAtIndex:[index intValue] withObject:item];
}

#pragma mark Getting results
// returns YES if every question has been answered
-(BOOL)isCompleted
{
    for(QuestionnaireItem *item in _surveyItems)
    {
        if(item.type == QuestionnaireMultipleChoice ||
           item.type == QuestionnaireSingleChoice ||
           item.type == QuestionnaireRateQuestion)
        {
            BOOL answered = NO;
            for(NSDictionary *answer in item.answersArray)
            {
                if([[answer objectForKey:@"marked"] boolValue])
                {
                    answered = YES;
                    break;
                }
            }
            if(!answered)
                return NO;
        }
        else
        {
            if(!item.userAnswerStr || [item.userAnswerStr length] == 0)
                return NO;
        }
    }
    return YES;
}
@end
