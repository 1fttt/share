//
//  MyMassageViewController.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "MyMassageViewController.h"
#import "Sub1ViewController.h"
#import "Sub2ViewController.h"


@interface MyMassageViewController ()

@end

@implementation MyMassageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;
    self.tableView.separatorStyle = UITableViewCellSelectionStyleNone;
    [self.view addSubview: self.tableView];
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 50;
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    

    UITableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"fff"];
    if(cell == nil) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"fff"];
        UIImageView *view = [[UIImageView alloc] initWithFrame:CGRectMake(285, 20, 15, 15)];
        view.image = [UIImage imageNamed:@"a.png"];
        [cell.contentView addSubview:view];
        
        UILabel *label = [[UILabel alloc] initWithFrame:CGRectMake(310, 17, 20, 20)];
        NSArray *array1 = @[@"2", @"8", @"8", @"9", @"21"];
        label.text = array1[indexPath.row];
        [cell.contentView addSubview:label];
        
    }

    NSArray *array = @[@"  评论", @"  推荐我的 ", @"  新关注我的", @"  私信", @"  活动通知"];
    cell.textLabel.text = array[indexPath.row];
    return cell;
}

//点击当前cell
- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath {
    if(indexPath.row == 2) {
        Sub1ViewController *sub1 = [[Sub1ViewController alloc] init];
        [self.navigationController pushViewController:sub1 animated:YES];
    } else if(indexPath.row == 3) {
        Sub2ViewController *sub2 = [[Sub2ViewController alloc] init];
        [self.navigationController pushViewController:sub2 animated:YES];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"无内容" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
        
    }
}

@end
