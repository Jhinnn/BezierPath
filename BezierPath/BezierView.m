//
//  BezierView.m
//  BezierPath
//
//  Created by Khada Jhin on 2018/8/14.
//  Copyright © 2018年 Khada Jhin. All rights reserved.
//

#import "BezierView.h"

@implementation BezierView


// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect {
    // Drawing code
    UIColor *color = [UIColor redColor];
    [color set];
    
    UIBezierPath *path = [UIBezierPath bezierPath];
    path.lineWidth = 1;
//    path.lineCapStyle  = kCGLineCapRound;   //设置拐角
//    path.lineJoinStyle = kCGLineCapRound;  //终点处理
    //设置起始点
    [path moveToPoint:CGPointMake(200, 10)];
    
    //增加线条
    [path addLineToPoint:CGPointMake(300, 40)];
    [path addLineToPoint:CGPointMake(260, 140)];
    [path addLineToPoint:CGPointMake(140, 140)];
    [path addLineToPoint:CGPointMake(100, 40)];
    
    //关闭路径
    [path closePath];
    [path stroke]; //边缘绘制
//    [bez fill]; //填充绘制
    
    
}


@end
