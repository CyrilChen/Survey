//
//  RatingBar.h
//  iMagazine
//
//  Created by Yibing.Chen on 12/22/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol RatingStartDelegate <NSObject>
@optional
-(void)setRatingStartStatus:(NSInteger)startNumber atTableViewSection:(NSInteger)currentSection;
@end

@interface RatingBar : UIView
@property (nonatomic,assign) NSInteger starNumber;
/*
 *调整底部视图的颜色
 */
@property (nonatomic,strong) UIColor *viewColor;

/*
 *是否允许可触摸
 */
@property (nonatomic,assign) BOOL enable;
@property (nonatomic,assign) NSInteger sectionNumber;
@property (nonatomic,assign) id<RatingStartDelegate> delegate;
@end
