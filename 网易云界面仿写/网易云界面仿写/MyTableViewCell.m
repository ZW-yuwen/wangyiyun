//
//  MyTableViewCell.m
//  网易云界面仿写
//
//  Created by 仲雯 on 2020/7/17.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import "MyTableViewCell.h"

@implementation MyTableViewCell

-(instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier{
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if([self.reuseIdentifier isEqualToString:@"051"]){
        _imageMyself = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_imageMyself];
        
        _lbname = [[UILabel alloc] initWithFrame:CGRectMake(100, 20, 80, 20)];
        [self.contentView addSubview:_lbname];
            
        _btnRight01 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btnRight01];
        
            
        _btnMessage = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btnMessage];
        _lbMessage = [[UILabel alloc] initWithFrame:CGRectMake(20, 120, 60, 40)];
        [self.contentView addSubview:_lbMessage];
            
        _btnFriend = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btnFriend];
        _lbFriend = [[UILabel alloc]initWithFrame:CGRectMake(110, 120, 60, 40)];
        [self.contentView addSubview:_lbFriend];
            
        _btnHome = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btnHome];
        _lbHome = [[UILabel alloc] initWithFrame:CGRectMake(200, 120, 60, 40)];
        [self.contentView addSubview:_lbHome];
        
        _btnCloth = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [self.contentView addSubview:_btnCloth];
        _lbCloth = [[UILabel alloc]initWithFrame:CGRectMake(290, 120, 60, 40)];
        [self.contentView addSubview:_lbCloth];
    }
    return self;
}

-(void) layoutSubviews{
    
    [_imageMyself setImage:[[UIImage imageNamed:@"myself.JPG"]imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _imageMyself.frame = CGRectMake(30, 10, 60, 60);
    
    _lbname.text = @"汐柚xiyo";
    _lbname.font = [UIFont systemFontOfSize:16];
    
    [_btnRight01 setImage:[[UIImage imageNamed:@"qian.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal] forState:UIControlStateNormal];
    _btnRight01.titleLabel.font = [UIFont systemFontOfSize: 10];
    _btnRight01.frame = CGRectMake(300, 20, 40, 40);
    _btnRight01.backgroundColor = [UIColor whiteColor];
    
    [_btnRight01 addTarget:self action:@selector(pressSelf) forControlEvents:UIControlEventTouchUpInside];
    
    [_btnMessage setImage:[[UIImage imageNamed:@"message.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  forState:UIControlStateNormal];
    _btnMessage.titleLabel.text = @"信息";
    _btnMessage.frame = CGRectMake(25, 90, 40, 40);
    _lbMessage.text = @"我的消息";
    _lbMessage.font = [UIFont systemFontOfSize:12];
    
    [_btnFriend setImage:[[UIImage imageNamed:@"friend.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  forState:UIControlStateNormal];
    _btnFriend.frame = CGRectMake(115, 90, 40, 40);
    _lbFriend.text = @"我的好友";
    _lbFriend.font = [UIFont systemFontOfSize:12];
    
    [_btnHome setImage:[[UIImage imageNamed:@"home.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  forState:UIControlStateNormal];
    _btnHome.frame = CGRectMake(205, 90, 40, 40);
    _lbHome.text = @"个人主页";
    _lbHome.font = [UIFont systemFontOfSize:12];
    

    [_btnCloth setImage:[[UIImage imageNamed:@"cloth.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  forState:UIControlStateNormal];
    _btnCloth.frame = CGRectMake(295, 90, 40, 40);
    _lbCloth.text = @"个性装扮";
    _lbCloth.font = [UIFont systemFontOfSize:12];
}

-(void) pressSelf{
    _btnRight01.selected = !_btnRight01.selected;
    if(!_btnRight01.selected){
        [_btnRight01 setImage:[[UIImage imageNamed:@"签到成功.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  forState:UIControlStateSelected];
        
    }
    else{
        [_btnRight01 setImage:[[UIImage imageNamed:@"qian.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal]  forState:UIControlStateNormal];
        [_btnRight01 setTintColor:[UIColor whiteColor]];
        _btnRight01.tintColor = [UIColor whiteColor];
        _btnRight01.imageView.backgroundColor = [UIColor whiteColor];
    }
}

@end
