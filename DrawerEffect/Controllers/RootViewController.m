//
//  RootViewController.m
//  DrawerEffect
//
//  Created by 仲召俊 on 2018/8/25.
//  Copyright © 2018年 仲召俊. All rights reserved.
//

#import "RootViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    [self setPage];
}

- (void)setPage {
    //将leftView和midView添加到self中作为子控制器。将他们的view添加到self.view中
    [self addChildViewController:self.leftView];
    [self.view addSubview:self.leftView.view];
    
    [self addChildViewController:self.midView];
    [self.view addSubview:self.midView.view];
    
    //设置一个按钮点击实现抽屉效果
    UIButton *leftButton = [UIButton buttonWithType:UIButtonTypeSystem];
    leftButton.frame = CGRectMake(0, 50, 100, 50);
    leftButton.backgroundColor = [UIColor yellowColor];
    [leftButton setTitle:@"left" forState:UIControlStateNormal];
    [leftButton addTarget:self action:@selector(leftButtonClick) forControlEvents:UIControlEventTouchUpInside];
    [self.midView.view addSubview:leftButton];
}

//点击时间
- (void)leftButtonClick {
    //判断抽屉是否是展开状态
    CGFloat W = [UIScreen mainScreen].bounds.size.width;
    CGFloat H = [UIScreen mainScreen].bounds.size.height;
    
    if (self.midView.view.frame.origin.x == 0) {
        //通过动画实现view.fram的改变
        [UIView animateWithDuration:0.25 animations:^{
            self.leftView.view.frame = CGRectMake(0, 0, W, H);
            self.midView.view.frame = CGRectMake(200, 50, W, H-100);
        }];
    } else {
        [UIView animateWithDuration:0.25 animations:^{
            self.midView.view.frame = CGRectMake(0, 0, W, H);
        }];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
