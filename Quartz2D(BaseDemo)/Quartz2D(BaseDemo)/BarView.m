//
//  BarView.m
//  Quartz2D(自己做的demo)
//
//  Created by 胡双飞 on 15/8/19.
//  Copyright (c) 2015年 HSF. All rights reserved.
//

#import "BarView.h"

@implementation BarView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{

    // Drawing code

    //    //创建矩形
    //    UIBezierPath* rectPath = [UIBezierPath bezierPathWithRect:CGRectMake(0, 100, 30, 100)];
    //
    //    //随机颜色
    //    [[self randomColor] set];
    //
    //    //渲染
    //    [rectPath fill];

    //1.存放数据array
    NSArray* dataArray = @[ @0.2, @0.5, @0.7, @1, @0.3, @0.4, @0.6, @0.5, @0.7, @1, @0.3 ];
    for (int i = 0; i < dataArray.count; i++) {
        //
        CGFloat margin = 10;
        CGFloat w = 20;
        CGFloat x = (w + margin) * i;
        CGFloat h = self.bounds.size.height * [dataArray[i] floatValue];
        CGFloat y = self.bounds.size.height - h;

        //创建矩形
        UIBezierPath* rectPath = [UIBezierPath bezierPathWithRect:CGRectMake(x, y, w, h)];

        //随机颜色
        [[self randomColor] set];

        //渲染
        [rectPath fill];
    }
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
