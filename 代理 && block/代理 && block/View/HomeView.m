//
//  HomeView.m
//  跨类传值
//
//  Created by 刘彦超 on 16/8/29.
//  Copyright © 2016年 刘彦超. All rights reserved.
//

#import "HomeView.h"
#import "HomeToolBarView.h"

#define MC_WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;


@interface HomeView ()

@property (nonatomic, strong) HomeToolBarView *toolBar;

@end


@implementation HomeView

#pragma set & get
- (HomeToolBarView *)toolBar
{
    if (!_toolBar) {
        _toolBar = [[HomeToolBarView alloc] init];
        _toolBar.frame = CGRectMake(0, 100, self.frame.size.width, 30);
        _toolBar.backgroundColor = [UIColor blueColor];
        MC_WS(ws);
        _toolBar.toolsBarBlock = ^(ToolsType type){
            switch (type) {
                case HomeToolBarLeftType:
                    NSLog(@"1111");
                    if (ws.HomeView1Block) {
                        ws.HomeView1Block();
                    }
                    break;
                
                case HomeToolBarRighType:
                    NSLog(@"2222");
                    if (ws.HomeView2Block) {
                        ws.HomeView2Block();
                    }

                    break;
                    
                case HomeToolBarDeleteType:
                    NSLog(@"3333");
                    if (ws.HomeView3Block) {
                        ws.HomeView3Block();
                    }

                    break;
                    
                case HomeToolBarHideType:
                    NSLog(@"4444");
                    if (ws.HomeView4Block) {
                        ws.HomeView4Block();
                    }

                    break;
                    
                default:
                    break;
            }
        };
    }
    return _toolBar;
}

- (instancetype) initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        
        [self initUI];
    }
    return self;
}

- (void)initUI
{
    [self addSubview:self.toolBar];
}

@end
