//
//  HomeViewController.h
//  share
//
//  Created by 房彤 on 2020/7/21.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeViewController : UIViewController
<UITableViewDelegate, UITableViewDataSource>

@property UITableView *tableView;
//@property UIScrollView *scroll;
//@property UIPageControl *pageControl;
//@property CADisplayLink *link;

@end

NS_ASSUME_NONNULL_END
