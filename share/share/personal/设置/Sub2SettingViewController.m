//
//  Sub2SettingViewController.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Sub2SettingViewController.h"
#import "SubTableViewCell.h"


@interface Sub2SettingViewController ()

@end

@implementation Sub2SettingViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //返回
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back.png" ] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
       
    self.navigationItem.leftBarButtonItem = leftBtn;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    self.tableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 225) style:UITableViewStylePlain];
    self.view.backgroundColor = [UIColor whiteColor];
    self.tableView.delegate = self;
    self.tableView.dataSource = self;

    [self.view addSubview:self.tableView];
    
    [self.tableView registerClass:[SubTableViewCell class] forCellReuseIdentifier:@"修改密码"];
    self.tableView.separatorStyle = UITableViewCellSeparatorStyleNone;
    
    
    //button
    UIButton *button = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    button.frame = CGRectMake(160, 280, 90, 30);
    [button setTitle:@"提交" forState:UIControlStateNormal];
    button.titleLabel.font = [UIFont systemFontOfSize:18];
    button.tintColor = [UIColor blackColor];
  //  button.backgroundColor = [UIColor whiteColor];
    [button addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchDown];
    // !!!!!!!!!!!!!!!!!!!!!!!!  边框设置
    //-setMasksToBounds:方法告诉layer将位于它之下的layer都遮盖住。
    [button.layer setMasksToBounds:YES];
    [button.layer setCornerRadius:9.0];    //圆角半径
    [button.layer setBorderWidth:1.3];     //边框宽度
    //设置边框颜色
    button.layer.borderColor = [UIColor blackColor].CGColor;
    
    [self.view addSubview:button];
    
}


- (void)pressBack {
    [self.navigationController popViewControllerAnimated:YES];
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
    
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 3;
}

- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 45;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    SubTableViewCell *cell = [self.tableView dequeueReusableCellWithIdentifier:@"修改密码" forIndexPath:indexPath];
    NSArray *arr = @[@"旧密码", @"新密码", @"确定密码"];
    cell.mima.text = arr[indexPath.row];
    cell.textField.placeholder = @"请输入密码";
    cell.textField.secureTextEntry = YES;
  
    if(indexPath.row == 1) {
      //  self.pass1 = cell.textField.text;
        [cell.textField addTarget:self action:@selector(textFieldWithText1:) forControlEvents:UIControlEventEditingChanged];
    }
    if(indexPath.row == 2) {
       // self.pass2 = cell.textField.text;
         [cell.textField addTarget:self action:@selector(textFieldWithText2:) forControlEvents:UIControlEventEditingChanged];
    }
    return cell;
}
//点击屏幕空白处 调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  [self.view endEditing:YES];
}



- (void)textFieldWithText1:(UITextField *)textField {
    self.pass1 = [NSString stringWithString:textField.text];
}

- (void)textFieldWithText2:(UITextField *)textField {
    self.pass2 = [NSString stringWithString:textField.text];
}


- (void)press{
    
    
    if([self.pass1 isEqualToString:self.pass2]) {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"已成功修改密码" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    } else {
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"" message:@"两次密码不一致" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *sureAction = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleCancel handler:nil];
        
        [alert addAction:sureAction];
        [self presentViewController:alert animated:NO completion:nil];
    }
    
}
@end
