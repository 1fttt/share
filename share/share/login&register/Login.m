//
//  Login.m
//  share
//
//  Created by 房彤 on 2020/7/20.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Login.h"
#import "Register.h"
#import "HomeViewController.h"
#import "SearchViewController.h"
#import "PassageViewController.h"
#import "ActivityViewController.h"
#import "PersonalViewController.h"

//签协议
@interface Login () <PassValueDelegate>

@end

@implementation Login

- (void)viewDidLoad {
    
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //self.view.backgroundColor = [UIColor whiteColor];
    
    self.view.backgroundColor = [UIColor colorWithPatternImage:[UIImage imageNamed:@"kaiji1.png"]];
    
  //  UIImageView *imageView = [[UIImageView alloc] initWithFrame:self.view.frame];
  //  imageView.image = [UIImage imageNamed:@"kaiji1.png"];
  //  [self.view addSubview:imageView];
    
    //logo
    UIImageView *logo = [[UIImageView alloc] initWithFrame:CGRectMake(147, 135, 120, 120)];
    logo.image = [UIImage imageNamed:@"logo1.png"];
    [self.view addSubview:logo];
    
    //label SHARE
    UILabel *shareLabel = [[UILabel alloc] initWithFrame:CGRectMake(162, 245, 100, 70)];
    shareLabel.text = @"SHARE";
    shareLabel.font = [UIFont systemFontOfSize:29];
    shareLabel.textColor = [UIColor whiteColor];
    [self.view addSubview:shareLabel];
    
    //textField
    self.nameTextField = [[UITextField alloc] initWithFrame:CGRectMake(60, 340, 294, 45)];
    self.passTextField = [[UITextField alloc] initWithFrame:CGRectMake(60, 402, 294, 45)];
    
    self.nameTextField.borderStyle =  UITextBorderStyleRoundedRect;
    self.passTextField.borderStyle = UITextBorderStyleRoundedRect;
    
    self.nameTextField.keyboardType = UIKeyboardTypeDefault;
    self.passTextField.keyboardType = UIKeyboardTypeDefault;
    
    self.nameTextField.placeholder = @"请输入用户名";
    self.passTextField.placeholder = @"请输入密码";
    
    //密码小黑点
    self.passTextField.secureTextEntry = YES;
  
    //小标
    UIImageView *nameView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 5, 5)];
    nameView.image = [UIImage imageNamed:@"user.png"];
    self.nameTextField.leftView = nameView;
    self.nameTextField.leftViewMode = UITextFieldViewModeAlways;

    UIImageView *passView = [[UIImageView alloc] initWithFrame:CGRectMake(0, 0, 5, 5)];
    passView.image = [UIImage imageNamed:@"pass.png"];
    self.passTextField.leftView = passView;
    self.passTextField.leftViewMode = UITextFieldViewModeAlways;
    
     
    [self.view addSubview:self.nameTextField];
    [self.view addSubview:self.passTextField];
    
    
    //button login register
    UIButton *loginBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    loginBtn.frame = CGRectMake(90, 480, 100, 40);
    [loginBtn setTitle:@"登录" forState:UIControlStateNormal];
    [loginBtn addTarget:self action:@selector(pressLogin) forControlEvents:UIControlEventTouchUpInside];
    
    UIButton *registerBtn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    registerBtn.frame = CGRectMake(224, 480, 100, 40);
    [registerBtn setTitle:@"注册" forState:UIControlStateNormal];
    [registerBtn addTarget:self action:@selector(pressRegister) forControlEvents:UIControlEventTouchUpInside];
    
    loginBtn.tintColor = [UIColor whiteColor];
    registerBtn.tintColor = [UIColor whiteColor];
    
    // !!!!!!!!!!!!!!!!!!!!!!!!  边框设置
    //-setMasksToBounds:方法告诉layer将位于它之下的layer都遮盖住。
    [loginBtn.layer setMasksToBounds:YES];
    [loginBtn.layer setCornerRadius:9.0];    //圆角半径
    [loginBtn.layer setBorderWidth:1.3];     //边框宽度
    loginBtn.titleLabel.font = [UIFont systemFontOfSize:22];
    //设置边框颜色
    loginBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    
    [registerBtn.layer setMasksToBounds:YES];
    [registerBtn.layer setCornerRadius:8.0];
    [registerBtn.layer setBorderWidth:1.3];
    registerBtn.layer.borderColor = [UIColor whiteColor].CGColor;
    registerBtn.titleLabel.font = [UIFont systemFontOfSize:22];
      
      
    [self.view addSubview:loginBtn];
    [self.view addSubview:registerBtn];
      
    
    //
    
    
    //自动登录
    UIButton *zdBtn = [UIButton buttonWithType:UIButtonTypeCustom];
    [zdBtn setImage:[UIImage imageNamed:@"check.png"]
        forState:UIControlStateNormal];
    [zdBtn setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateSelected];
    zdBtn.frame = CGRectMake(75, 539, 15, 15);
    [zdBtn addTarget:self action:@selector(check:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:zdBtn];
    
    UILabel *zdLabel = [[UILabel alloc] initWithFrame:CGRectMake(94, 536, 90, 20)];
    zdLabel.text = @"自动登录";
    zdLabel.font = [UIFont systemFontOfSize:15];
    //zdLabel.textColor = [UIColor blueColor];
    //alpha 透明度   均0-1
    zdLabel.textColor = [UIColor colorWithRed:0.00f green:0.37f blue:0.64f alpha:1.0f];
    [self.view addSubview:zdLabel];

    
    // 键盘出现 视图上移事件
    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillAppear:) name:UIKeyboardWillShowNotification object:nil];

    [[NSNotificationCenter defaultCenter] addObserver:self selector:@selector(keyboardWillDisAppear:) name:UIKeyboardWillHideNotification object:nil];
    
}

