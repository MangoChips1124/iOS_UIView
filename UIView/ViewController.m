//
//  ViewController.m
//  NavGationTest
//
//  Created by karajan on 2021/2/5.
//  Copyright © 2021 karajan. All rights reserved.
//

#import "ViewController.h"

#import "MenuView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    [self.view setBackgroundColor:[UIColor whiteColor]];
    
     
    UIButton *menuBtn = [[UIButton alloc] initWithFrame:CGRectMake(100, 100, 100, 40)];
    menuBtn.titleLabel.text = @"Menu";
    menuBtn.titleLabel.textColor = [UIColor greenColor];
    menuBtn.backgroundColor = [UIColor redColor];
    [menuBtn addTarget:self action:@selector(tapMenuBtnClick) forControlEvents:UIControlEventTouchDown];
    [self.view addSubview:menuBtn];
    
}


-(void)tapMenuBtnClick{
    NSLog(@"点击了Menu按钮");
    
    UIView *menuV = [[MenuView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
    [self.view addSubview:menuV];
}

@end
