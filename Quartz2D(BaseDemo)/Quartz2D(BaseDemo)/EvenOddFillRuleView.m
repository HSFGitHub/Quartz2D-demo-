//
//  EvenOddFillRuleView.m
//  Quartz2D(自己做的demo)
//
//  Created by 胡双飞 on 15/8/19.
//  Copyright (c) 2015年 HSF. All rights reserved.
//  奇偶填充

#import "EvenOddFillRuleView.h"

@implementation EvenOddFillRuleView

- (void)drawRect:(CGRect)rect
{
    //OC版
    [self evenOddFillWithOC];

    //C版
    //    [self evenOddFillWithC];
}

- (void)evenOddFillWithC
{
    // 1. 获取"图形上下文"
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    // 2.画一个矩形
    UIBezierPath* path = [UIBezierPath bezierPathWithRect:CGRectMake(100, 100, 200, 100)];

    //3.画一个圆形
    UIBezierPath* path1 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 150) radius:80 startAngle:0 endAngle:M_PI * 2 clockwise:1];

    //4.画一个矩形
    UIBezierPath* path2 = [UIBezierPath bezierPathWithRect:CGRectMake(250, 30, 20, 200)];

    //将OC画的路径添加到上下文
    CGContextAddPath(ctx, path2.CGPath);
    CGContextAddPath(ctx, path1.CGPath);
    CGContextAddPath(ctx, path.CGPath);

    // 说明: 被覆盖过奇数次的点填充, 被覆盖过偶数次的点不填充
    // 奇填偶不填
    CGContextDrawPath(ctx, kCGPathEOFill);
}
- (void)evenOddFillWithOC
{
    //1.先创建一个矩形
    UIBezierPath* path = [UIBezierPath bezierPathWithRect:CGRectMake(100, 100, 200, 100)];

    //2.在矩形上创建圆
    [path addArcWithCenter:CGPointMake(200, 150) radius:80 startAngle:0 endAngle:2 * M_PI clockwise:1];

    //3.开启奇偶填充（奇添，偶不添）
    path.usesEvenOddFillRule = YES;

    [path fill];

    //    UIBezierPath* path1 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(200, 150) radius:80 startAngle:0 endAngle:M_PI * 2 clockwise:1];
}
@end
