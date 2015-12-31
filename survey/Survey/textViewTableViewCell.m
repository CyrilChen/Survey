//
//  testViewTableViewCell.m
//  iMagazine
//
//  Created by Yibing.Chen on 12/22/15.
//  Copyright © 2015 inno. All rights reserved.
//

#import "textViewTableViewCell.h"

@implementation textViewTableViewCell

- (void)awakeFromNib {
    // Initialization code
    [super awakeFromNib];
    [self.borderView.layer setCornerRadius:8.0];
    [self.borderView.layer setBorderColor:[UIColor colorWithRed:204.0/255.0 green:204.0/255.0 blue:204.0/255.0 alpha:1].CGColor];
    [self.borderView.layer setBorderWidth:1.0];
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}



-(BOOL)textView:(UITextView *)textView shouldChangeTextInRange:(NSRange)range replacementText:(NSString *)text{
//    CGRect rect = CGRectMake(self.userFeedBackTestField.frame.origin.x, self.userFeedBackTestField.frame.origin.y, self.userFeedBackTestField.frame.size.width,self.userFeedBackTestField.frame.size.height);
//    NSLog(@"rect message :rect.origin.x = %f,rect.origin.y = %f, rect.size.width = %f,rect.size.height = %f",rect.origin.x,rect.origin.y,rect.size.width,rect.size.height);
    
    UIWindow * window=[[[UIApplication sharedApplication] delegate] window];
    CGRect rect=[self.userFeedBackTextView convertRect: self.userFeedBackTextView.bounds toView:window];
    NSLog(@"rect message :rect.origin.x = %f,rect.origin.y = %f, rect.size.width = %f,rect.size.height = %f",rect.origin.x,rect.origin.y,rect.size.width,rect.size.height);
    
    
    
    return YES;
}

-(void)textViewDidBeginEditing:(UITextView *)textView{
    if (self.delegate) {
        [self.delegate textViewBecomeFirstResponder:textView];
    }
    //set textView cell border style 
    [_borderView.layer setBorderColor:[UIColor colorWithRed:93.0/255.0 green:184.0/255.0 blue:231.0/255.0 alpha:1].CGColor];
    [_borderView.layer setShadowColor:[UIColor colorWithRed:93.0/255.0 green:184.0/255.0 blue:231.0/255.0 alpha:1].CGColor];
    [_borderView.layer setShadowOffset:CGSizeMake(0, 0)];
    [_borderView.layer setShadowOpacity:0.5];
    [_borderView.layer setShadowRadius:4.0];
    

}

-(void)textViewDidEndEditing:(UITextView *)textView{
    NSLog(@"didendediting");
    if (self.delegate) {
        [self.delegate textViewResignFirstResponder:textView];
    }
    NSLog(@"%@",textView.text);
    [_borderView.layer setBorderColor:[UIColor colorWithRed:204.0/255.0 green:204.0/255.0 blue:204.0/255.0 alpha:1].CGColor];
//    _borderView.layer setShouldRasterize:
    [_borderView.layer setShadowColor:[UIColor clearColor].CGColor];
}




@end
