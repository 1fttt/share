//
//  ActivityViewController.m
//  share
//
//  Created by 房彤 on 2020/7/21.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "ActivityViewController.h"

@interface ActivityViewController ()

@end

@implementation ActivityViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
   // self.navigationController.navigationBar.tintColor = [UIColor clearColor];
    
    self.navigationItem.title = @"活动";
    //分栏图片
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] init];
    tabBarItem.image = [[UIImage imageNamed:@"act1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:@"act2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
     self.tabBarItem = tabBarItem;
    

    self.navigationController.navigationBar.backgroundColor = [UIColor blueColor];
    
    self.tableview = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];

    self.tableview.delegate = self;
    self.tableview.dataSource = self;
    
    [self.view addSubview:self.tableview];
    
    //去黑线
    self.tableview.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 207;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0) {
        UITableViewCell *cell0 = [[UITableViewCell alloc] init];
        UIImageView *activity0 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"活动1.jpg"]];
        [cell0 addSubview:activity0];
        return cell0;
    } else if (indexPath.row == 1) {
        UITableViewCell *cell1 = [[UITableViewCell alloc] init];
        UIImageView *activity1 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"活动2.jpg"]];
        [cell1 addSubview:activity1];
        return cell1;
    } else {
        UITableViewCell *cell2 = [[UITableViewCell alloc] init];
        UIImageView *activity2 = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@"活动3.jpg"]];
        [cell2 addSubview:activity2];
        return cell2;
    }
}



/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
