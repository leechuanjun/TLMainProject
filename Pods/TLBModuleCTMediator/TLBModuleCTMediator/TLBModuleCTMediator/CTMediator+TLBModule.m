//
//  CTMediator+TLBModule.m
//  TLBModuleCTMediator
//
//  Created by lichuanjun on 2018/1/17.
//  Copyright © 2018年 lichuanjun. All rights reserved.
//

#import "CTMediator+TLBModule.h"

@implementation CTMediator (TLBModule)

- (UIViewController *)TLBModule_ViewControllerWithContentText:(NSString *)contentText
{
    /*
     BViewController *viewController = [[BViewController alloc] initWithContentText:@"hello, world!"];
     */
    NSMutableDictionary *params = [[NSMutableDictionary alloc] init];
    params[@"contentText"] = contentText;
    return [self performTarget:@"TLBModule" action:@"viewController" params:params shouldCacheTarget:NO];
}

@end
