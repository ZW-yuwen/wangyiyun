//
//  VCfour.m
//  网易云界面仿写
//
//  Created by 仲雯 on 2020/7/16.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "VCfour.h"

@interface VCfour ()

@end

@implementation VCfour

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    UITabBarItem *tbItem04 = [[UITabBarItem alloc] initWithTitle:@"云村" image:[UIImage imageNamed:@"4.png"] tag:5];
 //   tbItem02.badgeValue = @"9";
    
    self.tabBarItem = tbItem04;
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
