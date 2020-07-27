//
//  Sub3SettingViewController.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Sub3SettingViewController.h"
#import "SubTableViewCell.h"

@interface Sub3SettingViewController ()

@end

@implementation Sub3SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //返回
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back.png" ] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
       
    self.navigationItem.leftBarButtonItem = leftBtn;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    [self.view addSubview:self.tableView];
    
    [self.tableView registerClass:[SubTableViewCell class] forCellReuseIdentifier:@"消息设置"];
    
    self.tableView.separatorStyle = UITableViewScrollPositionNone;
}

- (void)pressBack {
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 55;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    SubTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"消息设置" forIndexPath:indexPath];
    
    //SubTableViewCell *cell1 = [self.tableView dequeueReusableCellWithIdentifier:@"消息设置" forIndexPath:indexPath];
    NSArray *arr = @[@"接受所有新消息通知", @"通知显示栏", @"声音", @"震动", @"关注更新"];
    cell.str.text = arr[indexPath.row];
    [cell.btn setImage:[UIImage imageNamed:@"btn2.png"] forState:UIControlStateNormal];
    [cell.btn addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
    
    return cell;
}

- (void)press:(UIButton *)btn{
    [btn setImage:[UIImage imageNamed:@"btn1.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(press1:) forControlEvents:UIControlEventTouchUpInside];
    
}

- (void)press1:(UIButton *)btn {
    [btn setImage:[UIImage imageNamed:@"btn2.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
}

@end
