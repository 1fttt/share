//
//  PersonalViewController.m
//  share
//
//  Created by 房彤 on 2020/7/21.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "PersonalViewController.h"
#import "PersonalTableViewCell.h"
#import "MyPutViewController.h"
#import "MyMassageViewController.h"
#import "MyRecommendViewController.h"
#import "SettingViewController.h"

@interface PersonalViewController ()

@end

@implementation PersonalViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.navigationItem.title = @"个人信息";
    
    //分栏图片
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] init];
    tabBarItem.image = [[UIImage imageNamed:@"per1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:@"per2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
     self.tabBarItem = tabBarItem;
    
    //tableVIew
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.tableView registerClass:[PersonalTableViewCell class] forCellReuseIdentifier:@"ft"];
    
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    
    [self.view addSubview:self.tableView];
    
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 7;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0) {
        return 145;
    } else {
        return 50;
    }
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 0) {
    PersonalTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
        cell.photoView.image = [UIImage imageNamed:@"head.png"];
        cell.zanView.image = [UIImage imageNamed:@"sc.png"];
        cell.eyeView.image = [UIImage imageNamed:@"zan.png"];
        cell.shareView.image = [UIImage imageNamed:@"eye.png"];
        
        cell.nameLabel.text = @"share小白";
        cell.contentLabel.text = @"数媒/设计爱好者";
        cell.Label1.text = @"木叶飞舞之处，火亦生生不息";
        cell.zanLabel.text = @"99";
        cell.eyeLabel.text = @"98";
        cell.shareLabel.text = @"100";
        
        cell.nameLabel.font = [UIFont systemFontOfSize:21];
        cell.contentLabel.font = [UIFont systemFontOfSize:14];
        cell.Label1.font = [UIFont systemFontOfSize:15];
        cell.zanLabel.font = [UIFont systemFontOfSize:14];
        cell.eyeLabel.font = [UIFont systemFontOfSize:14];
        cell.shareLabel.font = [UIFont systemFontOfSize:14];
        
        return cell;
    } else {
        UITableViewCell *cell;
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"ff"];
        if(cell == nil) {
            cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"ff"];
        }
        NSArray *arr = @[@"", @"我上传的", @"我的信息", @"我推荐的", @"院系通知", @"设置", @"退出"];
        cell.textLabel.text = arr[indexPath.row];
        NSArray *arrView = @[@"", @"p1.png", @"p2.png", @"p3.png",@"p4.png", @"p5.png", @"p6.png"];
        cell.imageView.image = [UIImage imageNamed:arrView[indexPath.row]];
        cell.textLabel.font = [UIFont systemFontOfSize:16];
        //小箭头
        cell.accessoryType = UITableViewCellAccessoryDisclosureIndicator;
        
        return cell;
        
    }
}

//点击当前cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 1) {
        MyPutViewController *putView = [[MyPutViewController alloc] init];
        [self.navigationController pushViewController:putView animated:YES];
    } else if(indexPath.row == 2) {
        MyMassageViewController *massageView = [[MyMassageViewController alloc] init];
        [self.navigationController pushViewController:massageView animated:YES];
    } else if(indexPath.row == 3) {
        MyRecommendViewController *recommendView = [[MyRecommendViewController alloc] init];
        [self.navigationController pushViewController:recommendView animated:YES];
    } else if(indexPath.row == 5) {
        SettingViewController *setView = [[SettingViewController alloc]init];
        [self.navigationController pushViewController:setView animated:YES];
    }
    
    else if (indexPath.row == 4 || indexPath.row == 6){
         //创建UIAlertController
        //p1 弹框标题。  p2 弹框消息内容   p3弹框样式
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"无内容" message:@"" preferredStyle:UIAlertControllerStyleAlert];
         //添加按钮动作
         UIAlertAction *action1 = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:^(UIAlertAction * _Nonnull action) {
             NSLog(@"点击确定按钮");
         }];
         [alert addAction:action1];
         [self presentViewController:alert animated:YES completion:nil];
        
    }
}

@end
