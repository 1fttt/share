//
//  PassageViewController.h
//  share
//
//  Created by 房彤 on 2020/7/21.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface PassageViewController : UIViewController
<UIScrollViewDelegate, UITableViewDelegate, UITableViewDataSource>

@property UITableView *jxTableView;
@property UITableView *rmTableView;
@property UITableView *qbTableView;
@property UIScrollView *scrollView;

//分段控制器
@property UISegmentedControl *segment;

@end

NS_ASSUME_NONNULL_END
