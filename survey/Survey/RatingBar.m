//
//  RatingBar.m
//  iMagazine
//
//  Created by Yibing.Chen on 12/22/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import "RatingBar.h"
#define ZOOM 0.8f
@interface RatingBar()
@property (nonatomic,strong) UIView *bottomView;
@property (nonatomic,strong) UIView *topView;
@property (nonatomic,assign) CGFloat starWidth;
@property (nonatomic,retain) UILabel *detailMessageLabel;
@end

@implementation RatingBar

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        // Initialization code
        self.backgroundColor = [UIColor clearColor];
        self.bottomView = [[UIView alloc] initWithFrame:self.bounds];
        self.topView = [[UIView alloc] initWithFrame:CGRectZero];
        self.detailMessageLabel = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 25.0)];
        [self addSubview:self.bottomView];
        [self addSubview:self.topView];
        
        self.topView.clipsToBounds = YES;
        self.topView.userInteractionEnabled = NO;
        self.bottomView.userInteractionEnabled = NO;
        self.userInteractionEnabled = YES;
        
        UITapGestureRecognizer *tap = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tap:)];
        UIPanGestureRecognizer *pan = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(pan:)];
        [self addGestureRecognizer:tap];
        [self addGestureRecognizer:pan];
        
        //
        CGFloat width = frame.size.width/7.0;
//        CGFloat height = frame.size.height*0.8;
        self.starWidth = width;
        for(int i = 0;i<5;i++){
            UIImageView *img = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, width*ZOOM, width*ZOOM)];
//            img.center = CGPointMake((i+1.5)*width, frame.size.height/2);
            img.center = CGPointMake((i+1.5)*width, frame.size.height/2);
            img.image = [UIImage imageNamed:@"bt_star_a"];
            [self.bottomView addSubview:img];
            UIImageView *img2 = [[UIImageView alloc] initWithFrame:img.frame];
            img2.center = img.center;
            img2.image = [UIImage imageNamed:@"bt_star_b"];
            [self.topView addSubview:img2];
        }
//
        [self.detailMessageLabel setTextColor:[UIColor colorWithRed:78.0/255.0 green:46.0/255.0 blue:45.0/255.0 alpha:1]];
        self.detailMessageLabel.font = [UIFont fontWithName:@"Arial" size:18.0];
        self.detailMessageLabel .center = CGPointMake(90, frame.size.height*1.5);

        [self addSubview:self.detailMessageLabel];
        
        self.enable = YES;
        
    }
    return self;
}
-(void)setViewColor:(UIColor *)backgroundColor{
    if(_viewColor!=backgroundColor){
        self.backgroundColor = backgroundColor;
        self.topView.backgroundColor = backgroundColor;
        self.bottomView.backgroundColor = backgroundColor;
    }
}
-(void)setStarNumber:(NSInteger)starNumber{
    if(_starNumber!=starNumber){
        _starNumber = starNumber;
        self.topView.frame = CGRectMake(0, 0, self.starWidth*(starNumber+1), self.bounds.size.height);
    }
    [self setMessageLabelDetail:starNumber];
}
-(void)tap:(UITapGestureRecognizer *)gesture{
    if(self.enable){
        CGPoint point = [gesture locationInView:self];
        NSInteger count = (int)(point.x/self.starWidth)+1;
        self.topView.frame = CGRectMake(0, 0, self.starWidth*count, self.bounds.size.height);
        if(count>5){
            _starNumber = 5;

            NSLog(@"more than tap _starNumber : %ld",(long)_starNumber);
        }else{
            _starNumber = count-1;
            NSLog(@"tap _starNumber : %ld",(long)_starNumber);
        }
        
        [self setMessageLabelDetail:_starNumber];
        if (self.delegate) {
            [self.delegate setRatingStartStatus:_starNumber atTableViewSection:self.sectionNumber];
        }
    }
}
-(void)pan:(UIPanGestureRecognizer *)gesture{
    if(self.enable){
        CGPoint point = [gesture locationInView:self];
        NSInteger count = (int)(point.x/self.starWidth);
        if(count>=0 && count<=5 && _starNumber!=count){
            self.topView.frame = CGRectMake(0, 0, self.starWidth*(count+1), self.bounds.size.height);
            _starNumber = count;
        }
        NSLog(@" pan _starNumber : %ld",(long)_starNumber);
        [self setMessageLabelDetail:_starNumber];
    }
}

-(void)setMessageLabelDetail:(NSInteger)startNumber{
    switch (startNumber) {
        case 0:
            [self.detailMessageLabel setText:@""];
            break;
        case 1:
            [self.detailMessageLabel setText:@"Average"];
            break;
        case 2:
            [self.detailMessageLabel setText:@"Good"];
            break;
        case 3:
            [self.detailMessageLabel setText:@"Very Good"];
            break;
        case 4:
            [self.detailMessageLabel setText:@"Excellent"];
            break;
        case 5:
            [self.detailMessageLabel setText:@"Perfect"];
            break;
        default:
            [self.detailMessageLabel setText:@""];
            break;
    }
}
/*
 // Only override drawRect: if you perform custom drawing.
 // An empty implementation adversely affects performance during animation.
 - (void)drawRect:(CGRect)rect
 {
 // Drawing code
 }
 */

@end

