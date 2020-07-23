//
//  SubViewController.m
//  share
//
//  Created by 房彤 on 2020/7/22.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SubViewController.h"

@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    //设置代理
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 1480;
}
/*
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 200;
}
*/

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell = [[UITableViewCell alloc] init];
    //头像
    UIImageView *head = [[UIImageView alloc] init];
    head.image = [UIImage imageNamed:@"head.png"];
    head.frame = CGRectMake(10, 10, 70, 70);
    [cell.contentView addSubview:head];
    
    UILabel *title = [[UILabel alloc] initWithFrame:CGRectMake(100, 10, 100, 40)];
    title.text = @"假日";
    title.font = [UIFont systemFontOfSize:21];
    
    UILabel *name = [[UILabel alloc] initWithFrame:CGRectMake(100, 40, 100, 40)];
    name.text = @"share小白";
    name.font = [UIFont systemFontOfSize:17];
    
    UILabel *content = [[UILabel alloc] initWithFrame:CGRectMake(10, 86, 250, 40)];
    content.text = @"多希望列车能把我带到有你的城市。";
    content.font = [UIFont systemFontOfSize:15];
    
    UILabel *time = [[UILabel alloc] initWithFrame:CGRectMake(345, 15, 100, 30)];
    time.text = @"12分钟前";
    time.font = [UIFont systemFontOfSize:14];
    
    UIImageView *zan = [[UIImageView alloc] initWithFrame:CGRectMake(250, 52, 15, 15)];
    zan.image = [UIImage imageNamed:@"zan.png"];
    
    UIImageView *eye = [[UIImageView alloc] initWithFrame:CGRectMake(310, 52, 17, 15)];
    eye.image = [UIImage imageNamed:@"eye.png"];
    
    UIImageView *share = [[UIImageView alloc] initWithFrame:CGRectMake(370, 52, 15, 15)];
    share.image = [UIImage imageNamed:@"share.png"];
    
    UILabel *zanLabel = [[UILabel alloc] initWithFrame:CGRectMake(270, 55, 25, 10)];
   
    UILabel *eyeLabel = [[UILabel alloc] initWithFrame:CGRectMake(330, 55, 25, 10)];
    
    UILabel *shareLabel = [[UILabel alloc] initWithFrame:CGRectMake(390, 55, 25, 10)];
   
    zanLabel.text = @"100";
    eyeLabel.text = @"100";
    shareLabel.text = @"12";
    
    zanLabel.font = [UIFont systemFontOfSize:13];
    eyeLabel.font = [UIFont systemFontOfSize:13];
    shareLabel.font = [UIFont systemFontOfSize:13];
    
    //图片
    UIImageView *photo1 = [[UIImageView alloc] initWithFrame:(CGRect)CGRectMake(10, 125, 394, 205)];
    photo1.image = [UIImage imageNamed:@"1.png"];
    
    UIImageView *photo2 = [[UIImageView alloc] initWithFrame:(CGRect)CGRectMake(10, 340, 394, 205)];
    photo2.image = [UIImage imageNamed:@"2.png"];
    
    UIImageView *photo3 = [[UIImageView alloc] initWithFrame:(CGRect)CGRectMake(100, 555, 214, 300)];
    photo3.image = [UIImage imageNamed:@"3.png"];
    
    UIImageView *photo4 = [[UIImageView alloc] initWithFrame:(CGRect)CGRectMake(10, 865, 394, 205)];
    photo4.image = [UIImage imageNamed:@"4.png"];
    
    UIImageView *photo5 = [[UIImageView alloc] initWithFrame:(CGRect)CGRectMake(100, 1075, 214, 300)];
    photo5.image = [UIImage imageNamed:@"5.png"];
    
    
    [cell.contentView addSubview:title];
    [cell.contentView addSubview:name];
    [cell.contentView addSubview:content];
    [cell.contentView addSubview:time];
    [cell.contentView addSubview:zan];
    [cell.contentView addSubview:eye];
    [cell.contentView addSubview:share];
    [cell.contentView addSubview:zanLabel];
    [cell.contentView addSubview:eyeLabel];
    [cell.contentView addSubview:shareLabel];
    
    [cell.contentView addSubview:photo1];
    [cell.contentView addSubview:photo2];
    [cell.contentView addSubview:photo3];
    [cell.contentView addSubview:photo4];
    [cell.contentView addSubview:photo5];
    
   // [cell.contentView addSubview:];
    
    return cell;
}


@end
