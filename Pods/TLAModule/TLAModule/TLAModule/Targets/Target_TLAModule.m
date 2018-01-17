//
//  Target_TLAModule.m
//  TLAModule
//
//  Created by lichuanjun on 2018/1/17.
//  Copyright © 2018年 lichuanjun. All rights reserved.
//

#import "Target_TLAModule.h"
#import "TLAModuleViewController.h"

@implementation Target_TLAModule

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    TLAModuleViewController *viewController = [[TLAModuleViewController alloc] init];
    
    return viewController;
}

@end
