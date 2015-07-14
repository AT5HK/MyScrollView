//
//  ViewController.h
//  MyScrollView
//
//  Created by Auston Salvana on 7/14/15.
//  Copyright (c) 2015 ASolo. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "MyScrollView.h"

@interface ViewController : UIViewController
@property (weak, nonatomic) IBOutlet MyScrollView *myScrollView;

@property (strong, nonatomic) IBOutlet UIPanGestureRecognizer *pan;
@property (nonatomic) CGSize contentSize;
- (IBAction)panAction:(id)sender;

@end

