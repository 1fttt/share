//
//  MyPutTableViewCell.m
//  share
//
//  Created by 房彤 on 2020/7/24.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "MyPutTableViewCell.h"

@implementation MyPutTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle: style reuseIdentifier: reuseIdentifier];
    //if([self.reuseIdentifier isEqualToString:@"ft1"]) {
        
        //view
        self.photoView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.photoView];
        
        self.zanView = [[UIImageView alloc] init];
        self.zanView.image = [UIImage imageNamed:@"zan.png"];
        [self.contentView addSubview:self.zanView];
        
        
        self.eyeView = [[UIImageView alloc] init];
        self.eyeView.image = [UIImage imageNamed:@"eye.png"];
        [self.contentView addSubview:self.eyeView];
        
        self.shareView = [[UIImageView alloc] init];
        self.shareView.image = [UIImage imageNamed:@"share.png"];
        [self.contentView addSubview:self.shareView];
        
        //label
        self.titleLabel = [[UILabel alloc] init];
        //self.titleLabel.font = [UIFont systemFontOfSize:20];
        [self.contentView addSubview:self.titleLabel];
        
        self.titleLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.titleLabel];
        
        self.nameLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.nameLabel];
        
        self.contentLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.contentLabel];
        
        self.timeLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.timeLabel];
        
        self.zanLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.zanLabel];
        
        self.eyeLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.eyeLabel];
        
        self.shareLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.shareLabel];
        
 //   }
    
    return self;
    
}

// 布局
- (void)layoutSubviews {
    
    self.photoView.frame = CGRectMake(0, 0, 198, 140);
    self.zanView.frame = CGRectMake(218, 112, 17, 15);
    self.eyeView.frame = CGRectMake(284, 112, 20, 15);
    self.shareView.frame = CGRectMake(350, 112, 17, 15);
    
    self.titleLabel.frame = CGRectMake(218, 13, 200, 30);
    self.nameLabel.frame = CGRectMake(218, 41, 100, 20);
    self.contentLabel.frame = CGRectMake(218, 59, 200, 30);
    self.timeLabel.frame = CGRectMake(218, 80, 100, 30);
    
    self.zanLabel.frame = CGRectMake(239, 111, 230, 20);
    self.eyeLabel.frame = CGRectMake(308, 111, 230, 20);
    self.shareLabel.frame = CGRectMake(373, 111, 230, 20);
    
    //字体大小
    self.titleLabel.font = [UIFont systemFontOfSize:18];
    self.nameLabel.font = [UIFont systemFontOfSize:16];
    self.contentLabel.font = [UIFont systemFontOfSize:13];
    self.timeLabel.font = [UIFont systemFontOfSize:13];
    self.zanLabel.font = [UIFont systemFontOfSize:13];
    self.eyeLabel.font = [UIFont systemFontOfSize:13];
    self.shareLabel.font = [UIFont systemFontOfSize:13];
    
}
@end
