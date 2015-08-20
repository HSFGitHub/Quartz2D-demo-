#import "DrawBase.h"

@implementation DrawBase


- (void)drawRect:(CGRect)rect
{
    // Drawing code
    //1.纯C语言，来画一条线
    [self lineWithC];

    //1.1.OC语言，来画一条线
    [self lineWithOC];

    //1.2.C-OC语言，来画一条线
    [self lineWithCAndOc];

    //2.矩形
    [self rectangle];

    //3.圆角矩形
    [self roundedOfRectangle];

    //4.椭圆
    [self oval];

    //5.圆
    [self circle];

    //6.三角形
    [self triangle];
}

//1.纯C语言，画一条直线
- (void)lineWithC
{

    //1).获取图形上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    //2).拼接路径，同时把路径添加在上下文中
    CGContextMoveToPoint(ctx, 330, 30); //起点
    CGContextAddLineToPoint(ctx, 10, 30); //终点

    //3)给线加个红色颜色
    [[UIColor grayColor] setStroke];

    //3).渲染
    CGContextStrokePath(ctx);
}

//1.2.OC语言，来画一条线
- (void)lineWithOC
{

    //1)创建一个UIBezierPath的实例类
    UIBezierPath* linePath = [UIBezierPath bezierPath];

    //2)绘画路径
    [linePath moveToPoint:CGPointMake(10, 50)]; //起点
    [linePath addLineToPoint:CGPointMake(330, 50)]; //终点

    //3)给线加个红色颜色
    [[UIColor redColor] setStroke];

    //3）渲染
    [linePath stroke];
}

//1.3.C + OC
- (void)lineWithCAndOc
{

    //1）获取上下文
    CGContextRef ctx = UIGraphicsGetCurrentContext();

    //2)拼接路径
    UIBezierPath* bezier = [UIBezierPath bezierPath];
    [bezier moveToPoint:CGPointMake(10, 70)];
    [bezier addLineToPoint:CGPointMake(330, 70)];

    //3)路径添加到上下文中(bezier.CGPath)
    CGContextAddPath(ctx, bezier.CGPath);

    //4)给线加个红色颜色
    [[UIColor yellowColor] setStroke];

    //4)渲染
    CGContextStrokePath(ctx);
}

//2.OC绘画矩形
- (void)rectangle
{

    //创建路径
    UIBezierPath* rectangle = [UIBezierPath bezierPathWithRect:CGRectMake(10, 90, 320, 40)];
    [[UIColor purpleColor] setStroke];
    //渲染
    [rectangle stroke];
}

//3.0绘制圆角矩形
- (void)roundedOfRectangle
{

    //创建路径
    UIBezierPath* roundRectangle = [UIBezierPath bezierPathWithRoundedRect:CGRectMake(10, 150, 320, 40) cornerRadius:10];
    [[UIColor whiteColor] setStroke];

    //渲染
    [roundRectangle stroke];
}

//4.绘制椭圆(可以通过正方形，来画圆)
- (void)oval
{

    //OC版
    //    UIBezierPath *ovalPath = [UIBezierPath bezierPathWithOvalInRect:CGRectMake(10, 210, 320, 80)];
    //    [[UIColor orangeColor] setStroke];
    //    [ovalPath stroke];

    //C版
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //画椭圆 （Ellipse）椭圆的意思
    CGContextAddEllipseInRect(ctx, CGRectMake(10, 210, 320, 80));
    [[UIColor orangeColor] setStroke];
    //渲染
    CGContextStrokePath(ctx);
}

//5.画圆
- (void)circle
{

    //    //1).OC版
    //    UIBezierPath *circle = [UIBezierPath bezierPathWithArcCenter:CGPointMake(160, 340) radius:40 startAngle:0 endAngle:M_PI*2 clockwise:YES];
    //    [circle stroke];

    //2).C版
    CGContextRef ctx = UIGraphicsGetCurrentContext();
    //画圆
    CGContextAddArc(ctx, 160, 340, 40, 0, M_PI * 2, YES);
    //渲染
    CGContextStrokePath(ctx);
}

//6.三角形
- (void)triangle
{
    //    //1)OC版
    //    UIBezierPath *triangle = [UIBezierPath bezierPath];
    //
    //    //拼接路径
    //    [triangle moveToPoint:CGPointMake(120, 390)];
    //    [triangle addLineToPoint:CGPointMake(170, 430)];
    //    [triangle addLineToPoint:CGPointMake(210, 390)];
    //
    //    [[UIColor blueColor]setStroke];
    //
    //    //闭合路径
    //    [triangle closePath];
    //    //渲染
    //    [triangle stroke];

    //2.C版
    CGContextRef triangleCTX = UIGraphicsGetCurrentContext();

    //拼接路径
    CGContextMoveToPoint(triangleCTX, 120, 390);
    CGContextAddLineToPoint(triangleCTX, 170, 430);
    CGContextAddLineToPoint(triangleCTX, 210, 390);

    //闭合路径
    CGContextClosePath(triangleCTX);
    //设置颜色
    [[UIColor blueColor] setStroke];
    //渲染
    CGContextStrokePath(triangleCTX);
}

@end
