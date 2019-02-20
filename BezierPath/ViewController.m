//
//  ViewController.m
//  BezierPath
//
//  Created by Khada Jhin on 2018/8/14.
//  Copyright © 2018年 Khada Jhin. All rights reserved.
//

#import "ViewController.h"
#import "BezierView.h"

#define SCREEN_WIDTH ([UIScreen mainScreen].bounds.size.width)
#define SCREEN_HEIGHT ([UIScreen mainScreen].bounds.size.height)

@interface ViewController ()

@end

@implementation ViewController

- (BOOL)prefersStatusBarHidden {
    return YES;
}

- (void)viewDidLoad {
    [super viewDidLoad];

    self.edgesForExtendedLayout = UIRectEdgeNone;
    self.navigationController.navigationBar.translucent = NO;
    
    for (int i = 1; i <= 3; i++) {
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path moveToPoint:CGPointMake(20, i * 50)];
        [path addLineToPoint:CGPointMake(320, i * 50)];
        CAShapeLayer *layer = [CAShapeLayer layer];
        layer.lineWidth = 1;
        layer.strokeColor = [UIColor purpleColor].CGColor;
        layer.path = path.CGPath;
        [self.view.layer addSublayer:layer];
    }
    
    for (int i = 0; i <= 6; i++) {
        UIBezierPath *path = [UIBezierPath bezierPath];
        [path moveToPoint:CGPointMake(20 + (i * 50), 50)];
        [path addLineToPoint:CGPointMake(20 + (i * 50), 150)];
        CAShapeLayer *layer = [CAShapeLayer layer];
        layer.lineWidth = 1;
        layer.strokeColor = [UIColor purpleColor].CGColor;
        layer.path = path.CGPath;
        [self.view.layer addSublayer:layer];
    }
    
    
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
