//
//  SubViewController.h
//  share
//
//  Created by 房彤 on 2020/7/22.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface SubViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>

@property UITableView *tableView;

@end

NS_ASSUME_NONNULL_END