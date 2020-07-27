//
//  SubTableViewCell.m
//  share
//
//  Created by 房彤 on 2020/7/24.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SubTableViewCell.h"

@implementation SubTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if([self.reuseIdentifier isEqualToString:@"基本资料-头像"]) {
        self.head = [[UIImageView alloc] init];
        self.touxiang = [[UILabel alloc] init];
        [self.contentView addSubview:self.head];
        [self.contentView addSubview:self.touxiang];
        
    } else if([self.reuseIdentifier isEqualToString:@"基本资料-性别"]) {
        self.sex = [[UILabel alloc] init];
        self.boyLabel = [[UILabel alloc] init];
        self.girlLabel = [[UILabel alloc] init];
        self.x = YES;
       // self.boy = [[UIImageView alloc] init];
       // self.girl = [[UIImageView alloc] init];
        self.boy = [UIButton buttonWithType:UIButtonTypeCustom];
        self.girl = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.boy setImage:[UIImage imageNamed:@"sex1.png"] forState:UIControlStateNormal];
        [self.girl setImage:[UIImage imageNamed:@"sex2.png"] forState:UIControlStateNormal];
        
        [self.boy addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
        [self.girl addTarget:self action:@selector(press) forControlEvents:UIControlEventTouchUpInside];
        
        [self.contentView addSubview:self.sex];
        [self.contentView addSubview:self.boyLabel];
        [self.contentView addSubview:self.girlLabel];
        [self.contentView addSubview:self.boy];
        [self.contentView addSubview:self.girl];
        
    } else if ([self.reuseIdentifier isEqualToString:@"基本资料-其他"]) {
        self.label = [[UILabel alloc] init];
        self.contentLabel = [[UILabel alloc] init];
        
        [self.contentView addSubview:self.label];
        [self.contentView addSubview:self.contentLabel];
    } else if ([self.reuseIdentifier isEqualToString:@"修改密码"]) {
        self.mima = [[UILabel alloc] init];
        self.textField = [[UITextField alloc] init];
        
        [self.contentView addSubview:self.mima];
        [self.contentView addSubview:self.textField];
        
    } else if([self.reuseIdentifier isEqualToString:@"消息设置"]) {
        self.str = [[UILabel alloc] init];
        self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
        
        [self.contentView addSubview:self.str];
        [self.contentView addSubview:self.btn];
    }
    return self;
}



- (void)layoutSubviews {
    //基本资料
    //头像
    self.touxiang.frame = CGRectMake(30, 35, 40, 30);
    self.head.frame = CGRectMake(90, 20, 50, 50);
    
    //性别
    self.sex.frame = CGRectMake(30, 15, 40, 30);
    self.boy.frame = CGRectMake(94, 21, 19, 19);
    self.girl.frame = CGRectMake(140, 21, 19, 19);
    self.boyLabel.frame = CGRectMake(115, 20, 20, 20);
    self.girlLabel.frame = CGRectMake(160, 20, 20, 20);
    
    self.label.frame = CGRectMake(30, 15, 40, 30);
    self.contentLabel.frame = CGRectMake(90, 15, 200, 30);
    
    //修改密码
    self.mima.frame = CGRectMake(30, 15, 70, 30);
    self.textField.frame = CGRectMake(150, 15, 100, 30);
    
    //消息设置
    self.str.frame = CGRectMake(30, 15, 200, 30);
    self.btn.frame = CGRectMake(310, 17, 17, 17);
    
}

- (void)press {
    if(self.x == YES) {
        [self.boy setImage:[UIImage imageNamed:@"sex2.png"] forState:UIControlStateNormal];
        [self.girl setImage:[UIImage imageNamed:@"sex1.png"] forState:UIControlStateNormal];
        self.x = NO;
    } else {
        [self.boy setImage:[UIImage imageNamed:@"sex1.png"] forState:UIControlStateNormal];
         [self.girl setImage:[UIImage imageNamed:@"sex2.png"] forState:UIControlStateNormal];
        self.x = YES;
    }
}

@end
