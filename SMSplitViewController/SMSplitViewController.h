//
//  SMSplitViewController.h
//  SMSplitViewController
//
//  Created by Sergey Marchukov on 15.02.14.
//  Copyright (c) 2014 Sergey Marchukov. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface SMSplitViewController : UIViewController

@property (nonatomic, assign) UIColor *background;
@property (nonatomic, assign) NSArray *tabsViewControllers;
@property (nonatomic, assign) NSArray *actionsTabs;

@end