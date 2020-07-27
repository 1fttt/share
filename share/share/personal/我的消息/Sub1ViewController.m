//
//  Sub1ViewController.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Sub1ViewController.h"
#import "Sub1TableViewCell.h"

@interface Sub1ViewController ()

@end

@implementation Sub1ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //返回
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back.png" ] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
          
    self.navigationItem.leftBarButtonItem = leftBtn;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    [self.view addSubview:self.tableView];
    
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[Sub1TableViewCell class] forCellReuseIdentifier:@"ft"];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
}


- (void)pressBack {
    [self.navigationController popViewControllerAnimated:YES];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 80;
    
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 0;
}

- (UIView *)tableView:(UITableView *)tableView viewForHeaderInSection:(NSInteger)section {
    return nil;
}

- (UIView *)tableView:(UITableView *)tableView viewForFooterInSection:(NSInteger)section {
    return nil;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    Sub1TableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
    
    NSArray *arrHead = @[@"head1.jpg", @"head2.jpg", @"head3.jpg", @"head4.jpg", @"head5.jpg"];
    NSArray *arrName = @[@"九喇嘛", @"宇智波鼬", @"share卡卡西", @"share鸣人", @"share佐助"];
    
    cell.head.image = [UIImage imageNamed:arrHead[indexPath.section]];
    cell.name.text = arrName[indexPath.section];
    
    [cell.btn setImage:[UIImage imageNamed:@"guanzhu.png"] forState:UIControlStateNormal];
    [cell.btn addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    
    
    

    return cell;
}

- (void) pressSelect:(UIButton *)btn {
    [btn setImage:[UIImage imageNamed:@"guanzhu1.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressUnselect:) forControlEvents:UIControlEventTouchUpInside];
    
}
- (void)pressUnselect:(UIButton *)btn {
    [btn setImage:[UIImage imageNamed:@"guanzhu.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
}

@end
