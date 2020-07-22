//
//  HomeViewController.m
//  share
//
//  Created by 房彤 on 2020/7/21.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "HomeViewController.h"
#import "HomeTableViewCell.h"
#import "SubViewController.h"

@interface HomeViewController ()

@end

@implementation HomeViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    //导航栏标题
    self.navigationItem.title = @"SHARE";
    //分栏
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] init];
    tabBarItem.image = [[UIImage imageNamed:@"home1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:@"home2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    self.tabBarItem = tabBarItem;
    
    //tableView
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStyleGrouped];
    
    //设置代理
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    
    self.tableView.estimatedSectionHeaderHeight = 10;
     self.tableView.estimatedSectionFooterHeight = 10;
    
    //注册
    [self.tableView registerClass:[HomeTableViewCell class] forCellReuseIdentifier:@"ft"];
    
    [self.view addSubview:self.tableView];
    

}

//组数
- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 5;
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
    if(indexPath.section == 0) {
        return 180;
    } else {
        return 140;
    }
}


//点击当前cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.section == 1) {
        SubViewController *sub = [[SubViewController alloc] init];
        [self.navigationController pushViewController:sub animated:YES];
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    UITableViewCell *cell0;
    
    HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
   if(indexPath.section == 1) {
    
        cell.photoView.image = [UIImage imageNamed:@"photo1.png"];
        cell.zanView.image = [UIImage imageNamed:@"zan.png"];
        cell.eyeView.image = [UIImage imageNamed:@"eye.png"];
        cell.shareView.image = [UIImage imageNamed:@"share.png"];
        
        cell.titleLabel.text = @"假日";
        cell.nameLabel.text = @"share小白";
        cell.contentLabel.text = @"原创-插画-练习习作";
        cell.timeLabel.text = @"1分钟前";
        
        cell.zanLabel.text = @"71";
        cell.eyeLabel.text = @"72";
        cell.shareLabel.text = @"73";
    
        cell.titleLabel.font = [UIFont systemFontOfSize:18];
        cell.nameLabel.font = [UIFont systemFontOfSize:16];
        cell.contentLabel.font = [UIFont systemFontOfSize:13];
        cell.timeLabel.font = [UIFont systemFontOfSize:13];
        cell.zanLabel.font = [UIFont systemFontOfSize:13];
        cell.eyeLabel.font = [UIFont systemFontOfSize:13];
        cell.shareLabel.font = [UIFont systemFontOfSize:13];
    
        return cell;
   }  else if (indexPath.section == 2) {

        cell.photoView.image = [UIImage imageNamed:@"photo2.png"];
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
   } else if(indexPath.section == 3) {
        cell.photoView.image = [UIImage imageNamed:@"photo3.png"];
        cell.zanView.image = [UIImage imageNamed:@"zan.png"];
        cell.eyeView.image = [UIImage imageNamed:@"eye.png"];
        cell.shareView.image = [UIImage imageNamed:@"share.png"];
        
        cell.titleLabel.text = @"collection扁平设计";
        cell.nameLabel.text = @"share小吕";
        cell.contentLabel.text = @"平面设计——海报设计";
        cell.timeLabel.text = @"3分钟前";
        
        cell.zanLabel.text = @"15";
        cell.eyeLabel.text = @"46";
        cell.shareLabel.text = @"56";
    
        cell.titleLabel.font = [UIFont systemFontOfSize:18];
        cell.nameLabel.font = [UIFont systemFontOfSize:16];
        cell.contentLabel.font = [UIFont systemFontOfSize:13];
        cell.timeLabel.font = [UIFont systemFontOfSize:13];
        cell.zanLabel.font = [UIFont systemFontOfSize:13];
        cell.eyeLabel.font = [UIFont systemFontOfSize:13];
        cell.shareLabel.font = [UIFont systemFontOfSize:13];
          
        return cell;
   } else {
        cell.photoView.image = [UIImage imageNamed:@"photo4.png"];
        cell.zanView.image = [UIImage imageNamed:@"zan.png"];
        cell.eyeView.image = [UIImage imageNamed:@"eye.png"];
        cell.shareView.image = [UIImage imageNamed:@"share.png"];
        
        cell.titleLabel.text = @"版式整理术：高效解决风格要求";
        cell.nameLabel.text = @"share小白";
        cell.contentLabel.text = @"平面设计——样式设计";
        cell.timeLabel.text = @"4分钟前";
    
        cell.zanLabel.text = @"78";
        cell.eyeLabel.text = @"56";
        cell.shareLabel.text = @"76";
       
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
