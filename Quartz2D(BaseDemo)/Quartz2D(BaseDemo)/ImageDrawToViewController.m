//
//  ImageDrawToViewController.m
//  Quartz2D(BaseDemo)
//
//  Created by 胡双飞 on 15/8/20.
//  Copyright (c) 2015年 HSF. All rights reserved.
//

#import "ImageDrawToViewController.h"

@interface ImageDrawToViewController ()

@end

@implementation ImageDrawToViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
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