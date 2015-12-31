//
//  surveyViewController.m
//  iMagazine
//
//  Created by Yibing.Chen on 12/21/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import "SurveyViewController.h"
#define SUBMITBUTTON_ORIGH_X 120
#define SUBMITBUTTON_HEIGHT   60
#define FONT_HELVETICANEUE_BOLD    @"HelveticaNeue-Bold"
#define SUBMIT_TITLE               @"Submit"
@interface SurveyViewController ()
{
    NSMutableArray *array;
    NSMutableDictionary *answerMessageDic;
    NSMutableDictionary *mutableAnswerDic;
    NSInteger currentSelectedCellIndex;
    NSInteger currentSelectedSection;
    UIButton *submitBtn;
//    CGPoint currPoint;
    CGSize tableViewSize;
}
@end

@implementation SurveyViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.surveyTableView.backgroundColor = [UIColor colorWithRed:243.0/255.0 green:240.0/255.0 blue:237.0/255.0 alpha:1];
    
}

-(void)viewWillAppear:(BOOL)animated{
    [self messageDetail];
}

-(void)viewDidAppear:(BOOL)animated{
    NSLog(@"viewDidAppear before %f", self.surveyTableView.contentSize.height);
    tableViewSize = self.surveyTableView.contentSize;

}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

-(void)messageDetail{
    self.surveyArray = [[NSMutableArray alloc]initWithCapacity:10];
    answerMessageDic = [[NSMutableDictionary alloc]initWithCapacity:10];
    mutableAnswerDic = [[NSMutableDictionary alloc]initWithCapacity:10];
    NSMutableDictionary *dic1 = [[NSMutableDictionary alloc]initWithCapacity:10];
    NSMutableDictionary *dic2 = [[NSMutableDictionary alloc]initWithCapacity:10];
    NSMutableDictionary *dic3 = [[NSMutableDictionary alloc]initWithCapacity:10];
    NSMutableDictionary *dic4 = [[NSMutableDictionary alloc]initWithCapacity:10];
    NSMutableDictionary *dic5 = [[NSMutableDictionary alloc]initWithCapacity:10];
    NSMutableDictionary *dic6 = [[NSMutableDictionary alloc]initWithCapacity:10];
    NSMutableDictionary *dic7 = [[NSMutableDictionary alloc]initWithCapacity:10];
    NSMutableDictionary *dic8 = [[NSMutableDictionary alloc]initWithCapacity:10];
    
    [dic1 setObject:@"1.Do you feel that the training has benefited you in any way?" forKey:@"title"];
    [dic1 setObject:@"104" forKey:@"Id"];
    [dic1 setObject:@[@"11",@"12",@"13",@"14"] forKey:@"Answers"];
    [dic1 setObject:@"1" forKey:@"QuestionType"];
    
    [dic2 setObject:@"2.In which areas would you like to receive training?" forKey:@"title"];
    [dic2 setObject:@"105" forKey:@"Id"];
    [dic2 setObject:@[@"21",@"22",@"23",@"24"] forKey:@"Answers"];
    [dic2 setObject:@"2" forKey:@"QuestionType"];
    
    [dic3 setObject:@"3.How would you rate this training?" forKey:@"title"];
    [dic3 setObject:@"106" forKey:@"Id"];
    [dic3 setObject:@[@"31",@"32",@"33",@"34"] forKey:@"Answers"];
    [dic3 setObject:@"3" forKey:@"QuestionType"];
    
    [dic4 setObject:@"4.What if?" forKey:@"title"];
    [dic4 setObject:@"107" forKey:@"Id"];
    [dic4 setObject:@[@"41",@"42",@"43",@"44"] forKey:@"Answers"];
    [dic4 setObject:@"4" forKey:@"QuestionType"];
    
    
    [dic5 setObject:@"5.How many years have you been working at Lilly?" forKey:@"title"];
    [dic5 setObject:@"108" forKey:@"Id"];
    [dic5 setObject:@[@"51",@"52",@"53",@"54"] forKey:@"Answers"];
    [dic5 setObject:@"1" forKey:@"QuestionType"];
    
    [dic6 setObject:@"6.Choose two or more you like best?" forKey:@"title"];
    [dic6 setObject:@"109" forKey:@"Id"];
    [dic6 setObject:@[@"61",@"62",@"63",@"64"] forKey:@"Answers"];
    [dic6 setObject:@"2" forKey:@"QuestionType"];
    
    [dic7 setObject:@"7.Write your propose?" forKey:@"title"];
    [dic7 setObject:@"110" forKey:@"Id"];
    [dic7 setObject:@[@"71",@"72",@"73",@"74"] forKey:@"Answers"];
    [dic7 setObject:@"4" forKey:@"QuestionType"];
    
    
    [dic8 setObject:@"8.Reating Starts 2" forKey:@"title"];
    [dic8 setObject:@"111" forKey:@"Id"];
    [dic8 setObject:@[@"81",@"82",@"83",@"84"] forKey:@"Answers"];
    [dic8 setObject:@"3" forKey:@"QuestionType"];
    
    //==========================================
//    textViewTableViewCell
    
    //==========================================
    
    [self.surveyArray addObject:dic1];
    [self.surveyArray addObject:dic2];
    [self.surveyArray addObject:dic3];
    [self.surveyArray addObject:dic4];
    [self.surveyArray addObject:dic5];
    [self.surveyArray addObject:dic6];
    [self.surveyArray addObject:dic7];
    [self.surveyArray addObject:dic8];
    
    
    NSLog(@"self.surveyArray %@",self.surveyArray);
    
//    [self.surveyArray enumerateObjectsUsingBlock:^(id  _Nonnull obj, NSUInteger idx, BOOL * _Nonnull stop) {
////        QuestionnaireItem *questionItem 
//        NSMutableDictionary *dic = obj;
//        
//        
//    }];
    
}


