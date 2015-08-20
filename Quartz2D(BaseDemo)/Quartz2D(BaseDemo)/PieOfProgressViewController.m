//
//  PieOfProgressViewController.m
//  Quartz2D(自己做的demo)
//
//  Created by 胡双飞 on 15/8/20.
//  Copyright (c) 2015年 HSF. All rights reserved.
//

#import "PieOfProgressViewController.h"
#import "PieOfProgressView.h"

@interface PieOfProgressViewController ()
@property (weak, nonatomic) IBOutlet PieOfProgressView* popv;

@end

@implementation PieOfProgressViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //    self.popv = [[PieOfProgressView alloc] init];
}
- (IBAction)silderAction:(UISlider*)sender
{

    //拖动控件获得当前的值
    self.popv.slidervalue = sender.value;
    //重绘
    [self.popv setNeedsDisplay];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}
- (IBAction)backView:(id)sender
{
    [self dismissViewControllerAnimated:YES completion:nil];
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
