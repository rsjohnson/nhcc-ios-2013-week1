//
//  NHAwesomeViewController.m
//  week1
//
//  Created by Ryan Johnson on 10/21/13.
//  Copyright (c) 2013 nhcc. All rights reserved.
//

#import "NHAwesomeViewController.h"
#import "NHCustomView.h"

@interface NHAwesomeViewController ()

@end

@implementation NHAwesomeViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
      UIImage * weatherImage = [UIImage imageNamed:@"25-weather"];
      self.tabBarItem = [[UITabBarItem alloc] initWithTitle:@"Awesome"
                                                      image:weatherImage
                                                        tag:63636];
    }
    return self;
}

- (void) loadView {
  CGRect frame = [UIScreen mainScreen].bounds;
  UIView * view = [[UIView alloc] initWithFrame:frame];
  view.backgroundColor = [UIColor whiteColor];
  self.view = view;
}


- (void)viewDidLoad
{
    [super viewDidLoad];
  CGRect frame = CGRectMake(10, 100, 300, 20);
  
  UIButton * button = [UIButton buttonWithType:UIButtonTypeCustom];
  button.frame = frame;
  [button setTitle:@"A BUTTON" forState:UIControlStateNormal];
  [button setTitle:@"Highlighted" forState:UIControlStateHighlighted];
  [button setTitleColor:[UIColor blueColor]
               forState:UIControlStateNormal];
  [button setTitleColor:[UIColor yellowColor]
               forState:UIControlStateHighlighted];
  [button addTarget:self
             action:@selector(doSomething:)
   forControlEvents:UIControlEventTouchUpInside];
  /*
  UIImage * aImage = nil;
  [[UIImageView alloc] initWithImage:aImage];
  UIImageView * imageView = [[UIImageView alloc] initWithFrame:aFrame];
  imageView.image = aImage;*/
  
  [self.view addSubview:button];
  
  UISwitch * onAndOff = [[UISwitch alloc] initWithFrame:CGRectZero];
  [onAndOff addTarget:self
               action:@selector(doSomething:)
     forControlEvents:UIControlEventValueChanged];

  

	// Do any additional setup after loading the view.
}

- (void) doSomething:(id)sender {
  NSLog(@"Something");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
