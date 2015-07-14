//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Auston Salvana on 7/14/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)init
{
    self = [super init];
    if (self) {
        self.contentSize = CGSizeMake(600, 200);
    }
    return self;
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
