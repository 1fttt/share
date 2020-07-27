//
//  ScrollTableViewCell.h
//  share
//
//  Created by 房彤 on 2020/7/25.
//  Copyright © 2020 房彤. All rights reserved.
//



#import <UIKit/UIKit.h>



@interface ScrollTableViewCell : UITableViewCell
<
UIScrollViewDelegate
>

@property (nonatomic, strong) UIScrollView *scrollView;
@property (nonatomic, retain) UIPageControl *pageControl;
@property (nonatomic, strong) NSTimer *timer;

- (void)addTimerTask;
- (void)nextImage;
- (void)scrollViewDidScroll:(UIScrollView *)scrollView;
- (void)scrollViewWillBeginDragging:(UIScrollView *)scrollView;
- (void)scrollViewDidEndDragging:(UIScrollView *)scrollView willDecelerate:(BOOL)decelerate;

@end