/*
//点击屏幕空白处 调用此函数
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
  //辞掉第一响应者 使虚拟键盘回收，不再作为第一消息响应者
    [self.nameTextField resignFirstResponder];
    [self.passTextField resignFirstResponder];
}
*/
- (void)pressLogin {
    
    if([self.nameTextField.text isEqualToString:self.name] && [self.passTextField.text isEqualToString:self.pass]) {
    
    //视图控制器
    HomeViewController *homeVC = [[HomeViewController alloc] init];
    SearchViewController *searchVC = [[SearchViewController alloc] init];
    PassageViewController *passageVC = [[PassageViewController alloc] init];
    ActivityViewController *activityVC = [[ActivityViewController alloc] init];
    PersonalViewController *personalVC = [[PersonalViewController alloc] init];
    
    homeVC.view.backgroundColor = [UIColor whiteColor];
    searchVC.view.backgroundColor = [UIColor whiteColor];
    passageVC.view.backgroundColor = [UIColor whiteColor];
    activityVC.view.backgroundColor = [UIColor whiteColor];
    personalVC.view.backgroundColor = [UIColor whiteColor];
    
   // homeVC.title = @"home";
   // searchVC.title = @"search";
   // passageVC.title = @"passage";
   // activityVC.title = @"activity";
   // personalVC.title = @"personal";
    
    //导航控制器
    UINavigationController *navHome = [[UINavigationController alloc] initWithRootViewController:homeVC];
    UINavigationController *navSearch = [[UINavigationController alloc] initWithRootViewController:searchVC];
    UINavigationController *navPassage = [[UINavigationController alloc] initWithRootViewController:passageVC];
    UINavigationController *navActivity = [[UINavigationController alloc] initWithRootViewController:activityVC];
    UINavigationController *navPersonal = [[UINavigationController alloc] initWithRootViewController:personalVC];

    //导航栏背景颜色 导航栏文字大小+颜色
    //navHome.navigationBar.barTintColor = [UIColor colorWithRed:0.0 green:0.35 blue:0.7 alpha:1.0];
    [navHome.navigationBar setBarTintColor:[UIColor colorWithRed:0.0 green:0.36 blue:0.7 alpha:1.0]];
    [navHome.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22],  NSForegroundColorAttributeName:[UIColor whiteColor]}];

    [navSearch.navigationBar setBarTintColor:[ UIColor colorWithRed:0.0 green:0.36 blue:0.7 alpha:1.0]];
    [navSearch.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    [navPassage.navigationBar setBarTintColor:[ UIColor colorWithRed:0.0 green:0.36 blue:0.7 alpha:1.0]];
    [navPassage.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    [navActivity.navigationBar setBarTintColor:[ UIColor colorWithRed:0.0 green:0.36 blue:0.7 alpha:1.0]];
    [navActivity.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    [navPersonal.navigationBar setBarTintColor:[ UIColor colorWithRed:0.0 green:0.36 blue:0.7 alpha:1.0]];
    [navPersonal.navigationBar setTitleTextAttributes:@{NSFontAttributeName:[UIFont systemFontOfSize:22], NSForegroundColorAttributeName:[UIColor whiteColor]}];
    
    //分栏控制器
    UITabBarController *tb = [[UITabBarController alloc] init];
    //背景颜色
    tb.tabBar.barTintColor = [UIColor blackColor];
    //透明
    tb.tabBar.translucent = NO;
    
    NSArray *VC = [NSArray arrayWithObjects:navHome, navSearch, navPassage, navActivity, navPersonal, nil];
    
    tb.viewControllers = VC;
    tb.selectedIndex = 0;
    
    //全屏
    tb.modalPresentationStyle = UIModalPresentationFullScreen;
    
    [self presentViewController:tb animated:YES completion:nil];
    
  
    
    
    } else {
        self.nameTextField.text = @"";
        self.passTextField.text = @"";
        UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"账号或密码错误" message:@"" preferredStyle:UIAlertControllerStyleAlert];
        UIAlertAction *action = [UIAlertAction actionWithTitle:@"重新输入" style:UIAlertActionStyleDefault handler:nil];
        [alert addAction:action];
        [self presentViewController:alert animated:YES completion:nil];
    }
    
}

- (void)pressRegister {
    
    NSLog(@"1");
    //创建新的视图控制器
    Register *registerView = [[Register alloc] init];
    
    registerView.delegate = self;

    registerView.userName = self.name;
    registerView.userPass = self.pass;
    
    //[self.navigationController pushViewController:registerView animated:YES];
    registerView.modalPresentationStyle = UIModalPresentationFullScreen;
     [self presentViewController:registerView animated:YES completion:nil];
    
}

- (void)passContent:(NSString *)userName andPass:(NSString *)userPass {
    //self.nameTextField.text = userName;
    //self.passTextField.text = userPass;
    self.name = userName;
    self.pass = userPass;
}


-(void)check:(UIButton *)zdBtn
{
    zdBtn.selected = !zdBtn.selected;
}

// 键盘出现 视图上移事件
- (void)keyboardWillDisAppear:(NSNotification *)notification{
    [UIView animateWithDuration:1 animations:^{self.view.transform = CGAffineTransformMakeTranslation(0, 0);}];
}

- (void)keyboardWillAppear:(NSNotification *)notification{

    [UIView animateWithDuration:1.0 animations:^{self.view.transform = CGAffineTransformMakeTranslation(0, - 40);}];
}

//点击空白处，收回键盘
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event
{
    [self.view endEditing:YES];
}


@end
