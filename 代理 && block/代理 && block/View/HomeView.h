//
//  HomeView.h
//  跨类传值
//
//  Created by 刘彦超 on 16/8/29.
//  Copyright © 2016年 刘彦超. All rights reserved.
//

#import <UIKit/UIKit.h>



@interface HomeView : UIView

@property (nonatomic,copy) void (^HomeView1Block)();
@property (nonatomic,copy) void (^HomeView2Block)();
@property (nonatomic,copy) void (^HomeView3Block)();
@property (nonatomic,copy) void (^HomeView4Block)();

@end
