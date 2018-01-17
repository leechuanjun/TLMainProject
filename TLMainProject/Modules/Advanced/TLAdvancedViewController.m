//
//  TLAdvancedViewController.m
//  TLMainProject
//
//  Created by lichuanjun on 2017/10/30.
//  Copyright © 2017年 lichuanjun. All rights reserved.
//

#import "TLAdvancedViewController.h"
#import <TLAModuleCTMediator/CTMediator+TLAModule.h>

@interface TLAdvancedViewController ()

@property (nonatomic, strong) UIButton *pushAVCButton;

@end

@implementation TLAdvancedViewController

-(instancetype)init {
    self = [super init];
    if (self) {
        self.title = @"高级";
    }
    
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self.view addSubview:self.pushAVCButton];
    [_pushAVCButton mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(self.view);
        make.height.equalTo(@(60));
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - event response
- (void)didTappedPushAVCButton:(UIButton *)button
{
    UIViewController *viewController = [[CTMediator sharedInstance] TLAModule_ViewControllerWithCallback:nil];
    viewController.title = @"TLAModule";
    [self.navigationController pushViewController:viewController animated:YES];
}

#pragma mark - getters and setters
- (UIButton *)pushAVCButton
{
    if (_pushAVCButton == nil) {
        _pushAVCButton = [UIButton buttonWithType:UIButtonTypeCustom];
        [_pushAVCButton setTitle:@"push A view controller" forState:UIControlStateNormal];
        [_pushAVCButton setTitleColor:[UIColor blueColor] forState:UIControlStateNormal];
        [_pushAVCButton addTarget:self action:@selector(didTappedPushAVCButton:) forControlEvents:UIControlEventTouchUpInside];
    }
    return _pushAVCButton;
}


@end
