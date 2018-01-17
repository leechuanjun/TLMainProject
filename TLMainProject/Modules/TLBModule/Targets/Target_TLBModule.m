//
//  Target_TLBModule.m
//  TLMainProject
//
//  Created by lichuanjun on 2018/1/17.
//  Copyright © 2018年 lichuanjun. All rights reserved.
//

#import "Target_TLBModule.h"
#import "TLBModuleViewController.h"

@implementation Target_TLBModule

- (UIViewController *)Action_viewController:(NSDictionary *)params
{
    NSString *contentText = params[@"contentText"];
    TLBModuleViewController *viewController = [[TLBModuleViewController alloc] initWithContentText:contentText];
    
    return viewController;
}

@end
