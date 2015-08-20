//
//  NonzeroView.m
//  Quartz2D(自己做的demo)
//
//  Created by 胡双飞 on 15/8/19.
//  Copyright (c) 2015年 HSF. All rights reserved.
//  非零绕数规则

#import "NonzeroView.h"

@implementation NonzeroView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code

    //非零绕数规则
    [self nonzeroWithNumber];
}
// 默认填充模式: nonzero winding number rule(非零绕数规则)从左到右跨过, +1。从右到左跨过, -1。最后如果为0, 那么不填充, 否则填充
- (void)nonzeroWithNumber
{
    // 1. 获取"图形上下文"
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    //2.顺时针画圆(重点是下面方法中的clockwise：这个参数。 1 代表顺时针  0代表逆时针)
    UIBezierPath* path = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 150) radius:100 startAngle:0 endAngle:M_PI * 2 clockwise:1];

    //3.逆时针画圆
    UIBezierPath* path1 = [UIBezierPath bezierPathWithArcCenter:CGPointMake(150, 150) radius:50 startAngle:0 endAngle:M_PI * 2 clockwise:0];

    //4.添加到上下文
    CGContextAddPath(ctx, path1.CGPath);
    CGContextAddPath(ctx, path.CGPath);

    // 默认填充模式: nonzero winding number rule(非零绕数规则)从左到右跨过, +1。从右到左跨过, -1。最后如果为0, 那么不填充, 否则填充

    //5.填充
    CGContextDrawPath(ctx, kCGPathFill);
}

@end
