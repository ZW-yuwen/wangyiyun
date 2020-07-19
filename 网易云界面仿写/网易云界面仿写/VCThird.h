//
//  VCThird.h
//  网易云界面仿写
//
//  Created by 仲雯 on 2020/7/16.
//  Copyright © 2020 仲雯. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface VCThird : UIViewController<UITableViewDelegate, UITableViewDataSource>

{
    UITableView* _tableView;
    
    NSMutableArray* _arrayData;
}

@end

NS_ASSUME_NONNULL_END
