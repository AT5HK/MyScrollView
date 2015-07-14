//
//  MyScrollView.m
//  MyScrollView
//
//  Created by Auston Salvana on 7/14/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "MyScrollView.h"

@implementation MyScrollView

- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        self.contentSize = CGSizeMake(0, 200);
        self.panGest = [[UIPanGestureRecognizer alloc]initWithTarget:self action:@selector(panAction:)];
        [self addGestureRecognizer:self.panGest];
    }
    return self;
}

- (void)panAction:(id)sender {
    UIPanGestureRecognizer *panning = sender;
    CGPoint point = [panning locationInView:self];
    NSLog(@"asd");
    if (self.contentSize.height > self.bounds.origin.y) {
        if (point.y > 300) {
            CGRect frame = self.bounds;
            frame.origin.y += 1;
            self.bounds = frame;
            NSLog(@"%@",NSStringFromCGRect(self.bounds));
        }
        else{
            CGRect frame = self.bounds;
            frame.origin.y -= 1;
            self.bounds = frame;
            NSLog(@"%@",NSStringFromCGRect(self.bounds));
        }
    }
    else {
        NSLog(@"the views bounds is greater then set height");
    }
}

/*
// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
}
*/

@end
