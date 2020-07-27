//
//  Sub2SettingViewController.h
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface Sub2SettingViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>
@property UITableView *tableView;
@property NSString *pass1;
@property NSString *pass2;
@property NSMutableArray *pass0;
@end

NS_ASSUME_NONNULL_END
