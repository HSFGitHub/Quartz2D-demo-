//
//  DrawStyleAndFill.m
//
//  1.线宽、头尾样式、连接处样式
//  2.填充和描边、填充和描边
//

#import "DrawStyleAndFill.h"

@implementation DrawStyleAndFill

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{

    //OC版
    [self stryleWithOC];
    
    //C版
    [self styleWithC];
}

- (void)stryleWithOC
{
    // 创建路径对象
    UIBezierPath* path = [UIBezierPath bezierPath];

    //存储路径
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    CGContextSaveGState(ctx);
    
    // 拼接路径
    [path moveToPoint:CGPointMake(50, 50)];
    [path addLineToPoint:CGPointMake(100, 100)];
    [path addLineToPoint:CGPointMake(150, 50)];
    //    [path addLineToPoint:CGPointMake(50, 50)];

    // 关闭路径
    // 把当前的点与起始点进行连接
//    [path closePath];

    // 绘图样式

    // 设置线宽
    [path setLineWidth:10];
    // 设置连接处的样式
    //    kCGLineJoinMiter, // 默认
    //    kCGLineJoinRound, // 圆角
    //    kCGLineJoinBevel // 切角
        [path setLineJoinStyle:kCGLineJoinBevel];

    // 设置头尾的样式
    //    kCGLineCapButt, // 默认
    //    kCGLineCapRound, // 圆角
    //    kCGLineCapSquare // 方
        [path setLineCapStyle:kCGLineCapRound];

    // 通过uicolor对象 调用 setstroke
    //    [[UIColor redColor] setStroke];//渲染路径
//        [[UIColor blueColor] setFill];//渲染内部填充

    [[UIColor  redColor] set];

    // 渲染
        [path stroke];
//    [path fill];
}

- (void)styleWithC
{
    // 获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    CGContextRestoreGState(ctx);

    // 拼接路径 同时把 路径 添加到上下文当中
    CGContextMoveToPoint(ctx, 100, 150);
    CGContextAddLineToPoint(ctx, 100, 200);
    CGContextAddLineToPoint(ctx, 300, 250);
    CGContextClosePath(ctx);

    // 设置线宽
    CGContextSetLineWidth(ctx, 10);

    // 设置头尾样式
        CGContextSetLineCap(ctx, kCGLineCapRound);

    // 设置连接处的样式
        CGContextSetLineJoin(ctx, kCGLineJoinRound);

    //    [[UIColor redColor] setStroke];
        CGContextSetRGBStrokeColor(ctx, 0.5, 0.5, 0.5, 1);

    // 渲染
//        CGContextStrokePath(ctx); // 描边
//        CGContextFillPath(ctx); // 填充

    // CGContextDrawPath(ctx, kCGPathFill); <=> CGContextFillPath(ctx); // 填充
    // CGContextDrawPath(ctx, kCGPathStroke); <=> CGContextStrokePath(ctx); // 描边

//    [[UIColor redColor] setStroke];
//    [[UIColor blueColor] setFill];

    // 既填充又描边
    CGContextDrawPath(ctx, kCGPathFillStroke);
}

@end