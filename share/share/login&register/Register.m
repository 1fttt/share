//
//  Register.m
//  share
//
//  Created by 房彤 on 2020/7/21.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Register.h"

@interface Register ()

@end

@implementation Register

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    

   // self.navigationController.navigationBar.translucent = NO;
   // self.navigationController.navigationBar.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"kaiji1.png"]];
    
    //背景
    UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
    imageView.image = [UIImage imageNamed:@"kaiji1.png"];
    [self.view addSubview:imageView];
    
    //logo
    UIImageView *logo = [[UIImageView alloc] initWithFrame:CGRectMake(147, 135, 120, 120)];
    logo.image = [UIImage imageNamed:@"logo1.png"];
    [self.view addSubview:logo];
    
    //textfield
    self.email = [[UITextField alloc] initWithFrame:CGRectMake(60, 340, 294, 45)];
    self.name = [[UITextField alloc] initWithFrame:CGRectMake(60, 402, 294, 45)];
    self.pass = [[UITextField alloc] initWithFrame:CGRectMake(60, 463, 294, 45)];
    
    self.name.borderStyle =  UITextBorderStyleRoundedRect;
    self.pass.borderStyle = UITextBorderStyleRoundedRect;
    self.email.borderStyle = UITextBorderStyleRoundedRect;
    self.name.keyboardType = UIKeyboardTypeDefault;
    self.pass.keyboardType = UIKeyboardTypeDefault;
    self.email.keyboardType = UIKeyboardTypeDefault;
    self.name.placeholder = @"请输入用户名";
    self.pass.placeholder = @"请输入密码";
    self.email.placeholder = @"请输入邮箱地址";
    self.pass.secureTextEntry = YES;
    
    UIImageView *emailView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 5, 5)];
    UIImageView *nameView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 5, 5)];
    UIImageView *passView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 5, 5)];
    emailView.image = [UIImage imageNamed:@"email.png"];
    nameView.image = [UIImage imageNamed:@"user.png"];
    passView.image = [UIImage imageNamed:@"pass.png"];
    
    self.email.leftView = emailView;
    self.email.leftViewMode = UITextFieldViewModeAlways;
    self.name.leftView = nameView;
    self.name.leftViewMode = UITextFieldViewModeAlways;
    self.pass.leftView = passView;
    self.pass.leftViewMode = UITextFieldViewModeAlways;
    
    [self.view addSubview:self.email];
    [self.view addSubview:self.name];
    [self.view addSubview:self.pass];
    
    //button 确定注册
    
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    [registerBtn setTitle:@"确定注册" forState:UIControlStateNormal];
    registerBtn.frame = CGRectMake(160, 535, 100, 40);
    registerBtn.tintColor = [UIColor whiteColor];
    [registerBtn addTarget:self action:@selector(pressRegister:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:registerBtn];
    
    //边框设置
    [registerBtn.layer setMasksToBounds:YES];
    [registerBtn.layer setCornerRadius:8.0];
    [registerBtn.layer setBorderWidth:1.3];
    registerBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    registerBtn.titleLabel.font = [UIFont systemFontOfSize:22];
    
    
    
    
    
    
    
    
    
    
}


//点击空白处调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.email resignFirstResponder];
    [self.name resignFirstResponder];
    [self.pass resignFirstResponder];
}

- (void)pressRegister:(UIButton *)registerBtn {
    //命令代理人执行协议方法
    [self.delegate passContent:self.name.text andPass:self.pass.text];
    //回去
    //[self.navigationController popViewControllerAnimated:YES];
    [self dismissViewControllerAnimated:YES completion:nil];
}

@end
