//
//  MenuView.m
//  NavGationTest
//
//  Created by karajan on 2021/2/5.
//  Copyright © 2021 karajan. All rights reserved.
//

#import "MenuView.h"


#define ScreenWidth [UIScreen mainScreen].bounds.size.width
#define ScreenHeight [UIScreen mainScreen].bounds.size.height

@implementation MenuView

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

- (instancetype)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
        
        [self drawMenu];
    }
    return self;
}

- (void)layoutSubviews{
    
    NSLog(@"进入MenuLayoutSubviews");
    self.backgroundColor = [UIColor colorWithRed:0 green:0 blue:0 alpha:0.3];
    
    CGFloat viewWidth;
    CGFloat viewHeight;
    CGFloat imageWidth;
    CGFloat imageHeight;
    CGFloat offsetX;
    CGFloat offsetY;
    viewWidth = ScreenWidth;
    viewHeight = ScreenHeight;
    imageWidth = viewWidth * 0.7;
    imageHeight = imageWidth * 1.3;
    offsetX = (viewWidth- imageWidth) / 2;
    offsetY = (viewHeight - imageHeight ) / 2;
    
    UIView *alertView = [[UIView alloc] initWithFrame:CGRectMake(offsetX, offsetY, imageWidth, imageHeight)];
    alertView.layer.cornerRadius = 10;
    [alertView setBackgroundColor:[UIColor whiteColor]];
    [self addSubview:alertView];
    
    imageWidth = alertView.frame.size.width;
    imageHeight = imageWidth * 0.4;
    offsetX = (viewWidth- imageWidth) / 2;
    offsetY = imageHeight;
    UILabel *labelAlert = [[UILabel alloc] initWithFrame:CGRectMake(offsetX, offsetY, imageWidth, imageHeight)];
    labelAlert.lineBreakMode = NSLineBreakByWordWrapping;
    labelAlert.numberOfLines = 0;
    labelAlert.text = @"欢迎进入自定义UIView\n点击下方按钮退出";
    labelAlert.textAlignment = NSTextAlignmentCenter;
    labelAlert.textColor = [UIColor blackColor];
    
    labelAlert.font = [UIFont systemFontOfSize:15];
    [labelAlert sizeToFit];
    
    [alertView addSubview:labelAlert];
    
}

-(void)drawMenu{

        
}

-(void)tapBackBtnClick{
    NSLog(@"退出Menu");
    [self removeFromSuperview];
}
-(void) drawRect:(CGRect)rect{
 
    NSLog(@"进入Menu");
    
}


@end
