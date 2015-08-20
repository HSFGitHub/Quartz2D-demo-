//
//  ScaleTranslateRotateView.h
//  Quartz2D(demo)
//
//  Created by 胡双飞 on 15/8/20.
//  Copyright (c) 2015年 HSF. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ScaleTranslateRotateView : UIView

/**
 *  缩放
 */
@property (nonatomic, assign) CGFloat scaleValue;
/**
 *  平移
 */
@property (nonatomic, assign) CGFloat translateValue;

/**
 *  旋转
 */
@property (nonatomic, assign) CGFloat rotateValue;

@end
