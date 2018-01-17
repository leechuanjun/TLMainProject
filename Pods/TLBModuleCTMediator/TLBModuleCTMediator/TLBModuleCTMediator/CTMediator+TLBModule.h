//
//  CTMediator+TLBModule.h
//  TLBModuleCTMediator
//
//  Created by lichuanjun on 2018/1/17.
//  Copyright © 2018年 lichuanjun. All rights reserved.
//

#import <CTMediator/CTMediator.h>
#import <UIKit/UIKit.h>

@interface CTMediator (TLBModule)

- (UIViewController *)TLBModule_ViewControllerWithContentText:(NSString *)contentText;

@end
