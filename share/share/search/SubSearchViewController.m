//
//  SubSearchViewController.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SubSearchViewController.h"
#import "SubSearchTableViewCell.h"

@interface SubSearchViewController ()

@end

@implementation SubSearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //返回
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back.png" ] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    self.view.backgroundColor = [UIColor redColor];
    
    
    //tableView
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    
    //设置代理
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.estimatedSectionHeaderHeight = 10;
     self.tableView.estimatedSectionFooterHeight = 10;
    
    //注册
    [self.tableView registerClass:[SubSearchTableViewCell class] forCellReuseIdentifier:@"ft"];
    
    [self.view addSubview:self.tableView];
    
    
}

- (void)pressBack {
    [self.navigationController popViewControllerAnimated:YES];
}


//组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 2;
}

//行数
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}

//尾部高度
- (CGFloat)tableView:(UITableView *)tableView heightForFooterInSection:(NSInteger)section {
    return 15;
}

- (CGFloat)tableView:(UITableView *)tableView heightForHeaderInSection:(NSInteger)section {
    return 0;
}

//单元格高度
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
  
        return 140;
}

//单元格内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   
    SubSearchTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
   if(indexPath.section == 0) {
    
        cell.photoView.image = [UIImage imageNamed:@"hy1.jpg"];
        cell.zanView.image = [UIImage imageNamed:@"zan.png"];
        cell.eyeView.image = [UIImage imageNamed:@"eye.png"];
        cell.shareView.image = [UIImage imageNamed:@"share.png"];
        
        cell.titleLabel.text = @"！";
        cell.nameLabel.text = @"share小房";
        cell.contentLabel.text = @"原创-插画-练习习作";
        cell.timeLabel.text = @"1分钟前";
        
        cell.zanLabel.text = @"999";
        cell.eyeLabel.text = @"999";
        cell.shareLabel.text = @"999";
    
        cell.titleLabel.font = [UIFont systemFontOfSize:18];
        cell.nameLabel.font = [UIFont systemFontOfSize:16];
        cell.contentLabel.font = [UIFont systemFontOfSize:13];
        cell.timeLabel.font = [UIFont systemFontOfSize:13];
        cell.zanLabel.font = [UIFont systemFontOfSize:13];
        cell.eyeLabel.font = [UIFont systemFontOfSize:13];
        cell.shareLabel.font = [UIFont systemFontOfSize:13];
    
        return cell;
   }  else  {

        cell.photoView.image = [UIImage imageNamed:@"hy2.jpg"];
        cell.zanView.image = [UIImage imageNamed:@"zan.png"];
        cell.eyeView.image = [UIImage imageNamed:@"eye.png"];
        cell.shareView.image = [UIImage imageNamed:@"share.png"];
        
        cell.titleLabel.text = @"国外画册欣赏";
        cell.nameLabel.text = @"share小房";
        cell.contentLabel.text = @"平面设计";
        cell.timeLabel.text = @"2分钟前";
        
        cell.zanLabel.text = @"999";
        cell.eyeLabel.text = @"999";
        cell.shareLabel.text = @"999";
    
        cell.titleLabel.font = [UIFont systemFontOfSize:18];
        cell.nameLabel.font = [UIFont systemFontOfSize:16];
        cell.contentLabel.font = [UIFont systemFontOfSize:13];
        cell.timeLabel.font = [UIFont systemFontOfSize:13];
        cell.zanLabel.font = [UIFont systemFontOfSize:13];
        cell.eyeLabel.font = [UIFont systemFontOfSize:13];
        cell.shareLabel.font = [UIFont systemFontOfSize:13];
       
        return cell;
   }
    
}





@end
