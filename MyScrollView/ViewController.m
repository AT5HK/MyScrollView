//
//  ViewController.m
//  MyScrollView
//
//  Created by Auston Salvana on 7/14/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import "ViewController.h"

@interface ViewController ()

@property (nonatomic) MyScrollView *scrollView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    self.scrollView = [[MyScrollView alloc]init];
   
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)panAction:(id)sender {
    UIPanGestureRecognizer *panning = sender;
    CGPoint point = [panning locationInView:self.myScrollView];
    
    if (self.scrollView.contentSize.height > self.myScrollView.bounds.origin.y) {
        if (point.y > 300) {
            CGRect frame = self.myScrollView.bounds;
            frame.origin.y += 1;
            self.myScrollView.bounds = frame;
            NSLog(@"%@",NSStringFromCGRect(self.myScrollView.bounds));
        }
        else{
            CGRect frame = self.myScrollView.bounds;
            frame.origin.y -= 1;
            self.myScrollView.bounds = frame;
            NSLog(@"%@",NSStringFromCGRect(self.myScrollView.bounds));
        }
    }
    else {
        NSLog(@"the views bounds is greater then set height");
    }
}
@end
