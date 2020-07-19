//
//  Cloud.m
//  网易云界面仿写
//
//  Created by 仲雯 on 2020/7/19.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "Cloud.h"

@interface Cloud ()

@end

@implementation Cloud

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.title = @"我的音乐云盘";
    self.view.backgroundColor = [UIColor blackColor];
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"房子.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem *rightBtn01 = [[UIBarButtonItem alloc] initWithImage: [[UIImage imageNamed: @"播放.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:UIBarButtonItemStyleDone target:self action:nil];
    UIBarButtonItem *rightBtn02 = [[UIBarButtonItem alloc] initWithImage: [[UIImage imageNamed: @"更多.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:UIBarButtonItemStyleDone target:self action:nil];
    NSArray *arrayBtn = [NSArray arrayWithObjects:rightBtn01, rightBtn02, nil];
    self.navigationItem.rightBarButtonItems = arrayBtn;
    
    UIButton *imageBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [imageBtn setImage:[[UIImage imageNamed: @"troye.JPG"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    imageBtn.frame = CGRectMake(0, 150, 390, 390);
    [self.view addSubview:imageBtn];
    
    
}

-(void) pressBack{
    [self.navigationController popViewControllerAnimated:YES];
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
