//
//  DrawStyleViewController.m
//  Quartz2D(自己做的demo)
//
//  Created by 胡双飞 on 15/8/19.
//  Copyright (c) 2015年 HSF. All rights reserved.
//

#import "DrawStyleViewController.h"

@interface DrawStyleViewController ()

@end

@implementation DrawStyleViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view.
}
- (IBAction)backMianView:(id)sender
{
    [self dismissViewControllerAnimated:YES
                             completion:^{

                             }];
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
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