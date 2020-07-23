//
//  Sub1TableViewCell.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "Sub1TableViewCell.h"

@implementation Sub1TableViewCell


- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle: style reuseIdentifier:reuseIdentifier] ;
    if([self.reuseIdentifier isEqualToString: @"ft"]) {
        self.head = [[UIImageView alloc] initWithImage:[UIImage imageNamed:@""]];
        [self.contentView addSubview:self.head];
        
        self.name = [[UILabel alloc] init];
        [self.contentView addSubview:self.name];
        
        self.btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [self.contentView addSubview:self.btn];
        
    }
    return self;
    
}

- (void)layoutSubviews {
    self.head.frame = CGRectMake(10, 10, 60, 60);
    self.name.frame = CGRectMake(85, 20, 100, 40);
    self.name.font = [UIFont systemFontOfSize:17];
    self.btn.frame = CGRectMake(290, 25, 65, 29);
}

@end
