//
//  VCThird.m
//  网易云界面仿写
//
//  Created by 仲雯 on 2020/7/16.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "VCThird.h"
#import "MusicTableViewCell.h"
#import "Cloud.h"

@interface VCThird ()

@end

@implementation VCThird

- (void)viewDidLoad {
    [super viewDidLoad];
    UITabBarItem* tbItem03 = [[UITabBarItem alloc] initWithTitle:@"我的" image:[UIImage imageNamed:@"3.png"] tag:5];
//    tbItem02.badgeValue = @"9";
    
    self.tabBarItem = tbItem03;
    // Do any additional setup after loading the view.
     
    
    self.navigationItem.title = @"我的音乐";
    
    UIBarButtonItem* leftBtn = [[UIBarButtonItem alloc] initWithImage:[[UIImage imageNamed:@"cloud.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] style:UIBarButtonItemStylePlain target:self action:@selector(pressLeft)];
    leftBtn.tintColor = [UIColor blackColor];
    self.navigationItem.leftBarButtonItem = leftBtn;
    
    UIBarButtonItem* rightBtn = [[UIBarButtonItem alloc] initWithImage: [[UIImage imageNamed: @"play.png"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  style:UIBarButtonItemStyleDone target:self action:nil];
    
    self.navigationItem.rightBarButtonItem = rightBtn;

    _tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 450, 620)style:UITableViewStylePlain];
    _tableView.separatorStyle = UITableViewScrollPositionNone;
    _tableView.delegate = self;
    _tableView.dataSource = self;
    [self.view addSubview:_tableView];
    
    [_tableView registerClass:[MusicTableViewCell class] forCellReuseIdentifier:@"031"];
    [_tableView registerClass:[MusicTableViewCell class] forCellReuseIdentifier:@"032"];
    [_tableView registerClass:[MusicTableViewCell class] forCellReuseIdentifier:@"033"];
    [_tableView registerClass:[MusicTableViewCell class] forCellReuseIdentifier:@"034"];
    _arrayData = [[NSMutableArray alloc] init];
    
    NSArray* array00 = [NSArray arrayWithObjects:@"", nil];
    NSArray* array01 = [NSArray arrayWithObjects: @"下载列表", nil];
    NSArray* array02 = [NSArray arrayWithObjects:@"我的音乐", @"", nil];
    NSArray* array03 = [NSArray arrayWithObjects:@"最近播放", @"", nil];
    NSArray* array04 = [NSArray arrayWithObjects:@"创建歌单   收藏歌单   歌单助手", @"", nil];
    
    [_arrayData addObject:array00];
    [_arrayData addObject:array01];
    [_arrayData addObject:array02];
    [_arrayData addObject:array03];
    [_arrayData addObject:array04];
}

- (UITableViewCell*) tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    NSString *str = @"cell";
    UITableViewCell *cell = nil;
    cell = [_tableView dequeueReusableCellWithIdentifier:str];
    UITableViewCell* cell2 = nil;
    cell2 = [_tableView dequeueReusableCellWithIdentifier:@"cell02"];
    UITableViewCell *cell3 = nil;
    cell3 = [_tableView dequeueReusableCellWithIdentifier:@"cell03"];
    UITableViewCell *cell4 = nil;
    cell4 = [_tableView dequeueReusableCellWithIdentifier:@"cell04"];
    
    if(indexPath.section == 0){
        UITableViewCell *cell1 = [_tableView dequeueReusableCellWithIdentifier:@"031" forIndexPath:indexPath];
        return cell1;
    }
    else if(indexPath.section == 2 && indexPath.row == 1){
        UITableViewCell *cell2 = [_tableView dequeueReusableCellWithIdentifier:@"032" forIndexPath:indexPath];
        return cell2;
    }
    else if(indexPath.section == 3 && indexPath.row == 1){
        UITableViewCell *cell3 = [_tableView dequeueReusableCellWithIdentifier:@"033" forIndexPath:indexPath];
        return cell3;
    }
    else if(indexPath.section == 4 && indexPath.row == 1){
        UITableViewCell *cell4 = [_tableView dequeueReusableCellWithIdentifier:@"034" forIndexPath:indexPath];
        return cell4;
    }
    else{
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
        if(indexPath.section == 4 && indexPath.row == 0){
            UIButton *btMusic = [UIButton buttonWithType:UIButtonTypeRoundedRect];
            btMusic.titleLabel.text = @"收藏歌单   歌单助手";
        //    labelMusic.textColor = [UIColor grayColor];
            btMusic.frame = CGRectMake(70, 10, 20, 100);
            [cell addSubview:btMusic];
        }
        cell.textLabel.text = _arrayData[indexPath.section][indexPath.row];
        UIButton *jiantou = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [jiantou setImage:[[UIImage imageNamed:@"箭头01.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
        jiantou.frame = CGRectMake(330, 10, 20, 20);
        [cell addSubview:jiantou];
        
 /*    NSString *strImage = [NSString stringWithFormat:@"05-%ld-%ld.png", indexPath.section, indexPath.row+1];
        UIImage *image = [UIImage imageNamed:strImage];
        UIImageView *iView = [[UIImageView alloc] initWithImage:image];
        cell.imageView.image = image;
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;*/
        return cell;
    }
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
    else if(indexPath.section == 2 && indexPath.row == 1){
        return 130;
    }
    else if(indexPath.section == 3 && indexPath.row == 1){
        return 80;
    }
    else if(indexPath.section == 4 && indexPath.row == 1){
        return 200;
    }
    return 40;
}

-(void) pressLeft{
    Cloud *myCloud = [[Cloud alloc] init];
    [self.navigationController pushViewController:myCloud animated:YES];
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

@end
/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

/*

else if (indexPath.section == 3 && indexPath.row == 2){
    UITableViewCell *cell03 =[[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell03"];
    UISwitch *blackSwitch = [[UISwitch alloc] init];
    cell03.textLabel.text = @"夜间模式";
    blackSwitch.frame = CGRectMake(300, 10, 60, 40);
    blackSwitch.on = YES;
    [cell03.contentView addSubview:blackSwitch];
    cell03.imageView.image = [UIImage imageNamed:@"05-3-3"];
    return cell03;
}
else if(indexPath.section == 5){
    UITableViewCell *cell02 = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell02"];
    UIButton *btn = [[UIButton alloc] initWithFrame:CGRectMake(150, 10, 80, 40)];
    [btn setTitle:@"退出登录" forState:UIControlStateNormal];
    cell02.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
    [btn setTitleColor:[UIColor redColor] forState:UIControlStateNormal];
    [cell02 addSubview:btn];
    return cell02;
    }
*/
