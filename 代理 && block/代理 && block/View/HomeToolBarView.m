//
//  HomeToolBarView.m
//  跨类传值
//
//  Created by 刘彦超 on 16/8/29.
//  Copyright © 2016年 刘彦超. All rights reserved.
//

#import "HomeToolBarView.h"


#define MCBrushViewButtonMargin 15

@interface HomeToolBarView ()

@property (nonatomic, weak) UIButton *leftBtn;
@property (nonatomic, weak) UIButton *rightBtn;
@property (nonatomic, weak) UIButton *deleteBtn;
@property (nonatomic, weak) UIButton *hideBtn;

@end

@implementation HomeToolBarView


- (instancetype) initWithFrame:(CGRect)frame
{
    if (self = [super initWithFrame:frame]) {
        self.leftBtn = [self addButtonWithTag:HomeToolBarLeftType];
        self.leftBtn.backgroundColor = [UIColor orangeColor];
        self.rightBtn = [self addButtonWithTag:HomeToolBarRighType];
        self.rightBtn.backgroundColor = [UIColor yellowColor];

        self.deleteBtn = [self addButtonWithTag:HomeToolBarDeleteType];
        self.deleteBtn.backgroundColor = [UIColor redColor];
        self.hideBtn = [self addButtonWithTag:HomeToolBarHideType];
        self.hideBtn.backgroundColor = [UIColor purpleColor];

    }
    return self;
}

- (UIButton *)addButtonWithTag:(NSInteger)tag
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.tag = tag;
    [button addTarget:self action:@selector(buttonClick:) forControlEvents:UIControlEventTouchUpInside];
    [self addSubview:button];
    return button;
}


- (void)layoutSubviews
{
    [super layoutSubviews];
    [super layoutSubviews];
    CGFloat buttonW = 40;
    CGFloat buttonH = 30;
    CGFloat buttonY = 0;
    
    self.leftBtn.frame = CGRectMake(MCBrushViewButtonMargin, buttonY, buttonW, buttonH);
    CGFloat buttonX = MCBrushViewButtonMargin + (buttonW + MCBrushViewButtonMargin);
    self.rightBtn.frame = CGRectMake(buttonX, buttonY, buttonW, buttonH);
    
    CGFloat deleteBtnX = [UIScreen mainScreen].bounds.size.width - buttonW * 2 - MCBrushViewButtonMargin * 2;
    self.deleteBtn.frame = CGRectMake(deleteBtnX, buttonY, buttonW, buttonH);
    
    CGFloat hideBtnX = CGRectGetMaxX(self.deleteBtn.frame) + MCBrushViewButtonMargin;
    self.hideBtn.frame = CGRectMake(hideBtnX, buttonY, buttonW, buttonH);
    
}

- (void)buttonClick:(UIButton*)button
{
    if (self.toolsBarBlock) {
        self.toolsBarBlock(button.tag);
    }
}


@end
