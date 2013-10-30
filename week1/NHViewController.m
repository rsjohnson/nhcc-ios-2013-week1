//
//  NHViewController.m
//  week1
//
//  Created by Ryan Johnson on 10/21/13.
//  Copyright (c) 2013 nhcc. All rights reserved.
//

#import "NHViewController.h"

@interface NHViewController ()

@end

@implementation NHViewController

- (void) loadView {
  CGRect frame = [UIScreen mainScreen].bounds;
  UIView * view = [[UIView alloc] initWithFrame:frame];
  view.backgroundColor = [UIColor redColor];
  self.view = view;
}

- (void)viewDidLoad
{
  self.title = @"Custom View Controller";
  self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"Forward"
                                                                            style:UIBarButtonItemStylePlain
                                                                          target:self
                                                                          action:@selector(didTapForward:)];
  
  self.tabBarItem = [[UITabBarItem alloc] initWithTabBarSystemItem:UITabBarSystemItemDownloads
                                                               tag:10];
    [super viewDidLoad];
	// Do any additional setup after loading the view, typically from a nib.
}

- (void) didTapBack:(id)sender {
  [self.navigationController popViewControllerAnimated:YES];
}

- (void) didTapForward:(id)sender {
  NHViewController * newViewController = [[NHViewController alloc] initWithNibName:nil bundle:nil];
  newViewController.view.backgroundColor = [UIColor blueColor];
  [self.navigationController pushViewController:newViewController animated:YES];
}


- (void) viewWillAppear:(BOOL)animated {
  [super viewWillAppear:animated];
}


@end
