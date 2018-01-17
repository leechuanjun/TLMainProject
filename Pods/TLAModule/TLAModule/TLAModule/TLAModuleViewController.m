//
//  TLAModuleViewController.m
//  TLAModule
//
//  Created by lichuanjun on 2018/1/17.
//  Copyright © 2018年 lichuanjun. All rights reserved.
//

#import "TLAModuleViewController.h"
#import <Masonry/Masonry.h>
#import <TLBModuleCTMediator/CTMediator+TLBModule.h>

@interface TLAModuleViewController ()

@property (nonatomic, strong) UIButton *pushBVCButton;

@end

@implementation TLAModuleViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor whiteColor];
    
    [self.view addSubview:self.pushBVCButton];
    [_pushBVCButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(self.view);
        make.height.equalTo(@(60.f));
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - event response
- (void)didTappedPushBVCButton:(UIButton *)button
{
    UIViewController *viewController = [[CTMediator sharedInstance] TLBModule_ViewControllerWithContentText:@"hello, world!"];
    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)pushBVCButton
{
    if (_pushBVCButton == nil) {
        _pushBVCButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushBVCButton setTitle:@"push B view controller" forState:UIControlStateNormal];
        [_pushBVCButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushBVCButton addTarget:self action:@selector(didTappedPushBVCButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushBVCButton;
}

@end
