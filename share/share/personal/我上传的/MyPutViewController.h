//
//  MyPutViewController.h
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface MyPutViewController : UIViewController
<UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource>
@property UITableView *tableView1;
@property UITableView *tableView2;
@property UITableView *tableView3;

@property UIScrollView *scroll;
@property UISegmentedControl *seg;

@end

NS_ASSUME_NONNULL_END
