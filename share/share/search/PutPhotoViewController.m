//
//  PutPhotoViewController.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "PutPhotoViewController.h"
#import "PhotoViewController.h"

@interface PutPhotoViewController ()

@end

@implementation PutPhotoViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //返回
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back.png" ] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
      self.view.backgroundColor = [UIColor whiteColor];
    
    
    //选择图片button
    self.up = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.up.frame = CGRectMake(15, 130, 160, 160);
    self.up.backgroundColor = [UIColor grayColor];
    self.up.tintColor = [UIColor whiteColor];
    
    [self.up setTitle:@"选择图片" forState:UIControlStateNormal];
    [self.up addTarget:self action:@selector(pressUp) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.up];
    
    //address imageView
    self.addressView = [[UIImageView alloc]init];
    [self.addressView setImage:[UIImage imageNamed:@"坐标.png"]];
    self.addressView.frame = CGRectMake(250, 160, 27, 27);
    [self.view addSubview:self.addressView];
    
    //address label
    self.address = [[UILabel alloc] initWithFrame:CGRectMake(280, 160, 110, 27)];
    self.address.text = @"陕西省，铜川市";
    self.address.backgroundColor = [UIColor colorWithRed:0.1 green:0.49 blue:0.78 alpha:1];
    self.address.textColor = [UIColor whiteColor];
    self.address.font = [UIFont systemFontOfSize:14];
    self.address.textAlignment = NSTextAlignmentCenter;
    self.address.layer.cornerRadius = 10;
    self.address.layer.masksToBounds = YES;
    [self.view addSubview:self.address];
    
    //标签
    NSArray *arr1 = @[@"平面设计", @"网页设计", @"UI/icon", @"插画/手绘"];
    NSArray *arr2 = @[@"虚拟与设计", @"影视", @"摄影", @"其他"];
    
    
    for(int i = 1; i <= 4; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        btn.frame = CGRectMake((i - 1) * 80 + i * 17, 325, 81, 27);
        btn.backgroundColor = [UIColor whiteColor];
        btn.tintColor = [UIColor blackColor];
        [btn setTitle:arr1[i - 1] forState:UIControlStateNormal];
        [btn addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
        btn.layer.cornerRadius = 8;
        btn.layer.masksToBounds = YES;
        [self.view addSubview:btn];
        
    }
    
    for(int i = 1; i <= 4; i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeRoundedRect];
        [btn setTitle:arr2[i - 1] forState:UIControlStateNormal];
        btn.frame = CGRectMake((i - 1) * 80 + i * 17, 375, 81, 27);
        btn.backgroundColor = [UIColor whiteColor];
        btn.tintColor = [UIColor blackColor];
        [btn addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
        btn.layer.cornerRadius = 8;
        btn.layer.masksToBounds = YES;
        [self.view addSubview:btn];
        
    }
    
    
    //发布 button
    self.name = [[UITextField alloc] initWithFrame:CGRectMake(5, 420, 405, 27)];
    self.name.placeholder = @"作品名称";
    self.name.font = [UIFont systemFontOfSize:16];
    [self.view addSubview:self.name];
    
    //
    self.content = [[UITextField alloc] initWithFrame:CGRectMake(5, 455, 405, 60)];
    self.content.text = @"请添加作品说明文章内容...";
    self.content.font = [UIFont systemFontOfSize:14];
    [self.view addSubview:self.content];
    
    
    self.up = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    self.up.frame = CGRectMake(10, 613, 395, 39);
    self.up.backgroundColor = [UIColor colorWithRed:0.1 green:0.49 blue:0.78 alpha:1];
    self.up.tintColor = [UIColor whiteColor];
    [self.up setTitle:@"发布" forState:UIControlStateNormal];
    [self.up addTarget:self action:@selector(pressFaBu) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.up];
    
    //ban button
    self.banLoad = [UIButton buttonWithType:UIButtonTypeCustom];
    self.banLoad.frame = CGRectMake(10, 657, 20, 20);
    [self.banLoad setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
   
    
    [self.banLoad addTarget:self action:@selector(chickBan:) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:self.banLoad];
    
    //ban label
    self.ban = [[UILabel alloc] initWithFrame:CGRectMake(32, 655, 100, 23)];
    self.ban.text = @"禁止下载";
    self.ban.backgroundColor = [UIColor whiteColor];
    self.ban.textColor = [UIColor blackColor];
    self.ban.font = [UIFont systemFontOfSize:15];
    [self.view addSubview:self.ban];
    
    
    
    
    
}


- (void)pressBack {
    [self.navigationController popViewControllerAnimated:YES];
}

- (void)pressUp {
    PhotoViewController *photo = [[PhotoViewController alloc] init];
    [self.navigationController pushViewController:photo animated:YES];
    
}

- (void)press:(UIButton *)btn {
    btn.backgroundColor = [UIColor colorWithRed:0.1 green:0.49 blue:0.78 alpha:1];
    btn.tintColor = [UIColor whiteColor];
    [btn addTarget:self action:@selector(pressed:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressed:(UIButton *)btn {
    btn.backgroundColor = [UIColor whiteColor];
    btn.tintColor = [UIColor blackColor];
    [btn addTarget:self action:@selector(press:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressFaBu {
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"发布" message:@"您已成功发布" preferredStyle:UIAlertControllerStyleAlert];
    UIAlertAction *action = [UIAlertAction actionWithTitle:@"确定" style:UIAlertActionStyleDefault handler:nil];
    [alert addAction:action];
    [self presentViewController:alert animated:YES completion:nil];
}

- (void)chickBan:(UIButton *)btn {
    [btn setImage:[UIImage imageNamed:@"check.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(chickBan1:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)chickBan1:(UIButton *)btn {
    [btn setImage:[UIImage imageNamed:@"uncheck.png"] forState:UIControlStateNormal];
    [btn addTarget:self action:@selector(chickBan:) forControlEvents:UIControlEventTouchUpInside];
}
@end
