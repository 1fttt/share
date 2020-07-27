//
//  PassageViewController.m
//  share
//
//  Created by 房彤 on 2020/7/21.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "PassageViewController.h"
#import "PassgeTableViewCell.h"

@interface PassageViewController ()

@end

@implementation PassageViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    self.navigationItem.title = @"文章";
    //分栏图片
    UITabBarItem *tabBarItem = [[UITabBarItem alloc] init];
    tabBarItem.image = [[UIImage imageNamed:@"passage1.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    tabBarItem.selectedImage = [[UIImage imageNamed:@"passage2.png"] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
     self.tabBarItem = tabBarItem;
    
    //分段控制器
    NSArray *arr = @[@"精选文章", @"热门文章", @"全部文章"];
    self.segment = [[UISegmentedControl alloc] initWithItems:arr];
    self.segment.frame = CGRectMake(0, 88, 414, 40);
    [self.segment addTarget:self action:@selector(roll:) forControlEvents:UIControlEventValueChanged];
    [self.view addSubview:self.segment];
    self.segment.selectedSegmentIndex = 0;
    
    //滚动视图
    self.scrollView = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 128, 414, 768)];
    self.scrollView.bounces = NO;
    self.scrollView.contentSize = CGSizeMake(414 * 3, 768);
    self.scrollView.pagingEnabled = YES;
    self.scrollView.delegate = self;
    [self.view addSubview:self.scrollView];
    
    
    //tableView
    self.jxTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 768)];
    self.rmTableView = [[UITableView alloc] initWithFrame:CGRectMake(414, 0, 414, 768)];
    self.qbTableView = [[UITableView alloc] initWithFrame:CGRectMake(828, 0, 414, 768)];
    
    self.jxTableView.tag = 1;
    self.rmTableView.tag = 2;
    self.qbTableView.tag = 3;
    
    self.jxTableView.delegate = self;
    self.jxTableView.dataSource = self;
    self.rmTableView.delegate = self;
    self.rmTableView.dataSource = self;
    self.qbTableView.delegate = self;
    self.qbTableView.dataSource = self;
    
    [self.jxTableView registerClass:[PassgeTableViewCell class] forCellReuseIdentifier:@"ft"];
    [self.rmTableView registerClass:[PassgeTableViewCell class] forCellReuseIdentifier:@"ft"];
    [self.qbTableView registerClass:[PassgeTableViewCell class] forCellReuseIdentifier:@"ft"];
    
    [self.scrollView addSubview:self.jxTableView];
    [self.scrollView addSubview:self.rmTableView];
    [self.scrollView addSubview:self.qbTableView];
    
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 4;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 1;
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return  140;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
    PassgeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
    if(tableView.tag == 1) {
     //   PassgeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
          if(indexPath.section == 0) {
           
               cell.photoView.image = [UIImage imageNamed:@"tj.jpg"];
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
          }  else if (indexPath.section == 1) {

               cell.photoView.image = [UIImage imageNamed:@"tj01.jpg"];
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
          } else if(indexPath.section == 2) {
               cell.photoView.image = [UIImage imageNamed:@"tj04.jpg"];
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
          } else if(indexPath.section == 3){
               cell.photoView.image = [UIImage imageNamed:@"tj11.jpg"];
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
        
    } else if(tableView.tag == 2) {
        
        //PassgeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
          if(indexPath.section == 0) {
           
               cell.photoView.image = [UIImage imageNamed:@"tj00.jpg"];
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
          }  else if (indexPath.section == 1) {

               cell.photoView.image = [UIImage imageNamed:@"tj22.jpg"];
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
          } else if(indexPath.section == 2) {
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
          } else if(indexPath.section == 3){
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
    } else {
        
       // PassgeTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
          if(indexPath.section == 0) {
           
               cell.photoView.image = [UIImage imageNamed:@"tj03.jpg"];
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
          }  else if (indexPath.section == 1) {

               cell.photoView.image = [UIImage imageNamed:@"tj33.jpg"];
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
          } else if(indexPath.section == 2) {
               cell.photoView.image = [UIImage imageNamed:@"tj11.jpg"];
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
          } else if(indexPath.section == 3){
               cell.photoView.image = [UIImage imageNamed:@"tj03.jpg"];
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
    
    return cell;
    
}


//点击分段控制器时，滚动视图相应偏移
- (void)roll:(UISegmentedControl *)sem {
    NSInteger select = self.segment.selectedSegmentIndex;
    if(select == 0) {
        [self.scrollView setContentOffset:CGPointMake(0, 0) animated: YES];
        
    } else if(select == 1) {
        [self.scrollView setContentOffset:CGPointMake(414,0 ) animated:YES];
        
    } else {
        [self.scrollView setContentOffset:CGPointMake(828, 0) animated:YES];
    }
}


 
 
 
//滚动时就会执行该方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if(self.scrollView.contentOffset.x == 0) {
        self.segment.selectedSegmentIndex = 0;
    } else if(self.scrollView.contentOffset.x == 414) {
        self.segment.selectedSegmentIndex = 1;
    } else if(self.scrollView.contentOffset.x == 828) {
        self.segment.selectedSegmentIndex = 2;
    }
}

/*
//滚动已经完成执行该方法
- (void)scrollViewDidEndDecelerating:(UIScrollView *)scrollView {
    if(scrollView.contentOffset.x == 0) {
        self.segment.selectedSegmentIndex = 0;
    } else if(scrollView.contentOffset.x == 414) {
        self.segment.selectedSegmentIndex = 1;
    } else {
        self.segment.selectedSegmentIndex = 2;
    }
}

*/
@end
