//
//  SearchViewController.m
//  share
//
//  Created by 房彤 on 2020/7/21.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SearchViewController.h"
#import "SubSearchViewController.h"
#import "PutPhotoViewController.h"

@interface SearchViewController ()

@end

@implementation SearchViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //分栏图片
    self.navigationItem.title = @"搜索";
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] init];
    tabBarItem.image = [[UIImage imageNamed:@"search1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:@"search2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
     self.tabBarItem = tabBarItem;
    
    //右上角 上传
    UIBarButtonItem *putBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"put.png"] style:UIBarButtonItemStylePlain target:self action:@selector(pressPut)];
    [putBtn setTintColor:[UIColor whiteColor]];
    self.navigationItem.rightBarButtonItem = putBtn;
    
    //搜索框
    UISearchBar *searchBar = [[UISearchBar alloc] initWithFrame:CGRectMake(0, 100, 414, 35)];
    searchBar.placeholder = @"请输入用户名、作品分类、文章";
    searchBar.barStyle = UIBarStyleDefault;
    searchBar.searchBarStyle = UISearchBarStyleMinimal;  //背景透明
    searchBar.delegate = self;
       
    [self.view addSubview:searchBar];
    
    
    
    //标签
    UIImage *biaoqian = [UIImage imageNamed:@"biaoqian.png"];
    
    UILabel *fenlei = [[UILabel alloc] initWithFrame:CGRectMake(15, 156, 60, 29)];
    fenlei.text = @"       分类";
    fenlei.textColor = [UIColor whiteColor];
    fenlei.backgroundColor = [UIColor colorWithRed:0.0 green:0.36 blue:0.7 alpha:1.0];
    fenlei.font = [UIFont systemFontOfSize:15];
    UIImageView *biaoqian1 = [[UIImageView alloc] initWithImage:biaoqian];
    biaoqian1.frame = CGRectMake(18, 160, 20, 20);
    
    UILabel *tuijian = [[UILabel alloc] initWithFrame:CGRectMake(15, 280, 60, 29)];
    tuijian.text = @"       推荐";
    tuijian.textColor = [UIColor whiteColor];
    tuijian.backgroundColor = [UIColor colorWithRed:0.0 green:0.36 blue:0.7 alpha:1.0];
    tuijian.font = [UIFont systemFontOfSize:15];
    UIImageView *biaoqian2 = [[UIImageView alloc] initWithImage:biaoqian];
    biaoqian2.frame = CGRectMake(18, 284, 20, 20);
    
    UILabel *shijian = [[UILabel alloc] initWithFrame:CGRectMake(15, 365, 60, 29)];
    shijian.text = @"       时间";
    shijian.textColor = [UIColor whiteColor];
    shijian.backgroundColor = [UIColor colorWithRed:0.0 green:0.36 blue:0.7 alpha:1.0];
    shijian.font = [UIFont systemFontOfSize:15];
    UIImageView *biaoqian3 = [[UIImageView alloc] initWithImage:biaoqian];
    biaoqian3.frame = CGRectMake(18, 369, 20, 20);
    
    [self.view addSubview:fenlei];
    [self.view addSubview:tuijian];
    [self.view addSubview:shijian];
    [self.view addSubview:biaoqian1];
    [self.view addSubview:biaoqian2];
    [self.view addSubview:biaoqian3];
    
    //分界线
    UIImage *line = [UIImage imageNamed:@"line.png"];
    UIImageView *line1 = [[UIImageView alloc] initWithImage:line];
    line1.frame = CGRectMake(15, 184, 399, 1);
    [self.view addSubview:line1];
    
    UIImageView *line2 = [[UIImageView alloc] initWithImage:line];
    line2.frame = CGRectMake(15, 308, 399, 1);
    [self.view addSubview:line2];
   
    UIImageView *line3 = [[UIImageView alloc] initWithImage:line];
    line3.frame = CGRectMake(15, 393, 399, 1);
    [self.view addSubview:line3];
    
    
    
    //button
    UIButton *pingmian = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pingmian.frame = CGRectMake(25, 200, 70, 26);
    [pingmian setTitle:@"平面设计" forState:UIControlStateNormal];
    [pingmian addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    pingmian.tintColor = [UIColor blackColor];
    pingmian.backgroundColor = [UIColor whiteColor];
    pingmian.layer.cornerRadius = 10;
    
    UIButton *wangye = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    wangye.frame = CGRectMake(123, 200, 70, 26);
    [wangye setTitle:@"网页设计" forState:UIControlStateNormal];
    [wangye addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    wangye.tintColor = [UIColor blackColor];
    wangye.backgroundColor = [UIColor whiteColor];
    wangye.layer.cornerRadius = 10;
    
    UIButton *icon = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    icon.frame = CGRectMake(221, 200, 70, 26);
    [icon setTitle:@"UI/icon" forState:UIControlStateNormal];
    [icon addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    icon.tintColor = [UIColor blackColor];
    icon.backgroundColor = [UIColor whiteColor];
    icon.layer.cornerRadius = 10;
    
    UIButton *shouhui = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    shouhui.frame = CGRectMake(319, 200, 70, 26);
    [shouhui setTitle:@"插画/手绘" forState:UIControlStateNormal];
    [shouhui addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    shouhui.tintColor = [UIColor blackColor];
    shouhui.backgroundColor = [UIColor whiteColor];
    shouhui.layer.cornerRadius = 10;
    
    UIButton *xuni = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    xuni.frame = CGRectMake(25, 240, 80, 26);
    [xuni setTitle:@"虚拟与设计" forState:UIControlStateNormal];
    [xuni addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    xuni.tintColor = [UIColor blackColor];
    xuni.backgroundColor = [UIColor whiteColor];
    xuni.layer.cornerRadius = 10;
    
    UIButton *yingshi = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    yingshi.frame = CGRectMake(123, 240, 70, 26);
    [yingshi setTitle:@"影视" forState:UIControlStateNormal];
    [yingshi addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    yingshi.tintColor = [UIColor blackColor];
    yingshi.backgroundColor = [UIColor whiteColor];
    yingshi.layer.cornerRadius = 10;
    
    UIButton *sheying = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    sheying.frame = CGRectMake(221, 240, 70, 26);
    [sheying setTitle:@"摄影" forState:UIControlStateNormal];
    [sheying addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    sheying.tintColor = [UIColor blackColor];
    sheying.backgroundColor = [UIColor whiteColor];
    sheying.layer.cornerRadius = 10;
    
    UIButton *qita = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    qita.frame = CGRectMake(319, 240, 70, 26);
    [qita setTitle:@"其他" forState:UIControlStateNormal];
    [qita addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    qita.tintColor = [UIColor blackColor];
    qita.backgroundColor = [UIColor whiteColor];
    qita.layer.cornerRadius = 10;
    
    //---------
    UIButton * renqi = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     renqi.frame = CGRectMake(25, 324, 70, 26);
    [renqi setTitle:@"人气最高" forState:UIControlStateNormal];
    [renqi addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    renqi.tintColor = [UIColor blackColor];
    renqi.backgroundColor = [UIColor whiteColor];
    renqi.layer.cornerRadius = 10;
    
    UIButton * shoucang = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     shoucang.frame = CGRectMake(123, 324, 70, 26);
    [shoucang setTitle:@"收藏最多" forState:UIControlStateNormal];
    [shoucang addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    shoucang.tintColor = [UIColor blackColor];
    shoucang.backgroundColor = [UIColor whiteColor];
    shoucang.layer.cornerRadius = 10;
    
    UIButton * pinglun = [UIButton buttonWithType:UIButtonTypeRoundedRect];
    pinglun.frame = CGRectMake(221, 324, 70, 26);
    [pinglun setTitle:@"评论最多" forState:UIControlStateNormal];
    [pinglun addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    pinglun.tintColor = [UIColor blackColor];
    pinglun.backgroundColor = [UIColor whiteColor];
    pinglun.layer.cornerRadius = 10;
    
    UIButton * bianji = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     bianji.frame = CGRectMake(319, 324, 70, 26);
    [bianji setTitle:@"编辑精选" forState:UIControlStateNormal];
    [bianji addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    bianji.tintColor = [UIColor blackColor];
    bianji.backgroundColor = [UIColor whiteColor];
    bianji.layer.cornerRadius = 10;
    
    UIButton *  btn1= [UIButton buttonWithType:UIButtonTypeRoundedRect];
     btn1.frame = CGRectMake(25, 409, 70, 26);
    [btn1 setTitle:@"30分钟前" forState:UIControlStateNormal];
    [btn1 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    btn1.tintColor = [UIColor blackColor];
    btn1.backgroundColor = [UIColor whiteColor];
    btn1.layer.cornerRadius = 10;
    
    UIButton *  btn2= [UIButton buttonWithType:UIButtonTypeRoundedRect];
     btn2.frame = CGRectMake(123, 409, 70, 26);
    [btn2 setTitle:@"1小时前" forState:UIControlStateNormal];
    [btn2 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    btn2.tintColor = [UIColor blackColor];
    btn2.backgroundColor = [UIColor whiteColor];
    btn2.layer.cornerRadius = 10;
    
    UIButton *  btn3= [UIButton buttonWithType:UIButtonTypeRoundedRect];
     btn3.frame = CGRectMake(221, 409, 70, 26);
    [btn3 setTitle:@"1月前" forState:UIControlStateNormal];
    [btn3 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    btn3.tintColor = [UIColor blackColor];
    btn3.backgroundColor = [UIColor whiteColor];
    btn3.layer.cornerRadius = 10;
    
    UIButton * btn4 = [UIButton buttonWithType:UIButtonTypeRoundedRect];
     btn4.frame = CGRectMake(319, 409, 70, 26);
    [btn4 setTitle:@"1年前" forState:UIControlStateNormal];
    [btn4 addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
    btn4.tintColor = [UIColor blackColor];
    btn4.backgroundColor = [UIColor whiteColor];
    btn4.layer.cornerRadius = 10;
    
    
    [self.view addSubview:pingmian];
    [self.view addSubview:wangye];
    [self.view addSubview:icon];
    [self.view addSubview:shouhui];
    [self.view addSubview:xuni];
    [self.view addSubview:yingshi];
    [self.view addSubview:sheying];
    [self.view addSubview:qita];
    [self.view addSubview:renqi];
    [self.view addSubview:shoucang];
    [self.view addSubview:pinglun];
    [self.view addSubview:bianji];
    [self.view addSubview:btn1];
    [self.view addSubview:btn2];
    [self.view addSubview:btn3];
    [self.view addSubview:btn4];
    
    


    
}
/*
- (BOOL)searchBarShouldEndEditing:(UISearchBar *)searchBar {
    return NO;
}
*/

//searchBar收键盘
- (void)touchesBegan:(NSSet *)touches withEvent:(UIEvent *)event{
    UITouch *touch = [touches anyObject];
    // 计算搜索框范围 范围内不执行方法 之外执行键盘回收
    CGPoint touchPoint = [touch locationInView:self.view];
    if (touchPoint.x > 50 && touchPoint.x < self.view.frame.size.width - 100 && touchPoint.y > 10 && touchPoint.y < 40) {
        NSLog(@"x = %f, y = %f", touchPoint.x, touchPoint.y);
    } else {
        [self.view endEditing:YES];
    }
}

/*
-(void)searchBarSearchButtonClicked:(UISearchBar *)searchBar{
    [ resignFirstResponder];//放弃第一响应者对象，关闭虚拟键盘
 }

*/
// 点击键盘上的search按钮
- (void)searchBarSearchButtonClicked:(UISearchBar *)searchBar {
    SubSearchViewController *ssVc = [[SubSearchViewController alloc] init];
    [self.navigationController pushViewController:ssVc animated:YES];
    
}
-(void) pressSelect:(UIButton *)btn {
    btn.tintColor = [UIColor whiteColor];
    btn.backgroundColor = [UIColor colorWithRed:0.05 green:0.4 blue:0.74 alpha:1.0];
    [btn addTarget:self action:@selector(pressUnselect:) forControlEvents:UIControlEventTouchUpInside];
}

- (void)pressUnselect:(UIButton *)btn {
    btn.tintColor = [UIColor blackColor];
    btn.backgroundColor = [UIColor whiteColor];
    [btn addTarget:self action:@selector(pressSelect:) forControlEvents:UIControlEventTouchUpInside];
}


- (void)pressPut {
    PutPhotoViewController *photoVC = [[PutPhotoViewController alloc] init];
    [self.navigationController pushViewController:photoVC animated:YES];
}


/*
- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    [self.textField resignFirstResponder];
}

*/
@end
