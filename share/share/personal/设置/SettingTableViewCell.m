//
//  SettingTableViewCell.m
//  share
//
//  Created by 房彤 on 2020/7/23.
//  Copyright © 2020 房彤. All rights reserved.
//

#import "SettingTableViewCell.h"

@implementation SettingTableViewCell

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier {
    self = [super initWithStyle:style reuseIdentifier:reuseIdentifier];
    if([self.reuseIdentifier isEqualToString:@"ft"]) {
        self.label = [[UILabel alloc] init];
        self.view = [[UIImageView alloc] init];
        [self.contentView addSubview:self.label];
        [self.contentView addSubview:self.view];
    }
    return self;
}

- (void)layoutSubviews {
    self.label.frame = CGRectMake(30, 10, 150, 30);
    self.view.frame = CGRectMake(290, 16, 17, 17);
}

@end
