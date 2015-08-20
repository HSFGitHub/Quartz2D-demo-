//
//  PieOfProgressView.m
//  Quartz2D(自己做的demo)
//
//  Created by 胡双飞 on 15/8/20.
//  Copyright (c) 2015年 HSF. All rights reserved.
//

#import "PieOfProgressView.h"

@implementation PieOfProgressView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code

    //接受
    CGFloat end = self.slidervalue * 2 * M_PI - M_PI_2;

    //画饼图
    UIBezierPath* bezierPath = [UIBezierPath bezierPathWithArcCenter:[self viewCenter] radius:[self radius] startAngle:-M_PI_2 endAngle:end clockwise:YES];

    //连接圆心
    [bezierPath addLineToPoint:[self viewCenter]];

    //设置颜色
    [[UIColor purpleColor] setFill];

    //渲染
    [bezierPath fill];
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
