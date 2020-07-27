//
//  Sub1SettingViewController.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Sub1SettingViewController.h"
#import "SubTableViewCell.h"

@interface Sub1SettingViewController ()

@end

@implementation Sub1SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //返回
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back.png" ] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
       
    self.navigationItem.leftBarButtonItem = leftBtn;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    [self.view addSubview:self.tableView];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
 
    
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
    if(indexPath.row == 0) {
        return 80;
    } else {
        return 50;
    }
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SubTableViewCell *cell;
    if(indexPath.row == 0) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"基本资料-头像"];
        if(cell == nil) {
            cell = [[SubTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"基本资料-头像"];
        }
        cell.touxiang.text = @"头像";
        cell.head.image = [UIImage imageNamed:@"head.png"];
    } else if(indexPath.row == 3) {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"基本资料-性别"];
        if(cell == nil) {
            cell = [[SubTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"基本资料-性别"];
        }
        cell.sex.text = @"性别";
        cell.boyLabel.text = @"男";
        cell.girlLabel.text = @"女";
        
        
    } else {
        cell = [self.tableView dequeueReusableCellWithIdentifier:@"基本资料-其他"];
               if(cell == nil) {
                   cell = [[SubTableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"基本资料-其他"];
               }
        
        NSArray *arrLabel = @[@"", @"昵称", @"签名", @"", @"邮箱"];
        NSArray *arrContentLabel = @[@"", @"share小白", @"凡心所向，素履以往", @"", @"151#####@qq.com"];
        cell.label.text = arrLabel[indexPath.row];
        cell.contentLabel.text = arrContentLabel[indexPath.row];
        
    }
    return cell;
}



@end
