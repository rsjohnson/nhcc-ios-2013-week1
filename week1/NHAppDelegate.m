//
//  NHAppDelegate.m
//  week1
//
//  Created by Ryan Johnson on 10/21/13.
//  Copyright (c) 2013 nhcc. All rights reserved.
//

#import "NHAppDelegate.h"
#import "NHViewController.h"
#import "NHAwesomeViewController.h"

@implementation NHAppDelegate

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
  CGRect screenFrame = [[UIScreen mainScreen] bounds];
  self.window = [[UIWindow alloc] initWithFrame:screenFrame];
  
  
  NHViewController * customViewController = [[NHViewController alloc] initWithNibName:nil bundle:nil];
  UINavigationController * navController = [[UINavigationController alloc] initWithRootViewController:customViewController];
  
  NHAwesomeViewController * awesomeViewController = [[NHAwesomeViewController alloc] initWithNibName:nil bundle:nil];
  
  UITabBarController * tabController = [[UITabBarController alloc] initWithNibName:nil
                                                                            bundle:nil];
  tabController.viewControllers = @[navController, awesomeViewController];
  
  
  self.window.rootViewController = tabController;
  [self.window makeKeyAndVisible];

    // Override point for customization after application launch.
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
  // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
  // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
  // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
  // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
  // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
  NSLog(@"Entering Foreground");
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
  // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
  NSLog(@"Did Become Active");
}

- (void)applicationWillTerminate:(UIApplication *)application
{
  // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
