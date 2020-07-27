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
#import "ScrollTableViewCell.h"

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
    [self.tableView registerClass:[ScrollTableViewCell class] forCellReuseIdentifier:@"ff"];
    
    [self.view addSubview:self.tableView];
    

/*
    self.scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 155)];
    self.scroll.pagingEnabled = YES;
    for( int i = 1; i <= 5; i++) {
        NSString *name;
        if(i == 5) {
            name = @"imag1.jpg";
        } else {
            name = [NSString stringWithFormat:@"imag%d.jpg", i];
        }
        UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(i * self.view.frame.size.width, 0, self.view.frame.size.width, 168)];
        image.image = [UIImage imageNamed:name];
        [self.scroll addSubview:image];
    }
    
    self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 20, 120, 50, 50)];
    self.pageControl.numberOfPages = 4;
    self.pageControl.currentPage = 0;
    self.pageControl.pageIndicatorTintColor = [UIColor grayColor];
    self.pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
    
     
     
    [self.tableView addSubview:self.scroll];
    [self.tableView addSubview:self.pageControl];
    
    
    */
    
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
        return 200;
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

//单元格内容
- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
  //  UITableViewCell *cell0 = [[UITableViewCell alloc] init];
    
  //  HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
    
    
    if(indexPath.section == 0) {
        ScrollTableViewCell *cell1 = [tableView dequeueReusableCellWithIdentifier:@"ff" forIndexPath:indexPath];
        return cell1;
    }
    
    /*
    if(indexPath.section == 0) {
        self.scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, 155)];
        self.scroll.pagingEnabled = YES;
        for( int i = 1; i <= 5; i++) {
            NSString *name;
            if(i == 5) {
                name = @"imag1.jpg";
            } else {
                name = [NSString stringWithFormat:@"imag%d.jpg", i];
            }
            UIImageView *image = [[UIImageView alloc] initWithFrame:CGRectMake(i * self.view.frame.size.width, 0, self.view.frame.size.width, 168)];
            image.image = [UIImage imageNamed:name];
            [self.scroll addSubview:image];
        }
        
        self.pageControl = [[UIPageControl alloc] initWithFrame:CGRectMake(self.view.frame.size.width/2 - 20, 120, 50, 50)];
        self.pageControl.numberOfPages = 4;
        self.pageControl.currentPage = 0;
        self.pageControl.pageIndicatorTintColor = [UIColor grayColor];
        self.pageControl.currentPageIndicatorTintColor = [UIColor orangeColor];
        
         
         
        [self.tableView addSubview:self.scroll];
        [self.tableView addSubview:self.pageControl];
    }
    
     
     */
    
   if(indexPath.section == 1) {
     HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
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

        HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
       
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
       
        HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
       
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
   } else
       //(indexPath.section == 4);
   {
       
        HomeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
       
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

 
/*
- (void)viewDidAppear:(BOOL)animated {
    [self setUpLink];
}

- (void)setUpLink {
    self.link = [CADisplayLink displayLinkWithTarget:self selector:@selector(slideImage)];
}

- (void)slideImage {
    int page = self.scroll.contentOffset.x / self.view.frame.size.width;
    if(page == 5) {
        self.scroll.contentOffset = CGPointMake(self.view.frame.size.width, 0);
        [self.scroll setContentOffset:CGPointMake(self.view.frame.size.width * 2, 0) animated:YES];
        
    } else {
        [self.scroll setContentOffset:CGPointMake((page + 1) * self.view.frame.size.width, 0) animated:YES];
    }
    if(page == 4) {
        self.pageControl.currentPage = 0;
    } else if(page == 5) {
        self.pageControl.currentPage = 1;
    } else {
        self.pageControl.currentPage = page;
    }
}
 
 */



@end
