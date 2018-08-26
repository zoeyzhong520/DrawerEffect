//
//  RootViewController.h
//  DrawerEffect
//
//  Created by 仲召俊 on 2018/8/25.
//  Copyright © 2018年 仲召俊. All rights reserved.
//

#import "BaseViewController.h"

@interface RootViewController : BaseViewController

//两个子控制器leftView和midView
@property (nonatomic, strong) UIViewController *leftView;

@property (nonatomic, strong) UIViewController *midView;

@end
