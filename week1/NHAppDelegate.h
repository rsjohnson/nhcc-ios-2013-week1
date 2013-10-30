//
//  NHAppDelegate.h
//  week1
//
//  Created by Ryan Johnson on 10/21/13.
//  Copyright (c) 2013 nhcc. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "NHFooProtocol.h"

@interface NHAppDelegate : UIResponder
<UIApplicationDelegate,
UITableViewDelegate>

@property (strong, nonatomic) UIWindow *window;

@end