/*
 #pragma mark - Navigation
 
 // In a storyboard-based application, you will often want to do a little preparation before navigation
 - (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
 // Get the new view controller using [segue destinationViewController].
 // Pass the selected object to the new view controller.
 }
 */

#pragma mark - UITextViewDelegate







#pragma mark - UITableViewDelegate


-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return [self.surveyArray count];
}

-(NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    
    NSMutableDictionary *messageDic = [self.surveyArray objectAtIndex:section];
    
    //    QuestionnaireItem *questionItem = [self.surveyArray objectAtIndex:section];
    //    NSLog(@"questionTitle %@",questionItem.questionTitle);
    //    NSLog(@"answersArray %@",questionItem.answersArray);
    //    NSLog(@"userAnswerStr %@",questionItem.userAnswerStr);
    
    
    NSString *title =  [messageDic objectForKey:@"QuestionType"];
    if ([title isEqualToString:@"3"]||[title isEqualToString:@"4"]) {
        return 1;
    }else{
        
        NSMutableDictionary* dic = [self.surveyArray objectAtIndex:section];
        return [[dic objectForKey:@"Answers"] count];
    }
}



-(void)subMitButtonAction:(id)sender{
    [submitBtn setSelected:YES];
    NSLog(@"submit button action ");
}

-(CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section{
    if (section == [self.surveyArray count]-1) {
        return 120;
    }else{
        return 0;
    }
}


-(UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section{
    //    GWQuestionnaireItem *item = [self.surveyItems objectAtIndex:section];
    //    UIView *sectionHeaderView = [[UIView alloc] initWithFrame:
    //                                 CGRectMake(0, 0, tableView.frame.size.width, [self heightForTitle:item.question] + 20)];
    //    sectionHeaderView.backgroundColor = [UIColor lightGrayColor];
    //
    //    int headerW = self.view.frame.size.width * 0.9;
    //    UILabel *headerLabel = [[UILabel alloc] initWithFrame:
    //                            CGRectMake((sectionHeaderView.frame.size.width - headerW)/2, 10/2, headerW, sectionHeaderView.frame.size.height - 10)];
    //    headerLabel.backgroundColor = [UIColor grayColor];
    //    [headerLabel setTextColor:[UIColor colorWithRed:37.0/255.0 green:62.0/255.0 blue:105.0/255.0 alpha:1]];
    ////    [headerLabel setFont:headerFont];
    //    [headerLabel setNumberOfLines:0];
    //    headerLabel.text = item.question;
    //    [sectionHeaderView addSubview:headerLabel];
    //
    //    return sectionHeader
    
    UIView *headView =  [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 30)];
    [headView setBackgroundColor:[UIColor colorWithRed:243.0/255.0 green:240.0/255.0 blue:237.0/255.0 alpha:1]];
    UILabel *questionLabel = [[UILabel alloc]initWithFrame:CGRectMake(130, 50-20, headView.frame.size.width-130, 20)];
    NSMutableDictionary *headDic = [self.surveyArray objectAtIndex:section];
    if ([[headDic objectForKey:@"QuestionType"] isEqualToString:@"2"]) {
        
        
        NSDictionary *attributedTitleDic = [NSDictionary dictionaryWithObjectsAndKeys:
                                            [UIFont fontWithName:FONT_HELVETICANEUE_BOLD size:14.0] ,NSFontAttributeName,
                                            [UIColor colorWithRed:38.0/255.0 green:63.0/255.0 blue:106.0/255.0 alpha:1],NSForegroundColorAttributeName,
                                            nil];
        
        NSString *titleDetailMessageStr = [NSString stringWithFormat:@"%@%@",[headDic objectForKey:@"title"],@" (Multiple-choice)"];
        NSRange range = [titleDetailMessageStr rangeOfString:@" (Multiple-choice)" options:NSBackwardsSearch];
        
        NSString *rangestring=NSStringFromRange(range);
        NSLog(@"Rnage is : %@",rangestring);
        
        NSMutableAttributedString *titleAttributedStr = [[NSMutableAttributedString alloc]initWithString:[NSString stringWithFormat:@"%@%@",[headDic objectForKey:@"title"],@" (Multiple-choice)"] attributes:attributedTitleDic];
        [titleAttributedStr addAttribute:NSForegroundColorAttributeName value:[UIColor redColor] range:range];
        questionLabel.attributedText = titleAttributedStr;
    }else{
        [questionLabel setTextColor:[UIColor colorWithRed:38.0/255.0 green:63.0/255.0 blue:106.0/255.0 alpha:1]];
        questionLabel.font = [UIFont fontWithName:FONT_HELVETICANEUE_BOLD size:14.0];
        questionLabel.text = [headDic objectForKey:@"title"];
        
    }
    
    [headView addSubview:questionLabel];
    return headView;
}

-(CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section{
    
    
    return 50;
}

-(UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section{
    
    UIView *footerView = [[UIView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 90)];
    if (section == [self.surveyArray count]-1) {
        submitBtn = [[UIButton alloc]initWithFrame:CGRectMake(SUBMITBUTTON_ORIGH_X, 40, self.view.frame.size.width-SUBMITBUTTON_ORIGH_X*2, SUBMITBUTTON_HEIGHT)];
        submitBtn.layer.cornerRadius = 8.0;
        submitBtn.layer.borderWidth = 1;
        [submitBtn.layer setBorderColor:[UIColor colorWithRed:76.0/255.0 green:174.0/255.0 blue:76.0/255.0 alpha:1].CGColor];
        submitBtn.backgroundColor = [UIColor colorWithRed:92.0/255.0 green:184.0/255.0 blue:92.0/255.0 alpha:1];
        [submitBtn setTitle:SUBMIT_TITLE forState:UIControlStateNormal];
        [submitBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
        submitBtn.titleLabel.font = [UIFont fontWithName:FONT_HELVETICANEUE_BOLD size:20.0];
        
        
        
        
        
        
        //        UIImage* img=[UIImage imageNamed:@"add_button_red.png"];//原图
        //             UIEdgeInsets edge=UIEdgeInsetsMake(5, 10, 15,20);
        //             //UIImageResizingModeStretch：拉伸模式，通过拉伸UIEdgeInsets指定的矩形区域来填充图片
        //             //UIImageResizingModeTile：平铺模式，通过重复显示UIEdgeInsets指定的矩形区域来填充图
        //            img= [img resizableImageWithCapInsets:edge resizingMode:UIImageResizingModeTile];
        ////             self.imageView.image=img;
        //        [submitBtn setBackgroundImage:img forState:UIControlStateNormal];
        
        
        
        [submitBtn setTintColor:[UIColor orangeColor]];
        
        [submitBtn addTarget:self action:@selector(subMitButtonAction:) forControlEvents:UIControlEventTouchUpInside];
        [footerView addSubview:submitBtn];
    }
    return footerView;
}

-(void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger section = indexPath.section;
//    NSInteger row =  indexPath.row;
    NSMutableDictionary *selectedDic = [self.surveyArray objectAtIndex:section];
    
    
    if ([[selectedDic objectForKey:@"QuestionType"] isEqualToString:@"1"]) {//this is judje the cell type
        [self resetTableViewCellStatus:tableView rowAtIndexPath:indexPath];
        currentSelectedCellIndex = [indexPath row];
        currentSelectedSection   = indexPath.section;
    }
    
    if ([[selectedDic objectForKey:@"QuestionType"] isEqualToString:@"2"]) {
        [self resetMutableTableViewCellStatus:tableView rowAtIndexPath:indexPath];
        currentSelectedCellIndex = [indexPath row];
        currentSelectedSection   = indexPath.section;
    }
    
    if ([[selectedDic objectForKey:@"QuestionType"] isEqualToString:@"4"]) {
        NSLog(@"TextField cell has selected ");
    }
    
    NSLog(@"Current Qusetions Answer %@",answerMessageDic);
//    [self.surveyTableView setContentSize:tableViewSize];
}

-(void)resetMutableTableViewCellStatus:(UITableView*)tableView rowAtIndexPath:(NSIndexPath*)indexPath{
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    NSMutableDictionary *dic = [self.surveyArray objectAtIndex:section];//choose the position of question  the tableview
    NSString * str = [dic objectForKey:@"Id"];
    
    NSMutableArray *mutableArray = [[NSMutableArray alloc]initWithCapacity:10];
    
    if ([answerMessageDic objectForKey:str] != nil) {
        mutableArray = [answerMessageDic objectForKey:str];
        if ([mutableArray containsObject:[NSString stringWithFormat:@"%ld",(long)row]]) {
            [mutableArray removeObject:[NSString stringWithFormat:@"%ld",(long)row]];
        }else{
            [mutableArray addObject:[NSString stringWithFormat:@"%ld",(long)row]];
        }
        
    }else{
        [mutableArray addObject:[NSString stringWithFormat:@"%ld",(long)row]];
    }
    
    
    //    if ([mutableAnswerDic valueForKey:[NSString stringWithFormat:@"%d",row]] != nil) {
    //
    //        mutableArray = [mutableAnswerDic valueForKey:[NSString stringWithFormat:@"%d",row]];
    //        [mutableAnswerDic removeObjectForKey:[NSString stringWithFormat:@"%d",row]];
    //        [mutableArray removeObject:[NSString stringWithFormat:@"%d",row]];
    //    }else{
    //
    //        [mutableAnswerDic setObject:@"" forKey:[NSString stringWithFormat:@"%d",row]];
    //        [mutableArray addObject: [NSString stringWithFormat:@"%d",row]];
    //    }
    
    [answerMessageDic setObject:mutableArray forKey:str];
    
    
//    NSIndexSet *indexSet = [[NSIndexSet alloc]initWithIndex:section];
    
    NSIndexPath *reloadIndexPath = [NSIndexPath indexPathForItem:row inSection:section];
    NSArray *reloadIndexPaths = [[NSArray alloc]initWithObjects:reloadIndexPath, nil];
    [tableView reloadRowsAtIndexPaths:reloadIndexPaths withRowAnimation:UITableViewRowAnimationNone];
    
    NSLog(@"reload Self.submitbtn.bounder.y %f  and tableview contentsize %f",submitBtn.bounds.origin.y,self.surveyTableView.contentSize.height);
    
//    [tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationNone];
//    self.surveyTableView.contentSize = tableViewSize;
}

-(void)resetTableViewCellStatus:(UITableView*)tableView rowAtIndexPath:(NSIndexPath*)indexPath{
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    
    NSMutableDictionary *dic = [self.surveyArray objectAtIndex:section];
    NSString * str = [dic objectForKey:@"Id"];
    if ([[dic objectForKey:@"QuestionType"]isEqualToString:@"1"]) {
        
        [answerMessageDic setObject:[NSString stringWithFormat:@"%ld",(long)row] forKey:str];
        
        NSIndexSet *indexSet = [[NSIndexSet alloc]initWithIndex:section];
        [tableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationNone];
//        self.surveyTableView.contentSize = tableViewSize;
    }
    
}


-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSInteger section = indexPath.section;
//    NSInteger row =  indexPath.row;
    
    NSMutableDictionary *rowAtIndexPath = [self.surveyArray objectAtIndex:section];
    
    NSString *rowStr = [rowAtIndexPath objectForKey:@"QuestionType"];
    
    if ([rowStr isEqualToString:@"3"]||[rowStr isEqualToString:@"4"]) {
        if ([rowStr isEqualToString:@"3"]) {
            return 80;
        }else{
            return 150;
        }
    }else{
        return 40;
    }
}

//-(CGFloat)heightForTitle:(NSString*)str
//{
////    CGSize size = [str sizeWithFont:@"STHeitiSC-Medium" constrainedToSize:CGSizeMake(0.9 * self.view.frame.size.width, MAXFLOAT) lineBreakMode:NSLineBreakByWordWrapping];
//    
//    
//    //    CGSize size2 = [str boundingRectWithSize:@"STHeitiSC-Medium" options:NSStringDrawingTruncatesLastVisibleLine attributes:nil context:nil];
////    return size.height;
//}


-(void)willRotateToInterfaceOrientation:(UIInterfaceOrientation)toInterfaceOrientation duration:(NSTimeInterval)duration{
    NSLog(@"windows changed %ld duration %f",(long)toInterfaceOrientation,duration);
    
//    NSIndexSet *indexSet = [[NSIndexSet alloc]initWithIndex:currentSelectedSection];
//    [self.surveyTableView reloadSections:indexSet withRowAnimation:UITableViewRowAnimationNone];
    [self.surveyTableView reloadData];
}





//-(void)layoutSubviews{
////    [super layoutSubviews];
//    UIDeviceOrientation interfaceOrientation=[[UIApplication sharedApplication] statusBarOrientation];
//    if (interfaceOrientation == UIDeviceOrientationPortrait || interfaceOrientation == UIDeviceOrientationPortraitUpsideDown) {
//        //翻转为竖屏时
//        [self setVerticalFrame];
//    }else if (interfaceOrientation==UIDeviceOrientationLandscapeLeft || interfaceOrientation == UIDeviceOrientationLandscapeRight) {
//        //翻转为横屏时
//        [self setHorizontalFrame];
//    }
//}
//-(void)setVerticalFrame
//{
//    NSLog(@"竖屏");
//    [titleLable setFrame:CGRectMake(283, 0, 239, 83)];
//    [leftView setFrame:CGRectMake(38, 102, 384, 272)];
//    [rightView setFrame:CGRectMake(450, 102, 282, 198)];
//}
//-(void)setHorizontalFrame
//{
//    NSLog(@"横屏");
//    [titleLable setFrame:CGRectMake(183, 0, 239, 83)];
//    [leftView setFrame:CGRectMake(168, 122, 384, 272)];
//    [rightView setFrame:CGRectMake(650, 122, 282, 198)];
//}









-(UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
//    tableView.contentSize = tableViewSize;
    NSInteger section = indexPath.section;
    NSInteger row = indexPath.row;
    NSMutableDictionary *tableViewDic = [self.surveyArray objectAtIndex:section];
    
    NSString *messageIdStr =  [tableViewDic objectForKey:@"Id"];//question id
    //    UITableViewCell *cell =  [tableView dequeueReusableCellWithIdentifier:@"GWQuestionnaireCellRate"];
    
    if ([[tableViewDic objectForKey:@"QuestionType"] isEqualToString:@"1"]) {
        GWQuestionnaireCellRate *cell = [tableView dequeueReusableCellWithIdentifier:@"GWQuestionnaireCellRate"];
        if (cell == nil)
        {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"GWQuestionnaireCellRate" owner:self options:nil];
            cell = [nib objectAtIndex:0];
            //            [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
            
            //        cell.backgroundColor = [UIColor clearColor];
            //        [cell setOwner:self];
        }
        
        
        cell.messageLabel.text = [[tableViewDic objectForKey:@"Answers"] objectAtIndex:row];
        if ([[answerMessageDic objectForKey:messageIdStr] isEqualToString:[NSString stringWithFormat:@"%ld",(long)row]]) {
            [cell.container setBackgroundColor:[UIColor colorWithRed:93.0/255.0 green:184.0/255.0 blue:231.0/255.0 alpha:1]];
            [cell.messageLabel setTextColor:[UIColor whiteColor]];
            //            return cell;
        }else{
            [cell.container setBackgroundColor:[UIColor whiteColor]];
            [cell.messageLabel setTextColor:[UIColor colorWithRed:93.0/255.0 green:184.0/255.0 blue:231.0/255.0 alpha:1]];
        }
        cell.contentView.backgroundColor = [UIColor colorWithRed:243.0/255.0 green:240.0/255.0 blue:237.0/255.0 alpha:1];
        return cell;
    }
    
    if ([[tableViewDic objectForKey:@"QuestionType"] isEqualToString:@"2"]){
        GWQuestionnaireCellSelection *cell = [tableView dequeueReusableCellWithIdentifier:@"GWQuestionnaireCellSelection"];
        if (cell == nil)
        {
            NSArray *nib = [[NSBundle mainBundle] loadNibNamed:@"GWQuestionnaireCellSelection" owner:self options:nil];
            cell = [nib objectAtIndex:0];
            //        [cell setSelectionStyle:UITableViewCellSelectionStyleNone];
            //        cell.backgroundColor = [UIColor clearColor];
            //        [cell setOwner:self];
        }
        
        cell.mutableAnswerMessageLabel.text = [[tableViewDic objectForKey:@"Answers"] objectAtIndex:row];
        NSMutableArray *mutableCellArray = [answerMessageDic objectForKey:messageIdStr];
        
        
        
        if (([mutableCellArray indexOfObject:[NSString stringWithFormat:@"%ld",(long)row]] != NSNotFound)&&(mutableCellArray !=nil)) {
            
            [cell.container setBackgroundColor:[UIColor colorWithRed:93.0/255.0 green:184.0/255.0 blue:231.0/255.0 alpha:1]];
            [cell.mutableAnswerMessageLabel setTextColor:[UIColor whiteColor]];
            
            
            //            return cell;
        }else{
            
            [cell.container setBackgroundColor:[UIColor whiteColor]];
            [cell.mutableAnswerMessageLabel setTextColor:[UIColor colorWithRed:93.0/255.0 green:184.0/255.0 blue:231.0/255.0 alpha:1]];
            
        }
        cell.contentView.backgroundColor = [UIColor colorWithRed:243.0/255.0 green:240.0/255.0 blue:237.0/255.0 alpha:1];
        return cell;
    }
    
    if ([[tableViewDic objectForKey:@"QuestionType"] isEqualToString:@"3"]){
        
        
        
        //        RatingStartTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"RatingStartTableViewCell"];
        //cell 不复用
        RatingStartTableViewCell *cell;
        NSArray *arr = [[NSBundle mainBundle]loadNibNamed:@"RatingStartTableViewCell" owner:self options:nil];
        cell = [arr objectAtIndex:0];
        
        
        RatingBar *bar = [[RatingBar alloc] initWithFrame:CGRectMake(90, 0, cell.frame.size.width/3.0,cell.frame.size.height)];
        [cell.ratingStartView addSubview:bar];
        cell.ratingStartView.backgroundColor = [UIColor colorWithRed:243.0/255.0 green:240.0/255.0 blue:237.0/255.0 alpha:1];
        //        cell.contentView
        //        bar.center = cell.ratingStartView.center;
        bar.sectionNumber = section;
        bar.delegate = self;
        if ([answerMessageDic objectForKey:messageIdStr]!=nil){
            [bar setStarNumber:[[answerMessageDic objectForKey:messageIdStr] integerValue]];
        }
        
        return cell;
    }
    
    
    if ([[tableViewDic objectForKey:@"QuestionType"] isEqualToString:@"4"]){
        textViewTableViewCell *cell;
        NSArray *arr = [[NSBundle mainBundle]loadNibNamed:@"textViewTableViewCell" owner:self options:nil];
        cell = [arr objectAtIndex:0];
        cell.textViewRowAtIndexPath = indexPath;
//        cell.userFeedBackTextView.tag = [messageIdStr integerValue];
        cell.userFeedBackTextView.tag = section;
        cell.delegate = self;
        cell.contentView.backgroundColor = [UIColor colorWithRed:243.0/255.0 green:240.0/255.0 blue:237.0/255.0 alpha:1];
        UIButton *coverBtn = [[UIButton alloc]initWithFrame:CGRectMake(125, 0, self.view.frame.size.width-125*2, 140)];
        [coverBtn setBackgroundColor:[UIColor redColor]];
        
        coverBtn.tag = section;
        [coverBtn addTarget:self action:@selector(coverBtnAction:) forControlEvents:UIControlEventTouchUpInside];
//        [cell addSubview:coverBtn];
        
        
        cell.userFeedBackTextView.text = [answerMessageDic objectForKey:messageIdStr];
        
        return cell;
    }
    
    return nil;
}

-(void)coverBtnAction:(id)sender{
    UIButton *btn = (UIButton *)sender;
    currentSelectedCellIndex = 0;
    currentSelectedSection = btn.tag;
    textViewTableViewCell *cell = [self.surveyTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:currentSelectedCellIndex inSection:currentSelectedSection]];
    [cell.userFeedBackTextView becomeFirstResponder];
    NSArray *suberArray = [cell subviews];
    btn.hidden = YES;
    NSLog(@"%@",suberArray);
    NSLog(@"CoverBtn Action : %ld",(long)btn.tag);
    UIWindow * window=[[[UIApplication sharedApplication] delegate] window];
    CGRect rect=[cell.userFeedBackTextView convertRect: cell.userFeedBackTextView.bounds toView:window];
//    currPoint = self.surveyTableView.contentOffset;
    [self.surveyTableView setContentOffset:CGPointMake(0, rect.origin.y) animated:YES];
}

//滚动tableView
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;
{
    [[[UIApplication sharedApplication] keyWindow] endEditing:YES];
}

#pragma mark - RatingStartDelegate

-(void)setRatingStartStatus:(NSInteger)startNumber atTableViewSection:(NSInteger)currentSection{
    NSMutableDictionary *currentQusetionDic = [self.surveyArray objectAtIndex:currentSection];
    [answerMessageDic setObject: [NSString stringWithFormat:@"%ld",(long)startNumber] forKey:[currentQusetionDic objectForKey:@"Id"]];
    NSLog(@"answerMessageDic :%@",answerMessageDic);
}


#pragma  mark - TextViewCellDelegate

-(void)textViewBecomeFirstResponder:(UITextView *)textView{
    currentSelectedSection = textView.tag;
    NSLog(@"%ld",(long)currentSelectedSection);
    
    textViewTableViewCell *cell = [self.surveyTableView cellForRowAtIndexPath:[NSIndexPath indexPathForRow:0 inSection:currentSelectedSection]];
    

    CGPoint rc = [cell convertPoint:cell.userFeedBackTextView.frame.origin toView:self.surveyTableView];
    NSLog(@"rc %f,%f",rc.x,rc.y);
    
//    cell = 
//    cell.textViewRowAtIndexPath
    
    
//    textView.tag
    
    [self.surveyTableView setContentOffset:CGPointMake(0, rc.y-self.navigationController.navigationBar.frame.size.height*2) animated:YES];
    
//    currPoint = self.surveyTableView.contentOffset;
}

-(void)textViewResignFirstResponder:(UITextView*)textView{
//    [self.surveyTableView setContentOffset:currPoint animated:YES];
    NSLog(@"textView.tag : %ld",(long)textView.tag);
    
    [answerMessageDic setObject:textView.text forKey:[NSString stringWithFormat:@"%@",[[self.surveyArray objectAtIndex:textView.tag] objectForKey:@"Id"]]];
}



@end
