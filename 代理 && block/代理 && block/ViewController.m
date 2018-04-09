//
//  ViewController.m
//  代理 && block
//
//  Created by 刘彦超 on 16/7/11.
//  Copyright © 2016年 com.shanghaiyouchaung. All rights reserved.
//

#import "ViewController.h"
#import "HomeView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];

    HomeView *homeView = [[HomeView alloc] initWithFrame:[UIScreen mainScreen].bounds];
    homeView.HomeView1Block = ^(){
        NSLog(@"第一个传过来了");
    };
    homeView.HomeView2Block = ^(){
        NSLog(@"第二个传过来了");
    };
    
    homeView.HomeView3Block = ^(){
        NSLog(@"第三个传过来了");
    };
    homeView.HomeView4Block = ^(){
        NSLog(@"第四个传过来了");
        
        NSLog(@"添加了一句log");
    };
    
    homeView.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:homeView];
}


@end
