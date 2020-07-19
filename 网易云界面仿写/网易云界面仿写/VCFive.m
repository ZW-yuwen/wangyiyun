//
//  VCFive.m
//  网易云界面仿写
//
//  Created by 仲雯 on 2020/7/16.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "VCFive.h"
#import "MyTableViewCell.h"

@interface VCFive ()

@end

@implementation VCFive
@synthesize blackSwitch = _blackSwitch;


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    UITabBarItem* tbItem05 = [[UITabBarItem alloc] initWithTitle:@"账号" image:[UIImage imageNamed:@"5.png"] tag:5];
    tbItem05.badgeValue = @"10";

    
    self.tabBarItem = tbItem05;
    _blackSwitch = [[UISwitch alloc] init];
    _blackSwitch.frame = CGRectMake(300, 10, 60, 40);
    _blackSwitch.on = NO;
    [_blackSwitch setOnTintColor:[UIColor redColor]];
    
    self.navigationItem.title = @"账号";
    
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"left05.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:nil];
    
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithImage: [[UIImage imageNamed: @"play.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:UIBarButtonItemStyleDone target:self action:nil];
       
    self.navigationItem.rightBarButtonItem = rightBtn;

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 450, 620)style:UITableViewStylePlain];
    
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    [_tableView registerClass:[MyTableViewCell class] forCellReuseIdentifier:@"051"];
    _tableView.separatorStyle = UITableViewScrollPositionNone;
    
    _arrayData = [[NSMutableArray alloc] init];
    
    NSArray* array00 = [NSArray arrayWithObjects:@"", nil];
    NSArray* array01 = [NSArray arrayWithObjects:@"创作者中心", nil];
    NSArray* array02 = [NSArray arrayWithObjects:@"", @"演出", @"商城", @"口袋彩铃", @"在线听歌免流量", nil];
    NSArray* array03 = [NSArray arrayWithObjects:@"", @"设置", @"", @"定时关闭", @"音乐黑名单", @"鲸云音效", @"添加Siri捷径", @"音乐闹钟", @"青少年模式", @"", nil];
    NSArray* array04 = [NSArray arrayWithObjects:@"我的订单", @"优惠券", @"分享网易云音乐", @"关于" ,@"", nil];
    NSArray* array05 = [NSArray arrayWithObjects:@"", nil];
    
    [_arrayData addObject:array00];
    [_arrayData addObject:array01];
    [_arrayData addObject:array02];
    [_arrayData addObject:array03];
    [_arrayData addObject:array04];
    [_arrayData addObject:array05];
    
    

}
- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}

-(NSInteger) tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
//    return 6;
    NSInteger numRow = [[_arrayData objectAtIndex:section] count];
    return numRow;
}

-(NSInteger) numberOfSectionsInTableView:(UITableView *)tableView{
//    return 3;
    return _arrayData.count;
}

-(CGFloat) tableView:(UITableView *)tableView heightForRowAtIndexPath:(nonnull NSIndexPath *)indexPath{
    if(indexPath.section == 0){
        return 160;
    }
    else if((indexPath.section == 2 && indexPath.row == 0) || (indexPath.section == 3 && indexPath.row == 0) ||(indexPath.section == 3 && indexPath.row == 9) ||(indexPath.section == 4 && indexPath.row == 4)){
        return 20;
    }
    return 50;
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *str = @"cell";
    UITableViewCell *cell = nil;
    cell = [_tableView dequeueReusableCellWithIdentifier:str];
    UITableViewCell* cell02 = nil;
    cell02 = [_tableView dequeueReusableCellWithIdentifier:@"cell02"];
    UITableViewCell *cell03 = nil;
    cell03 = [_tableView dequeueReusableCellWithIdentifier:@"cell03"];
    if(indexPath.section == 0){
        UITableViewCell* cell01 = [_tableView dequeueReusableCellWithIdentifier:@"051" forIndexPath:indexPath];
        return cell01;
    }
    else if (indexPath.section == 3 && indexPath.row == 2){
        UITableViewCell *cell03 =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell03"];
 //       UISwitch *blackSwitch = [[UISwitch alloc] init];
        cell03.textLabel.text = @"夜间模式";
//        _blackSwitch.frame = CGRectMake(300, 10, 60, 40);
  //      _blackSwitch.on = NO;
        [cell03.contentView addSubview:_blackSwitch];
        cell03.imageView.image = [UIImage imageNamed:@"05-3-3"];
        return cell03;
    }
    else if(indexPath.section == 5){
        UITableViewCell *cell02 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell02"];
        UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(150, 10, 80, 40)];
        [btn setTitle:@"退出登录" forState:UIControlStateNormal];
        [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
        [cell02 addSubview:btn];
        return cell02;
    }
    else{
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
        if ((indexPath.section == 2 && indexPath.row == 0) || (indexPath.section == 3 && indexPath.row == 0)) {
            return cell;
        }
        NSString *strImage = [NSString stringWithFormat:@"05-%ld-%ld.png", indexPath.section, indexPath.row+1];
        UIImage *image = [UIImage imageNamed:strImage];
        UIImageView *iView = [[UIImageView alloc] initWithImage:image];
        cell.imageView.image = image;
        if((indexPath.section == 3 && indexPath.row == 9) ||(indexPath.section == 4 && indexPath.row == 4)){
            return cell;
        }
        UIButton *jiantou = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [jiantou setImage:[[UIImage imageNamed:@"箭头01.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        jiantou.frame = CGRectMake(335, 15, 20, 20);
        [cell addSubview:jiantou];
        return cell;
    }
}


/*

-(NSString*) tableView:(UITableView *)tableView titleForHeaderInSection:(NSInteger)section{
    if(section == 0){
        return @"";
    }
    else if(section == 1){
        return @"";
    }
    else if (section == 2){
        return @"音乐服务";
    }
    else if(section == 3){
        return @"小工具";
    }
    else{
        return @"";
    }
}
*/
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
