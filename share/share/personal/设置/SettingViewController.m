//
//  SettingViewController.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SettingViewController.h"
#import "SettingTableViewCell.h"
#import "Sub1SettingViewController.h"
#import "Sub2SettingViewController.h"
#import "Sub3SettingViewController.h"

@interface SettingViewController ()

@end

@implementation SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.tableView registerClass:[SettingTableViewCell class] forCellReuseIdentifier:@"ft"];
    
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    [self.view addSubview:self.tableView];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SettingTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
    NSArray *str = @[@"基本资料", @"修改密码", @"消息设置", @"关于SHARE", @"清除缓存"];
    cell.label.text = str[indexPath.row];
    cell.view.image = [UIImage imageNamed:@"a.png"];

    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0) {
        Sub1SettingViewController *sub1 = [[Sub1SettingViewController alloc] init];
        [self.navigationController pushViewController:sub1 animated:YES];
    } else if (indexPath.row == 1) {
        Sub2SettingViewController *sub2 = [[Sub2SettingViewController alloc] init];
        [self.navigationController pushViewController:sub2 animated:YES];
    } else if(indexPath.row == 2) {
        Sub3SettingViewController *sub3 = [[Sub3SettingViewController alloc] init];
        [self.navigationController pushViewController:sub3 animated:YES];
    }
}


@end
