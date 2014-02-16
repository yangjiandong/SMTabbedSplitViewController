//
//  SMSplitViewController.m
//  SMSplitViewController
//
//  Created by Sergey Marchukov on 15.02.14.
//  Copyright (c) 2014 Sergey Marchukov. All rights reserved.
//

#import "SMSplitViewController.h"
#import "SMTabBar.h"
#import "SMTabBarItem.h"
#import "SMMasterViewController.h"
#import "SMDetailViewController.h"


@interface SMSplitViewController ()
{
    SMTabBar *_tabBar;
    SMMasterViewController *_masterVC;
    SMDetailViewController *_detailVC;
}
@end

@implementation SMSplitViewController

- (id)init {
    
    self = [super init];
    
    if (self) {
        
        _tabBar = [[SMTabBar alloc] init];
        _masterVC = [[SMMasterViewController alloc] init];
        _detailVC = [[SMDetailViewController alloc] init];
    }
    
    return self;
}
#pragma mark -
#pragma mark - ViewController Lifecycle

- (void)loadView {
    
    [super loadView];
    
    self.view.backgroundColor = [UIColor clearColor];
    
    [self.view addSubview:_tabBar.view];
    [self.view addSubview:_masterVC.view];
    [self.view addSubview:_detailVC.view];
}

- (void)viewWillLayoutSubviews {
    
    [super viewWillLayoutSubviews];
}

- (void)dealloc {
    
    [_tabBar release];
    [_masterVC release];
    [_detailVC release];
    
    [super dealloc];
}

#pragma mark -
#pragma mark - Properties

- (void)setBackground:(UIColor *)background {
    
    _tabBar.view.backgroundColor = background;
    _masterVC.view.backgroundColor = background;
    _detailVC.view.backgroundColor = background;    
}

- (void)setTabsViewControllers:(NSArray *)tabsViewControllers {
    
    _tabsViewControllers = tabsViewControllers;
    _tabBar.tabsButtons = _tabsViewControllers;
}

- (void)setActionsTabs:(NSArray *)actionsTabs {

    _actionsTabs = actionsTabs;
    _tabBar.actionsButtons = _actionsTabs;
}

#pragma mark -
#pragma mark - Autorotation

- (BOOL)shouldAutorotate {
    
    return YES;
}

- (NSUInteger)supportedInterfaceOrientations {
    
    return UIInterfaceOrientationMaskAll;
}

@end
