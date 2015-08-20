//
//  ScaleTranslateRotateView.m
//  Quartz2D(demo)
//
//  Created by 胡双飞 on 15/8/20.
//  Copyright (c) 2015年 HSF. All rights reserved.
//  旋转、平移、缩放 都是对上下文来做的.

#import "ScaleTranslateRotateView.h"

@interface ScaleTranslateRotateView ()

@end

@implementation ScaleTranslateRotateView

- (void)drawRect:(CGRect)rect
{
    // Drawing code

    //1.获取控件的上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    CGContextSaveGState(ctx);
    //缩放样式

    //1.比例
    CGContextScaleCTM(ctx, self.scaleValue, self.scaleValue);

    //2.平移
    CGContextTranslateCTM(ctx, self.translateValue, self.translateValue);

    //3.旋转 (旋转角度)
    CGContextRotateCTM(ctx, self.rotateValue);

    //画圆
    CGContextAddArc(ctx, [self viewCenter].x, [self viewCenter].y, [self radius], 0, M_PI * 2, YES);

    //画个线
    CGContextMoveToPoint(ctx, 0, 0);
    CGContextAddLineToPoint(ctx, 300, 300);
    //设置线宽度
    CGContextSetLineWidth(ctx, 20);

    //颜色
    [[UIColor whiteColor] setStroke];

    //渲染
    CGContextStrokePath(ctx);
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

@end
