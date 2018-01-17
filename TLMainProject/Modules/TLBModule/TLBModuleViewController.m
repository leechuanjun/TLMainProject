//
//  TLBModuleViewController.m
//  TLMainProject
//
//  Created by lichuanjun on 2018/1/17.
//  Copyright © 2018年 lichuanjun. All rights reserved.
//

#import "TLBModuleViewController.h"
#import <Masonry/Masonry.h>

@interface TLBModuleViewController ()

@property (nonatomic, strong) UILabel *contentLabel;

@end

@implementation TLBModuleViewController

- (instancetype)initWithContentText:(NSString *)contentText
{
    self = [super init];
    if (self) {
        self.contentLabel.text = contentText;
    }
    return self;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    self.title = @"TLBModule";
    
    self.view.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.contentLabel];
    [_contentLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.center.equalTo(self.view);
        make.width.equalTo(@(100.f));
        make.height.equalTo(@(60.f));
    }];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

#pragma mark - getters and setters
- (UILabel *)contentLabel
{
    if (_contentLabel == nil) {
        _contentLabel = [[UILabel alloc] init];
        _contentLabel.textColor = [UIColor blueColor];
    }
    return _contentLabel;
}

@end
