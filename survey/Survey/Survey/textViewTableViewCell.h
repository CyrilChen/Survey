//
//  textViewTableViewCell.h
//  iMagazine
//
//  Created by Yibing.Chen on 12/22/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol TextViewCellDelegate <NSObject>
@required
-(void)textViewResignFirstResponder:(UITextView*)textView;
-(void)textViewBecomeFirstResponder:(UITextView*)textView;
@optional

@end

@interface textViewTableViewCell : UITableViewCell<UITextViewDelegate>
@property (weak, nonatomic) IBOutlet UIView *borderView;
@property (weak, nonatomic) IBOutlet UITextView *userFeedBackTextView;
@property (nonatomic, assign) id <TextViewCellDelegate> delegate;
@property (nonatomic, assign) NSIndexPath *textViewRowAtIndexPath;
@end
