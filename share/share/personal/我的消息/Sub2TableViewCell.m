//
//  Sub2TableViewCell.m
//  share
//
//  Created by 房彤 on 2020/7/27.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Sub2TableViewCell.h"

@implementation Sub2TableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    
    if([self.reuseIdentifier isEqualToString:@"ft"]) {
        self.head = [[UIImageView alloc] init];
        [self.contentView addSubview:self.head];
    
        self.name = [[UILabel alloc] init];
        [self.contentView addSubview:self.name];
    
        self.sub = [[UILabel alloc] init];
        [self.contentView addSubview:self.sub];
    
        self.time = [[UILabel alloc] init];
        [self.contentView addSubview:self.time];
    }
        return self;
    
}

- (void)layoutSubviews {
    self.head.frame = CGRectMake(18, 10, 55, 55);
    self.name.frame = CGRectMake(85, 12, 120, 27);
    self.name.font = [UIFont systemFontOfSize:18];
    self.sub.frame = CGRectMake(85, 43, 200, 24);
    self.sub.font = [UIFont systemFontOfSize:14];
    self.sub.textColor = [UIColor colorWithRed:0.1 green:0.45 blue:0.87 alpha:1];
    self.time.frame = CGRectMake(330, 12, 115, 15);
    self.time.font = [UIFont systemFontOfSize:12];
    self.time.textColor = [UIColor grayColor];
    
    

}


@end
