//
//  MusicTableViewCell.m
//  网易云界面仿写
//
//  Created by 仲雯 on 2020/7/17.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "MusicTableViewCell.h"

@implementation MusicTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if([self.reuseIdentifier isEqualToString:@"031"]){
        _btmyselfImage = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btmyselfImage];
        
        _lbName = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 80, 20)];
        [self.contentView addSubview:_lbName];
        
        _btlevel = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btlevel];
        _lbLevel = [[UILabel alloc]initWithFrame:CGRectMake(103, 40, 30, 20)];
        [self.contentView addSubview:_lbLevel];
        
        _btjiantou =[UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btjiantou];
        
        _btlocalMusic = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btlocalMusic];
        _lblocalMusic = [[UILabel alloc] initWithFrame:CGRectMake(25, 135, 60, 20)];
        [self.contentView addSubview:_lblocalMusic];
        
        _btmusicNew = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btmusicNew];
        _lbmusicNew = [[UILabel alloc] initWithFrame:CGRectMake(295, 135, 60, 20)];
        [self.contentView addSubview:_lbmusicNew];

        _btstar = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btstar];
        _lbstar = [[UILabel alloc] initWithFrame:CGRectMake(205, 135, 60, 20)];
        [self.contentView addSubview:_lbstar];
        
        _btmusic = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btmusic];
        _lbmusic = [[UILabel alloc] initWithFrame:CGRectMake(115, 135, 60, 20)];
        [self.contentView addSubview:_lbmusic];
    }
    else if([self.reuseIdentifier isEqualToString:@"032"]){
        _btlove = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btlove];
        _btFM = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btFM];
        _btJazzAir = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btJazzAir];
        _btTui = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self. contentView addSubview:_btTui];
    }
    else if([self.reuseIdentifier isEqualToString:@"033"]){
        _btAll = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btAll];
        _lbAll = [[UILabel alloc] initWithFrame:CGRectMake(90, 20, 100, 20)];
        [self.contentView addSubview:_lbAll];
        _lbAllDown = [[UILabel alloc] initWithFrame:CGRectMake(90, 50, 100, 20)];
        [self.contentView addSubview:_lbAllDown];
        
        _btRadio = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btRadio];
        _lbRadio = [[UILabel alloc] initWithFrame:CGRectMake(265, 20, 100, 20)];
        [self.contentView addSubview:_lbRadio];
        _lbRadioDown = [[UILabel alloc] initWithFrame:CGRectMake(265, 50, 100, 20)];
        [self.contentView addSubview:_lbRadioDown];
    }
    else if([self.reuseIdentifier isEqualToString:@"034"]){
        _btCrush = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btCrush];
        _lbCrush = [[UILabel alloc] initWithFrame:CGRectMake(90, 20, 100, 20)];
        [self.contentView addSubview:_lbCrush];
        _lbCrushDown = [[UILabel alloc] initWithFrame:CGRectMake(90, 50, 100, 20)];
        [self.contentView addSubview:_lbCrushDown];
        
        _btLes = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btLes];
        _lbLes = [[UILabel alloc] initWithFrame:CGRectMake(265, 20, 100, 20)];
        [self.contentView addSubview:_lbLes];
        _lbLesDown = [[UILabel alloc] initWithFrame:CGRectMake(265, 50, 100, 20)];
        [self.contentView addSubview:_lbLesDown];
        _btAdd = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btAdd];
        _lbAdd = [[UILabel alloc] initWithFrame:CGRectMake(90, 120, 100, 20)];
        [self.contentView addSubview:_lbAdd];
    }
    return self;
    
}
-(void) layoutSubviews{

    [_btmyselfImage setImage:[[UIImage imageNamed: @"myself.JPG"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btmyselfImage.frame = CGRectMake(20, 20, 60, 60);
    _lbName.text = @"汐柚xiyo";
    _lbName.font = [UIFont systemFontOfSize:14];
    _btlevel.frame = CGRectMake(100, 40, 30, 20);
    _btlevel.backgroundColor = [UIColor grayColor];
    _lbLevel.text = @"Lv.8";
    _lbLevel.textColor = [UIColor whiteColor];
    _lbLevel.font = [UIFont systemFontOfSize:12];
    
    [_btjiantou setImage:[[UIImage imageNamed:@"箭头01.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btjiantou.frame = CGRectMake(325, 30, 20, 20);
    
    [_btlocalMusic setImage:[[UIImage imageNamed:@"download.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btlocalMusic.frame = CGRectMake(35, 100, 30, 30);
    _lblocalMusic.text = @"本地音乐";
    _lblocalMusic.font = [UIFont systemFontOfSize:12];
    [_btmusic setImage:[[UIImage imageNamed:@"air.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btmusic.frame = CGRectMake(125, 100, 30, 30);
    _lbmusic.text = @"我的电台";
    _lbmusic.font = [UIFont systemFontOfSize:12];
    [_btstar setImage:[[UIImage imageNamed:@"star.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btstar.frame = CGRectMake(215, 100, 30, 30);
    _lbstar.text = @"我的收藏";
    _lbstar.font = [UIFont systemFontOfSize:12];
    [_btmusicNew setImage:[[UIImage imageNamed:@"new.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btmusicNew.frame = CGRectMake(305, 100, 30, 30);
    _lbmusicNew.text = @"关注新歌";
    _lbmusicNew.font = [UIFont systemFontOfSize:12];
    
    
    [_btlove setImage:[[UIImage imageNamed:@"love.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
             forState:UIControlStateNormal];
    _btlove.frame = CGRectMake(15, 10, 80, 110);
    [_btFM setImage:[[UIImage imageNamed:@"FM.jpeg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
             forState:UIControlStateNormal];
    _btFM.frame = CGRectMake(105, 10, 80, 110);
    [_btJazzAir setImage:[[UIImage imageNamed:@"Jazz.jpg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
             forState:UIControlStateNormal];
    _btJazzAir.frame = CGRectMake(195, 10, 80, 110);
    [_btTui setImage:[[UIImage imageNamed:@"推荐.jpeg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
             forState:UIControlStateNormal];
    _btTui.frame = CGRectMake(285, 10, 80, 110);
    
    [_btAll setImage:[[UIImage imageNamed:@"allMusic.jpeg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    forState:UIControlStateNormal];
    _btAll.frame = CGRectMake(20, 15, 60, 60);
    _lbAll.text = @"全部已播歌曲";
    _lbAll.font = [UIFont systemFontOfSize:12];
    _lbAllDown.text = @"300首";
    _lbAllDown.font = [UIFont systemFontOfSize:10];
    _lbAllDown.textColor = [UIColor grayColor];
    [_btRadio setImage:[[UIImage imageNamed:@"radio.jpeg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    forState:UIControlStateNormal];
    _btRadio.frame = CGRectMake(195, 15, 60, 60);
    _lbRadio.text = @"电台：LOVEYOURSELF";
    _lbRadio.font = [UIFont systemFontOfSize:12];
    _lbRadioDown.text = @"继续播放";
    _lbRadioDown.font = [UIFont systemFontOfSize:10];
    _lbRadioDown.textColor = [UIColor grayColor];
    
    [_btCrush setImage:[[UIImage imageNamed:@"crush.jpeg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    forState:UIControlStateNormal];
    _btCrush.frame = CGRectMake(20, 15, 60, 60);
    _lbCrush.text = @"Crush";
    _lbCrush.font = [UIFont systemFontOfSize:12];
    _lbCrushDown.text = @"11首";
    _lbCrushDown.font = [UIFont systemFontOfSize:10];
    _lbCrushDown.textColor = [UIColor grayColor];
    [_btLes setImage:[[UIImage imageNamed:@"les.jpeg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    forState:UIControlStateNormal];
    _btLes.frame = CGRectMake(195, 15, 60, 60);
    _lbLes.text = @"Les";
    _lbLes.font = [UIFont systemFontOfSize:12];
    _lbLesDown.text = @"37首";
    _lbLesDown.font = [UIFont systemFontOfSize:10];
    _lbLesDown.textColor = [UIColor grayColor];

    [_btAdd setImage:[[UIImage imageNamed:@"add.jpeg"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]
    forState:UIControlStateNormal];
    _btAdd.frame = CGRectMake(20, 110, 60, 60);
    _lbAdd.text = @"导入外部歌单";
    _lbAdd.font = [UIFont systemFontOfSize:12];
    
}
@end
