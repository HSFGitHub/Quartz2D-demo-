//
//  StringDrawToView.m
//  Quartz2D(BaseDemo)
//
//  Created by 胡双飞 on 15/8/20.
//  Copyright (c) 2015年 HSF. All rights reserved.
//

#import "StringDrawToView.h"

@implementation StringDrawToView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    //字符串
    NSString* string1 = @"I write a simple exampleI write a simple exampleI write a simple exampleI write a simple example";

    NSString* string2 = @"I write a simple example I write a simple example";

    //设置阴影效果
    NSShadow* shadow = [[NSShadow alloc] init];
    shadow.shadowColor = [UIColor grayColor];
    shadow.shadowOffset = CGSizeMake(5, 5);
    shadow.shadowBlurRadius = 3;

    NSDictionary* attribute = @{ NSFontAttributeName : [UIFont systemFontOfSize:20], NSShadowAttributeName : shadow };
    //画上文字
    //方式一：从drawInRect内部开始画（支持换行 change line）。 withAttributes：参数
    [string1 drawInRect:rect withAttributes:attribute];

    //方式二： 从drawAtPoint：点开始绘制。 withAttributes：带的参数
    [string2 drawAtPoint:CGPointMake(40, 130) withAttributes:attribute];
}

@end
