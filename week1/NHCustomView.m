//
//  NHCustomView.m
//  week1
//
//  Created by Ryan Johnson on 10/21/13.
//  Copyright (c) 2013 nhcc. All rights reserved.
//

#import "NHCustomView.h"

@implementation NHCustomView

- (id)initWithFrame:(CGRect)frame
{
    self = [super initWithFrame:frame];
    if (self) {
      self.backgroundColor = [UIColor yellowColor];
      
        // Initialization code
      CGRect subviewFrame = CGRectMake(50, 50, 50, 50);
      UIView * aSubview = [[UIView alloc] initWithFrame:subviewFrame];
      aSubview.backgroundColor = [UIColor blueColor];
      [self addSubview:aSubview];
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
}
*/

@end
