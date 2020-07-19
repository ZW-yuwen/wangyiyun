//
//  MyTableViewCell.h
//  网易云界面仿写
//
//  Created by 仲雯 on 2020/7/17.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyTableViewCell : UITableViewCell

@property (nonatomic, strong)UIButton *btnCloth;
@property (nonatomic, strong)UIButton *btnHome;
@property (nonatomic, strong)UIButton *btnFriend;
@property (nonatomic, strong)UIButton *btnMessage;
@property (nonatomic, strong)UIButton *btnRight01;
@property (nonatomic, strong)UILabel *lbname;
@property (nonatomic, strong)UIButton *imageMyself;
@property (nonatomic, strong)UILabel *labelCreat;
@property (nonatomic, strong)UILabel *lbMessage;
@property (nonatomic, strong)UILabel *lbFriend;
@property (nonatomic, strong)UILabel *lbHome;
@property (nonatomic, strong)UILabel *lbCloth;

@end

NS_ASSUME_NONNULL_END
