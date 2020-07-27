//
//  Sub2ViewController.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Sub2ViewController.h"
#import "Sub2TableViewCell.h"

@interface Sub2ViewController ()

@end

@implementation Sub2ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    //返回
       UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back.png" ] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
       
       self.navigationItem.leftBarButtonItem = leftBtn;
       self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    //tableView
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[Sub2TableViewCell class] forCellReuseIdentifier:@"ft"];
    [self.view addSubview:self.tableView];
    
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 4;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 78;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    
    Sub2TableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
    NSArray *arr = @[@"head1.jpg", @"head2.jpg", @"head4.jpg", @"head5.jpg"];
    NSArray *name = @[@"share九喇嘛", @"share鼬", @"share鸣人", @"share佐助"];
    NSArray *sub = @[@"你的作品我很喜欢", @"谢谢，已关注你", @"为你点赞！", @"加油！"];
    NSArray *time = @[@"7-27 03:23", @"7-27 09:34", @"7-28 06:56", @"7-28 12:23"];
    
    cell.head.image = [UIImage imageNamed:arr[indexPath.row]];
    cell.name.text = name[indexPath.row];
    cell.sub.text = sub[indexPath.row];
    cell.time.text = time[indexPath.row];
    return cell;
    
    
}


- (void)pressBack {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
