//
//  PieView.m
//  Quartz2D(自己做的demo)
//
//  Created by 胡双飞 on 15/8/19.
//  Copyright (c) 2015年 HSF. All rights reserved.
//  扇形图绘画原理

#import "PieView.h"
@interface PieView ()

@end
@implementation PieView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (IBAction)random:(id)sender
{
    //触发重会
    [self setNeedsDisplay];
}
- (void)drawRect:(CGRect)rect
{
    // Drawing code

    //数值
    NSArray* pieArray = @[ @0.1, @0.1, @0.2, @0.5, @0.1 ];

    //起点
    CGFloat star = 0.0;
    CGFloat end = 0.0;
    //循环
    for (int i = 0; i < pieArray.count; i++) {
        //起点
        end = 2 * M_PI * [pieArray[i] floatValue] + star;
        UIBezierPath* piePath = [UIBezierPath bezierPathWithArcCenter:[self viewCenter]
                                                               radius:[self radius]
                                                           startAngle:star
                                                             endAngle:end
                                                            clockwise:YES];
        //连接圆心
        [piePath addLineToPoint:[self viewCenter]];

        //设置随机颜色
        [[self randomColor] set];

        //渲染
        [piePath fill];

        star = end;
    }
}

//获得视图中心点
- (CGPoint)viewCenter
{
    return CGPointMake(self.bounds.size.width * 0.5, self.bounds.size.height * 0.5);
}

//获取个半径
- (CGFloat)radius
{
    return self.bounds.size.width * 0.5 - 10;
}
// 随机颜色
- (UIColor*)randomColor
{

    CGFloat r = arc4random() % 256 / 255.0;
    CGFloat g = arc4random() % 256 / 255.0;
    CGFloat b = arc4random() % 256 / 255.0;

    return [UIColor colorWithRed:r green:g blue:b alpha:1];
}

@end
