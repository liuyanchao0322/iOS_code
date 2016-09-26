//
//  HomeToolBarView.h
//  跨类传值
//
//  Created by 刘彦超 on 16/8/29.
//  Copyright © 2016年 刘彦超. All rights reserved.
//

#import <UIKit/UIKit.h>

typedef NS_ENUM(NSInteger, ToolsType) {
    HomeToolBarLeftType,
    HomeToolBarRighType,
    HomeToolBarDeleteType,
    HomeToolBarHideType
};

@interface HomeToolBarView : UIView

@property (nonatomic, assign) ToolsType type;

@property (nonatomic, copy) void (^toolsBarBlock) (ToolsType);

@end
