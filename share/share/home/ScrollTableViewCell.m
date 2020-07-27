//
//  ScrollTableViewCell.m
//  share
//
//  Created by 房彤 on 2020/7/25.
//  Copyright © 2020 房彤. All rights reserved.
//



#import "ScrollTableViewCell.h"

@implementation ScrollTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)setSelected:(BOOL)selected animated:(BOOL)animated {
    [super setSelected:selected animated:animated];

    // Configure the view for the selected state
}

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    self.scrollView = [[UIScrollView alloc] init];
    [self.contentView addSubview:_scrollView];
    
    self.pageControl = [[UIPageControl alloc] init];
    [self.contentView addSubview:_pageControl];
    
    self.timer = [[NSTimer alloc] init];
    
    for (int i = 0; i < 4; i++) {
        //创建初始化Imageview
        UIImageView *imageView = [[UIImageView alloc]init];
        //设置frame
        imageView.frame = CGRectMake(414 * i, 0, 414, 200);
        //设置显示 图片
        
        imageView.image = [UIImage imageNamed:[NSString stringWithFormat:@"imag%d.jpg", i + 1]];
  
        [self.scrollView addSubview:imageView];
    }
     [self addTimerTask];
    return self;
    
}

- (void)layoutSubviews {
    
    [super layoutSubviews];
    
    self.scrollView.frame = CGRectMake(0, 0, 414, 200);
    self.pageControl.frame = CGRectMake(160, 187, 100, 10) ;
    

    self.scrollView.contentSize = CGSizeMake(4 * 414, 200);
    self.scrollView.bounces = NO;
    self.scrollView.scrollEnabled = YES;

    self.scrollView.pagingEnabled = YES;
    self.scrollView.showsHorizontalScrollIndicator = NO;

    
    self.pageControl.numberOfPages = 4;
    self.pageControl.currentPageIndicatorTintColor = [UIColor whiteColor];
    self.pageControl.pageIndicatorTintColor = [UIColor blackColor];
    self.pageControl.currentPage = 0;
    

    self.scrollView.delegate = self;
    

   
}

- (void)addTimerTask{
    self.timer = [NSTimer timerWithTimeInterval:3.0 target:self selector:@selector(nextImage) userInfo:nil repeats:YES];
    
    //消息循环
    NSRunLoop *runloop = [NSRunLoop currentRunLoop];

    [runloop addTimer:_timer forMode:NSDefaultRunLoopMode];
    
    [self.timer fire];
}

- (void)nextImage {
    NSInteger page = self.pageControl.currentPage;
    //如果是最后一张
    if (page == self.pageControl.numberOfPages - 1) {
        page = 0;
        //设置偏移量  当到达最后一张时候 切换到第一张
        self.scrollView.contentOffset = CGPointMake(0, 0);
        [self.scrollView setContentOffset:self.scrollView.contentOffset animated:YES];
    }else{
        page ++;
    }
    CGFloat offsetX = page * [UIScreen mainScreen].bounds.size.width;
    [UIView animateWithDuration:1.0 animations:^{
        self.scrollView.contentOffset = CGPointMake(offsetX, 0);
    }];
}

//正在滚动的时候
- (void)scrollViewDidScroll:(UIScrollView *)scrollView{
    
    if (_scrollView.contentOffset.x == 0) {
        _pageControl.currentPage = 0;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width) {
        _pageControl.currentPage = 1;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 2)  {
        _pageControl.currentPage = 2;
    }
    if (_scrollView.contentOffset.x == [UIScreen mainScreen].bounds.size.width * 3)  {
        _pageControl.currentPage = 3;
    }
    
}



@end

