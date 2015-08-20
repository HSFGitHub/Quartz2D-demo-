//
//  ImageDrawToView.m
//  Quartz2D(BaseDemo)
//
//  Created by 胡双飞 on 15/8/20.
//  Copyright (c) 2015年 HSF. All rights reserved.
//

#import "ImageDrawToView.h"

@implementation ImageDrawToView

// Only override drawRect: if you perform custom drawing.
// An empty implementation adversely affects performance during animation.
- (void)drawRect:(CGRect)rect
{
    // Drawing code
    UIImage* image = [UIImage imageNamed:@"water"];

    [image drawInRect:rect];
}

@end
