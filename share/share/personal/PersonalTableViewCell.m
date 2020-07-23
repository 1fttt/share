//
//  PersonalTableViewCell.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "PersonalTableViewCell.h"

@implementation PersonalTableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle: style reuseIdentifier: reuseIdentifier];
    if([self.reuseIdentifier isEqualToString:@"ft"]) {
        
        //view
        self.photoView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.photoView];
        
        self.zanView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.zanView];
        
        self.eyeView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.eyeView];
        
        self.shareView = [[UIImageView alloc] init];
        [self.contentView addSubview:self.shareView];
        
        //label
        
        self.nameLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.nameLabel];
        
        self.contentLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.contentLabel];
        
        self.Label1 = [[UILabel alloc] init];
        [self.contentView addSubview:self.Label1];
        
        self.zanLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.zanLabel];
        
        self.eyeLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.eyeLabel];
        
        self.shareLabel = [[UILabel alloc] init];
        [self.contentView addSubview:self.shareLabel];
        
    }
    
    return self;
    
}

// 布局
- (void)layoutSubviews {
    
    self.photoView.frame = CGRectMake(20, 20, 100, 100);
    self.zanView.frame = CGRectMake(150, 112, 17, 15);
    self.eyeView.frame = CGRectMake(216, 112, 17, 15);
    self.shareView.frame = CGRectMake(282, 112, 20, 15);
    
    self.nameLabel.frame = CGRectMake(150, 27, 100, 30);
    self.contentLabel.frame = CGRectMake(150, 55, 200, 30);
    self.Label1.frame = CGRectMake(150, 79, 250, 30);
    
    self.zanLabel.frame = CGRectMake(171, 111, 230, 20);
    self.eyeLabel.frame = CGRectMake(237, 111, 230, 20);
    self.shareLabel.frame = CGRectMake(304, 111, 230, 20);
    
    
    
}





@end
