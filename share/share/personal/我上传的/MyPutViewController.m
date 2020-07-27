//
//  MyPutViewController.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "MyPutViewController.h"
#import "MyPutTableViewCell.h"
@interface MyPutViewController ()


@end

@implementation MyPutViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    //返回
    UIBarButtonItem *leftBtn = [[UIBarButtonItem alloc] initWithImage:[UIImage imageNamed:@"back.png" ] style:UIBarButtonItemStylePlain target:self action:@selector(pressBack)];
    
    self.navigationItem.leftBarButtonItem = leftBtn;
    self.navigationController.navigationBar.tintColor = [UIColor whiteColor];
    
    
    
    //分段控制器
    NSArray *arr = @[@"上传时间", @"推荐最多", @"分享最多"];
    self.seg = [[UISegmentedControl alloc] initWithItems:arr];
    self.seg.frame = CGRectMake(0, 88, 414, 40);
    [self.seg addTarget:self action:@selector(roll:) forControlEvents:UIControlEventValueChanged];
    self.seg.selectedSegmentIndex = 0;
    self.seg.backgroundColor = [UIColor whiteColor];
    [self.view addSubview:self.seg];
    
    //滚动视图
    self.scroll = [[UIScrollView alloc] initWithFrame:CGRectMake(0, 128, self.view.frame.size.width, self.view.frame.size.height - 128)];
    self.scroll.bounces = NO;
    self.scroll.contentSize = CGSizeMake(414 * 3, self.view.frame.size.height - 128);
    self.scroll.pagingEnabled = YES;
    self.scroll.delegate = self;
    [self.view addSubview:self.scroll];
    
    //tableView
    self.tableView1 = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, 414, 768) style:UITableViewStylePlain];
    self.tableView2 = [[UITableView alloc] initWithFrame:CGRectMake(414, 0, 414, 768) style:UITableViewStylePlain];
    self.tableView3 = [[UITableView alloc] initWithFrame:CGRectMake(828, 0, 414, 768) style:UITableViewStylePlain];
    
    self.tableView1.delegate = self;
    self.tableView2.delegate = self;
    self.tableView3.delegate = self;
    self.tableView1.dataSource = self;
    self.tableView2.dataSource = self;
    self.tableView3.dataSource = self;
    
    self.tableView1.tag = 1;
    self.tableView2.tag = 2;
    self.tableView3.tag = 3;
    
    [self.tableView1 registerClass:[MyPutTableViewCell class] forCellReuseIdentifier:@"ft"];
    [self.tableView2 registerClass:[MyPutTableViewCell class] forCellReuseIdentifier:@"ft"];
    [self.tableView3 registerClass:[MyPutTableViewCell class] forCellReuseIdentifier:@"ft"];
      
    [self.scroll addSubview:self.tableView1];
    [self.scroll addSubview:self.tableView2];
    [self.scroll addSubview:self.tableView3];
    
    
    
    
    
}


- (void)pressBack {
    [self.navigationController popViewControllerAnimated:YES];
}

-(void)roll:(UISegmentedControl *)seg {
    if(seg.selectedSegmentIndex == 0) {
        self.scroll.contentOffset = CGPointMake(0, 0);
    } else if(seg.selectedSegmentIndex == 1) {
        self.scroll.contentOffset = CGPointMake(414, 0);
    } else if(seg.selectedSegmentIndex == 2) {
        self.scroll.contentOffset = CGPointMake(828, 0);
    }
}


- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView {
    return 1;
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section {
    return 5;
}

-(CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath {
    return 140;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath {
   MyPutTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"ft" forIndexPath:indexPath];
    if(tableView.tag == 1) {
        NSArray *photo = @[@"tj.jpg", @"tj2.jpg", @"tj3.jpg", @"tj4.jpg", @"tj00.jpg"];
        NSArray *title = @[@"理想", @"攒一口袋星星", @"星坠", @"山川皆无恙", @"天空"];
        NSArray *name = @[@"share小房", @"share小房", @"share小房", @"share小房" ,@"share小房"];
        NSArray *content = @[@"喜欢我就眨一下眼睛", @"满怀希望，就能所向披靡", @"玛卡巴卡", @"依古比古", @"哈呼呼"];
        NSArray *time = @[@"1分钟前", @"3分钟前", @"9分钟前", @"18分钟前", @"1小时前"];
        NSArray *zan = @[@"34", @"23", @"22", @"98", @"23"];
        NSArray *eye = @[@"33", @"44", @"23", @"97", @"45"];
        NSArray *share = @[@"67", @"33", @"34", @"13", @"78"];
        
        cell.photoView.image = [UIImage imageNamed:photo[indexPath.row]];
        cell.titleLabel.text = title[indexPath.row];
        cell.nameLabel.text = name[indexPath.row];
        cell.contentLabel.text = content[indexPath.row];
        cell.timeLabel.text = time[indexPath.row];
        cell.zanLabel.text = zan[indexPath.row];
        cell.eyeLabel.text = eye[indexPath.row];
        cell.shareLabel.text = share[indexPath.row];
    }
    if(tableView.tag == 2) {
           NSArray *photo = @[@"tj01.jpg", @"tj02.jpg", @"tj03.jpg", @"tj04.jpg", @"tj2.jpg"];
           NSArray *title = @[@"月亮小饼干", @"星星迷上山野", @"远处的云朵", @"春风过境", @"攒一口袋星星"];
           NSArray *name = @[@"share小刘", @"share小房", @"share小白", @"share小小", @"share小房"];
           NSArray *content = @[@"满船清梦压星河", @"凡心所向，素履所往", @"生如逆旅，一苇以航", @"西北望长安", @"满怀希望就能所向披靡"];
           NSArray *time = @[@"5分钟前", @"9分钟前", @"22分钟前", @"1小时前", @"2小时前"];
           NSArray *zan = @[@"34", @"32", @"33", @"56", @"45"];
           NSArray *eye = @[@"33", @"67", @"43", @"23", @"33"];
           NSArray *share = @[@"67", @"33", @"43", @"23", @"67"];
           
           cell.photoView.image = [UIImage imageNamed:photo[indexPath.row]];
           cell.titleLabel.text = title[indexPath.row];
           cell.nameLabel.text = name[indexPath.row];
           cell.contentLabel.text = content[indexPath.row];
           cell.timeLabel.text = time[indexPath.row];
           cell.zanLabel.text = zan[indexPath.row];
           cell.eyeLabel.text = eye[indexPath.row];
           cell.shareLabel.text = share[indexPath.row];
       }
    if(tableView.tag == 3) {
           NSArray *photo = @[@"tj11.jpg", @"tj22.jpg", @"tj00.jpg", @"tj44.jpg", @"tj3.jpg"];
           NSArray *title = @[@"人间一趟", @"积极向上", @"不畏将来", @"不念过往", @"百事可乐"];
           NSArray *name = @[@"share小房", @"share小房", @"share小房", @"share小房", @"share小房"];
           NSArray *content = @[@"一起去更远的地方", @"今天的事今天翻篇", @"明天你还要忙着可爱", @"太阳温暖早起的人", @"好喝"];
           NSArray *time = @[@"12分钟前", @"32分钟前", @"56分钟前", @"2小时前", @"4小时前"];
           NSArray *zan = @[@"34", @"44", @"32", @"87", @"66"];
           NSArray *eye = @[@"33", @"22", @"44", @"21", @"88"];
           NSArray *share = @[@"67", @"33", @"56", @"34", @"43"];
           
           cell.photoView.image = [UIImage imageNamed:photo[indexPath.row]];
           cell.titleLabel.text = title[indexPath.row];
           cell.nameLabel.text = name[indexPath.row];
           cell.contentLabel.text = content[indexPath.row];
           cell.timeLabel.text = time[indexPath.row];
           cell.zanLabel.text = zan[indexPath.row];
           cell.eyeLabel.text = eye[indexPath.row];
           cell.shareLabel.text = share[indexPath.row];
       }
 
        
    return cell;
        
}


//滚动时就会执行该方法
- (void)scrollViewDidScroll:(UIScrollView *)scrollView {
    if(self.scroll.contentOffset.x == 0) {
        self.seg.selectedSegmentIndex = 0;
    } else if(self.scroll.contentOffset.x == 414) {
        self.seg.selectedSegmentIndex = 1;
    } else if(self.scroll.contentOffset.x == 828) {
        self.seg.selectedSegmentIndex = 2;
    }
}


@end
