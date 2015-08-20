//
//  ScaleTranslateRotateViewController.m
//  Quartz2D(demo)
//
//  Created by 胡双飞 on 15/8/20.
//  Copyright (c) 2015年 HSF. All rights reserved.
//

#import "ScaleTranslateRotateViewController.h"
#import "ScaleTranslateRotateView.h"

@interface ScaleTranslateRotateViewController ()

@property (weak, nonatomic) IBOutlet ScaleTranslateRotateView* sTRView;

@end

@implementation ScaleTranslateRotateViewController
- (IBAction)backView:(id)sender
{

    [self dismissViewControllerAnimated:YES completion:nil];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.

    //初始值
    //缩放值
    self.sTRView.scaleValue = 1;
    //平移值
    self.sTRView.translateValue = 0;
    //旋转角度值
    self.sTRView.rotateValue = 0;
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
//缩放
- (IBAction)scaleAction:(id)sender
{
    UIButton* scaleBtn = sender;

    if (scaleBtn.tag == 10) {
        self.sTRView.scaleValue -= 0.2;
    }
    else if (scaleBtn.tag == 11) {
        self.sTRView.scaleValue += 0.2;
    }

    [self.sTRView setNeedsDisplay];
}
//平移
- (IBAction)translateAction:(id)sender
{
    UIButton* translateBtn = sender;

    if (translateBtn.tag == 12) {
        self.sTRView.translateValue += 50;
    }
    else if (translateBtn.tag == 13) {
        self.sTRView.translateValue -= 50;
    }

    [self.sTRView setNeedsDisplay];
}
//旋转
- (IBAction)rotateAction:(id)sender
{
    UIButton* rotateBtn = sender;

    if (rotateBtn.tag == 14) {
        self.sTRView.rotateValue += M_PI_4 * 0.5;
    }
    else if (rotateBtn.tag == 15) {
        self.sTRView.rotateValue -= M_PI_4 * 0.5;
    }
    [self.sTRView setNeedsDisplay];
}

//恢复
- (IBAction)restoreAction:(id)sender
{
    //初始值
    //缩放值
    self.sTRView.scaleValue = 1;
    //平移值
    self.sTRView.translateValue = 0;
    //旋转角度值
    self.sTRView.rotateValue = 0;
    [self.sTRView setNeedsDisplay];
}

@end
