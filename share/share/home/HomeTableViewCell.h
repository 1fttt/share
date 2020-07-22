//
//  HomeTableViewCell.h
//  share
//
//  Created by 房彤 on 2020/7/21.
//  Copyright © 2020 房彤. All rights reserved.
//

#import <UIKit/UIKit.h>

NS_ASSUME_NONNULL_BEGIN

@interface HomeTableViewCell : UITableViewCell

//图片
@property UIImageView *photoView;
@property UIImageView *zanView;
@property UIImageView *eyeView;
@property UIImageView *shareView;

//文字
@property UILabel *titleLabel;
@property UILabel *nameLabel;
@property UILabel *contentLabel;
@property UILabel *timeLabel;

@property UILabel *zanLabel;
@property UILabel *eyeLabel;
@property UILabel *shareLabel;

@end

NS_ASSUME_NONNULL_END
